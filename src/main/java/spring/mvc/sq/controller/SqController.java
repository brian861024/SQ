package spring.mvc.sq.controller;

import java.text.Collator;
import java.util.Collections;
import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import spring.mvc.sq.model.dao.SqCartDao;
import spring.mvc.sq.model.dao.SqCartItemDao;
import spring.mvc.sq.model.dao.SqContactDao;
import spring.mvc.sq.model.dao.SqNoticeDao;
import spring.mvc.sq.model.dao.SqProductDao;
import spring.mvc.sq.model.dao.SqUserDao;
import spring.mvc.sq.model.entity.Cart;
import spring.mvc.sq.model.entity.CartItem;
import spring.mvc.sq.model.entity.Product;
import spring.mvc.sq.model.entity.User;
import spring.mvc.sq.model.entity.Contact;
import spring.mvc.sq.model.entity.Notice;

@Controller
@RequestMapping("/sq")
public class SqController {

	@Autowired
	private SqUserDao sqUserDao;

	@Autowired
	private SqProductDao sqProductDao;

	@Autowired
	private SqContactDao sqContactDao;

	@Autowired
	private SqCartDao sqCartDao;

	@Autowired
	private SqCartItemDao sqCartItemDao;

	@Autowired
	private SqNoticeDao sqNoticeDao;
	
// ================== 進入各種前台頁面 ==================

	/**
	 * http://localhost:8080/SpiritQuest/mvc/sq/index
	 * http://localhost:8080/SpiritQuest/mvc/sq/index?currentPage=1
	 * http://localhost:8080/SpiritQuest/mvc/sq/index?currentPage=2
	 * @param session
	 * @param model
	 * @param currentPage
	 * @return
	 */
	//-----進入首頁(前台商品列表)-----
	@RequestMapping("/index")
	public String goToIndex(HttpSession session, Model model,
			
			@RequestParam(value = "currentPage", required = false, defaultValue = "1") Integer currentPage) {

		// 過濾出只有上架的商品

		// List<Product> products = sqProductDao.findAllProducts(true);

		int pageSize = 9;
		int totalPage = sqProductDao.totalPage(true, pageSize); // 算出總頁數
		Pageable page = new PageRequest((currentPage - 1), pageSize); // 0:第一頁(1-1=0) 10:每頁幾筆
		
		List<Product> products = sqProductDao.findProductsByPage(true, page);
		List<Notice> notices = sqNoticeDao.findAllNotice();
		
		model.addAttribute("products", products);
		model.addAttribute("notices", notices);
		model.addAttribute("pageSize", pageSize);
		model.addAttribute("totalPage", totalPage);
		model.addAttribute("currentPage", currentPage);
		
		return "sq/frontend/frontend_index";
	}

//======================================================	
	// 進入商品頁面(前台商品頁面)
	@RequestMapping("/frontend_prod")
	public String goToprod(HttpSession session, Model model,
					@RequestParam("productId") Integer productId
							) {
		User user1 = (User) session.getAttribute("user");

		// 透過名字找出商品
		Optional<Product> prodOpt = sqProductDao.findProductbyId(productId);
		model.addAttribute("products", prodOpt);

		return "sq/frontend/frontend_prod";
	}

//======================================================
	// 進入登入頁面
	@RequestMapping("/login")
	public String goToLogin(
			@RequestParam(name = "loginMessage", required = false, defaultValue = "") String loginMessage,
			Model model) {
		model.addAttribute("loginMessage", loginMessage);
		return "sq/frontend/frontend_login";
	}

//======================================================
	// 進入註冊頁面
	@RequestMapping("/register")
	public String goToRegister(HttpSession session) {
		
		return "sq/frontend/frontend_register";
	}

//======================================================
	// 進入商品頁面
	@RequestMapping("/prodInfo")
	public String goToProdInfo(@RequestParam("productId") Integer productId,
	        HttpSession session, Model model) {

	    Product product = sqProductDao.findProductbyId(productId).orElse(null);
	    List<Notice> notices = sqNoticeDao.findAllNotice();

	    model.addAttribute("notices", notices);
	    if (product != null) {
	        model.addAttribute("product", product);
	        return "sq/frontend/frontend_prod";
	    } else {
	        // 处理找不到产品的情况，可以重定向到错误页面或提供默认产品
	        // 以下是一个重定向到错误页面的示例
	        return "redirect:/error";
	    }
	}
	
//======================================================
	// 進入購物車頁面
	//
	@RequestMapping("/cart")
	public String cartPage(HttpSession session, Model model) {

		User user = (User) session.getAttribute("user");

		// 找到 user 的尚未結帳的購物車
		Cart cart = sqUserDao.findNoneCheckoutCartByUserId(user.getUserId()).orElseGet(() -> {
			// 如果沒有購物車，新增一個
			Cart newCart = new Cart();
			newCart.setUserId(user.getUserId());
			newCart.setIsCheckout(false);
			sqCartDao.addCart(newCart);
			return newCart;
		});
		
		List<Cart> carts = sqCartDao.findCartsByUserId(user.getUserId());
		List<Integer> cartIds = carts.stream().map(cart2->cart.getCartId()).collect(Collectors.toList());
		List<List<CartItem>> cartItems = cartIds.stream().map(cartId->sqCartItemDao.findCartItemsById(cartId)).collect(Collectors.toList());
		List<CartItem> CartItemflattenedList =  cartItems.stream()
                .flatMap(List::stream)
                .collect(Collectors.toList());
		
		List<Integer> productIds = CartItemflattenedList.stream().map(cartItem->cartItem.getProductId()).collect(Collectors.toList());
		List<Product> products = productIds.stream().map(productId->sqProductDao.findProductbyId(productId).get()).collect(Collectors.toList());
		
		model.addAttribute("products", products);
		model.addAttribute("cartItems", cartItems);
		
//		for (Cart cart2 : carts) {
//			cartIds.add(cart2.getCartId());
//			
//		}
		//List<CartItem> cartItems= carts.stream().collect(cart -> cart.getCartId());
		
		// 計算購物車總金額
		int total = cart.getCartItems().stream().mapToInt(item -> item.getQty()*item.getPrice()).sum();

		model.addAttribute("cart", cart);
		model.addAttribute("total", total);

		return "sq/frontend/frontend_cart";
	}

	private Cart getCartId() {
		// TODO Auto-generated method stub
		return null;
	}

//======================================================
	// 進入訂單頁面
	@RequestMapping("/order")
	public String goToOrder(HttpSession session, Model model) {
	    User user = (User) session.getAttribute("user");

	    // 找到 user 的已經結帳的購物車
	    List<Cart> carts = sqUserDao.findCheckoutCartByUserId(user.getUserId());
	    
	    if(carts == null) {
	    	model.addAttribute("successMessage", "尚未有訂單");		
			
	    	return "sq/frontend/frontend_checkPage";
			
	    } else {
	    // 其他相關修改
	    List<Integer> cartIds = sqCartDao.findCartsByUserId(user.getUserId())
	            .stream()
	            .map(cart2 -> cart2.getCartId())
	            .collect(Collectors.toList());

	    List<List<CartItem>> cartItemsList = cartIds.stream()
	            .map(cartId -> sqCartItemDao.findCartItemsById(cartId))
	            .collect(Collectors.toList());

	    List<CartItem> flattenedList = cartItemsList.stream()
	            .flatMap(List::stream)
	            .collect(Collectors.toList());

	    List<Integer> productIds = flattenedList.stream()
	            .map(cartItem -> cartItem.getProductId())
	            .collect(Collectors.toList());

	    List<Product> products = productIds.stream()
	            .map(productId -> sqProductDao.findProductbyId(productId).orElse(null))
	            .collect(Collectors.toList());

	    model.addAttribute("products", products);
	    model.addAttribute("cartItems", flattenedList);
	    model.addAttribute("carts", carts);
	    }	    
	    return "sq/frontend/frontend_order";
	}

//======================================================
	// 進入最愛商品頁面
	@RequestMapping("/favoriteProd")
	public String goToFavoriteProd(HttpSession session, Model model) {
		return "sq/frontend/frontend_favoriteProd";
	}

//======================================================
	// 進入修改會員姓名頁面
	@RequestMapping("/editUserName")
	public String goToEditUserName(HttpSession session, Model model) {
		return "sq/frontend/frontend_editUserName";
	}

//======================================================
	// 進入修改會員電話頁面
	@RequestMapping("/editUserTel")
	public String goToEditUserTel(HttpSession session, Model model) {
		return "sq/frontend/frontend_editUserTel";
	}

//======================================================
	// 進入查找密碼頁面
	@RequestMapping("/findpassword")
	public String goToFindpassword(HttpSession session) {
		return "sq/frontend/frontend_findpassword";
	}

//======================================================
	// 進入聯絡我們頁面
	@RequestMapping("/contact")
	public String goToContact(HttpSession session) {
		return "sq/frontend/frontend_contact";
	}

//======================================================
	// 進入公告欄頁面
	@RequestMapping("/notice/{noticeId}")
    public String showNotice(@PathVariable Integer noticeId, Model model) {
        // 根据 noticeId 查询公告信息，将公告信息传递给前端
        Notice notice = sqNoticeDao.findNoticeById(noticeId); // 请替换成实际的方法
        model.addAttribute("notice", notice);
        return "sq/frontend/frontend_notice"; // 显示公告的页面，路径根据实际情况调整
    }
//======================================================
//======================================================
	// 進入威士忌介紹頁面
	@RequestMapping("/whiskey")
	public String goToWhiskey(HttpSession session) {
		return "sq/frontend/LiquorLibrary/whiskey";
	}

	// 進入琴酒介紹頁面
	@RequestMapping("/gin")
	public String goToGin(HttpSession session) {
		return "sq/frontend/LiquorLibrary/gin";
	}

	// 進入朗姆酒介紹頁面
	@RequestMapping("/rum")
	public String goToRum(HttpSession session) {
		return "sq/frontend/LiquorLibrary/rum";
	}

	// 進入龍舌蘭酒頁面
	@RequestMapping("/tequila")
	public String goToTequila(HttpSession session) {
		return "sq/frontend/LiquorLibrary/tequila";
	}

	// 進入伏特加介紹頁面
	@RequestMapping("/vodka")
	public String goToVodka(HttpSession session) {
		return "sq/frontend/LiquorLibrary/vodka";
	}

	// 進入利口酒介紹頁面
	@RequestMapping("/liqueur")
	public String goToLiqueur(HttpSession session) {
		return "sq/frontend/LiquorLibrary/liqueur";
	}

	// 進入基酒介紹頁面
	@RequestMapping("/liquor")
	public String goToLiquor(HttpSession session) {
		return "sq/frontend/LiquorLibrary/liquor";
	}

	// ================== 進入後台各種頁面 ==================

	// 進入後台首頁
	@GetMapping("/backend/index")
	public String backendMain(HttpSession session, @ModelAttribute Product product, Model model) {
		return "/sq/backend/backend_index";
	}

//======================================================
	// 進入後台新增商品頁面
	@GetMapping("/backend/plusProd")
	public String plusProd() {
		return "/sq/backend/backend_plusProd";
	}
	
	// 進入後台新增管理員頁面
	@GetMapping("/backend/addEmp")
	public String plusaddEmp() {
		return "/sq/backend/backend_addEmp";
	}
	
	// 進入後台登入頁面
	@GetMapping("/backend/login")
	public String login(HttpSession session) {
		return "/sq/backend/backend_login";
	}
	
	// 進入後台管理訂單頁面
	@GetMapping("/backend/order")
	public String plusorder(HttpSession session) {
		return "/sq/backend/backend_order";
	}
	
	// 進入後台查看報表頁面
//	@GetMapping("/backend/plusProd")
//	public String plusProd(HttpSession session) {
//		return "/sq/backend/backend_plusProd";
//	}
	
	// 進入後台公告欄頁面
	@GetMapping("/backend/notice")
	public String plusNotice(HttpSession session) {
		return "/sq/backend/backend_notice";
	}
	
	// 進入後台查看留言板頁面
	@GetMapping("/backend/contact")
	public String contact(Model model) {
	    List<Contact> contacts = sqContactDao.findAllContact();
	    model.addAttribute("contacts", contacts);
	    return "/sq/backend/backend_contact";
	}
	
	// 進入後台商品列表頁面
	@GetMapping("/backend/prodList")
	public String showProdList(Model model) {
		List<Product> products = sqProductDao.findAllProducts();
		model.addAttribute("products",products);
		return "/sq/backend/backend_prodList";
	}	

}
