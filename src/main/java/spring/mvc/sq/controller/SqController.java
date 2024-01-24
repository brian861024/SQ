package spring.mvc.sq.controller;

import java.util.List;
import java.util.Optional;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestParam;

import spring.mvc.sq.model.dao.SqCartDao;
import spring.mvc.sq.model.dao.SqCartItemDao;
import spring.mvc.sq.model.dao.SqContactDao;
import spring.mvc.sq.model.dao.SqProductDao;
import spring.mvc.sq.model.dao.SqUserDao;
import spring.mvc.sq.model.entity.Cart;
import spring.mvc.sq.model.entity.Product;
import spring.mvc.sq.model.entity.User;


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
	
//================== 進入各種前台頁面 ==================
	
	//進入首頁(前台商品列表)
	@RequestMapping("/index")
	public String goToIndex(HttpSession session,Model model) {
		User user1 = (User) session.getAttribute("user");
		
		// 過濾出只有上架的商品
		List<Product> products = sqProductDao.findAllProducts(true);			
		model.addAttribute("products", products);
		
		return "sq/frontend/frontend_index";
	}
	
	//進入商品頁面(前台商品頁面)
	@RequestMapping("/prod")
	public String goToprod(HttpSession session,Model model) {
		User user1 = (User) session.getAttribute("user");

		// 透過名字找出商品
		Optional<Product> prodOpt = sqProductDao.findProductbyId(1);
		 
		return "sq/frontend/frontend_index";
	}
		
	//進入登入頁面
		@RequestMapping("/login")
		public String goToLogin(HttpSession session) {
			User user1 = (User) session.getAttribute("user");
			
			return "sq/frontend/frontend_login";	
	}
		
	//進入註冊頁面
		@RequestMapping("/register")
		public String goToRegister(HttpSession session) {
			User user1 = (User) session.getAttribute("user");
			
			return "sq/frontend/frontend_register";	
	}
	
	//進入購物車頁面
		@RequestMapping("/cart")
		public String cartPage(HttpSession session, Model model) {
			User user1 = (User) session.getAttribute("user");
			
		    // 檢查有無登入
		    User user = (User) session.getAttribute("user");
		    if (user == null) {
		        // 重新導向到登入頁面或其他處理方式
		    	model.addAttribute("loginMessage", "欲使用購物車請先登入");
		        return "sq/frontend/frontend_login";
		    }
		    // 找到 user 的尚未結帳的購物車
		    Cart cart = sqUserDao.findNoneCheckoutCartByUserId(user.getUserId())
		            .orElseGet(() -> {
		                // 如果沒有購物車，新增一個
		                Cart newCart = new Cart();
		                newCart.setUserId(user.getUserId());
		                newCart.setIsCheckout(false);
		                sqCartDao.addCart(newCart);
		                return newCart;
		            });

		    // 計算購物車總金額
		    int total = cart.getCartItems().stream()
		            .mapToInt(item -> item.getQty() * item.getProduct().getPrice())
		            .sum();

		    model.addAttribute("cart", cart);
		    model.addAttribute("total", total);

		    return "sq/frontend/frontend_cart";
		}

	//進入訂單頁面
		@RequestMapping("/order")
		public String goToOrder(HttpSession session, Model model) {
			User user1 = (User) session.getAttribute("user");
			
		    // 檢查有無登入
		    User user = (User) session.getAttribute("user");
		    if (user == null) {
		        // 重新導向到登入頁面或其他處理方式
		    	model.addAttribute("loginMessage", "欲查看訂單請先登入");
		        return "sq/frontend/frontend_login";
		    }
			return "sq/frontend/frontend_order";	
		}
		
	//進入最愛商品頁面
		@RequestMapping("/favoriteProd")
		public String goToFavoriteProd(HttpSession session, Model model) {
			User user1 = (User) session.getAttribute("user");
			
		    // 檢查有無登入
		    User user = (User) session.getAttribute("user");
		    if (user == null) {
		        // 重新導向到登入頁面或其他處理方式
		    	model.addAttribute("loginMessage", "欲查看最愛商品請先登入");
		        return "sq/frontend/frontend_login";
		    }
			
			return "sq/frontend/frontend_favoriteProd";	
		}

	//進入修改會員姓名頁面
		@RequestMapping("/editUserName")
		public String goToEditUserName(HttpSession session, Model model) {
			User user1 = (User) session.getAttribute("user");
			
		    // 檢查有無登入
		    User user = (User) session.getAttribute("user");
		    if (user == null) {
		        // 重新導向到登入頁面或其他處理方式
		    	model.addAttribute("loginMessage", "欲修改姓名請先登入");
		        return "sq/frontend/frontend_login";
		    }
			
			return "sq/frontend/frontend_editUserName";	
		}
		
	//進入修改會員電話頁面
		@RequestMapping("/editUserTel")
		public String goToEditUserTel(HttpSession session, Model model) {
			User user1 = (User) session.getAttribute("user");
			
		    // 檢查有無登入
		    User user = (User) session.getAttribute("user");
		    if (user == null) {
		        // 重新導向到登入頁面或其他處理方式
		    	model.addAttribute("loginMessage", "欲修改電話請先登入");
		        return "sq/frontend/frontend_login";
		    }
			
			return "sq/frontend/frontend_editUserTel";	
		}
		
	//進入查找密碼頁面
		@RequestMapping("/findpassword")
		public String goToFindpassword(HttpSession session) {
			User user1 = (User) session.getAttribute("user");
			
			return "sq/frontend/frontend_findpassword";	
		}

	//進入聯絡我們頁面
		@RequestMapping("/contact")
		public String goToContact(HttpSession session) {
			User user1 = (User) session.getAttribute("user");
			
			return "sq/frontend/frontend_contact";	
		}
		
	//進入威士忌介紹頁面
		@RequestMapping("/whiskey")
		public String goToWhiskey(HttpSession session) {
			User user1 = (User) session.getAttribute("user");
			
			return "sq/frontend/LiquorLibrary/whiskey";	
		}
		
	//進入琴酒介紹頁面
		@RequestMapping("/gin")
		public String goToGin(HttpSession session) {
			User user1 = (User) session.getAttribute("user");
			
			return "sq/frontend/LiquorLibrary/gin";	
		}

	//進入朗姆酒介紹頁面
		@RequestMapping("/rum")
		public String goToRum(HttpSession session) {
			User user1 = (User) session.getAttribute("user");
			
			return "sq/frontend/LiquorLibrary/rum";	
		}
		
	//進入龍舌蘭酒頁面
		@RequestMapping("/tequila")
		public String goToTequila(HttpSession session) {
			User user1 = (User) session.getAttribute("user");
			
			return "sq/frontend/LiquorLibrary/tequila";	
		}
		
	//進入伏特加介紹頁面
		@RequestMapping("/vodka")
		public String goToVodka(HttpSession session) {
			User user1 = (User) session.getAttribute("user");
			
			return "sq/frontend/LiquorLibrary/vodka";	
		}

	//進入利口酒介紹頁面
		@RequestMapping("/liqueur")
		public String goToLiqueur(HttpSession session) {
			User user1 = (User) session.getAttribute("user");
			
			return "sq/frontend/LiquorLibrary/liqueur";	
		}
		
	//進入基酒介紹頁面
		@RequestMapping("/liquor")
		public String goToLiquor(HttpSession session) {
			User user1 = (User) session.getAttribute("user");
			
			return "sq/frontend/LiquorLibrary/liquor";	
		}

//================== 進入後台各種頁面 ==================
		
	//進入後台首頁
		@GetMapping("/backend/main")
		public String backendMain(HttpSession session,@ModelAttribute Product product, Model model) {
			User user1 = (User) session.getAttribute("user");
			
			return "/sq/backend/backend_index";
		}
		
	//進入後台新增商品頁面
		@GetMapping("/backend/plusProd")
		public String plusProd(HttpSession session) {
			User user1 = (User) session.getAttribute("user");
			
			return "/sq/backend/backend_plusProd";
		}
		
		
}
