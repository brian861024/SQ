package spring.mvc.sq.controller;

import java.io.File;
import java.io.IOException;
import java.util.Enumeration;
import java.util.List;
import java.util.Optional;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import spring.mvc.sq.model.dao.SqCartDao;
import spring.mvc.sq.model.dao.SqCartItemDao;
import spring.mvc.sq.model.dao.SqContactDao;
import spring.mvc.sq.model.dao.SqNoticeDao;
import spring.mvc.sq.model.dao.SqProductDao;
import spring.mvc.sq.model.dao.SqUserDao;
import spring.mvc.sq.model.entity.Contact;
import spring.mvc.sq.model.entity.Product;
import spring.mvc.sq.model.entity.User;
import spring.mvc.sq.model.entity.Notice;


@Controller
@RequestMapping("/sq/staff")
public class SqStaffController {
	
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
	
//======================= 進入各種頁面 =======================
	
	//進入後台首頁
	@GetMapping("/backend/main")
	public String backendMain(@ModelAttribute Product product, Model model) {
		model.addAttribute("products", sqProductDao.findAllProducts());
		return "/sq/staff/backend/main";
	}
	
	//後臺員工登入
	
//======================= 商品列表後台 =======================
//========================================================
	//-----新增上架商品-----
	@RequestMapping("/backend/addProd")
	public String addProd(@RequestParam("productName") String productName,
			  			  @RequestParam("price") Integer price,
			  			  @RequestParam("stockQty") Integer stockQty,
			  			  @RequestParam("description") String description,
			  			  @RequestParam("isLaunch") Boolean isLaunch,
			  			  @RequestParam("categoryId") Integer categoryId,
			  			  @RequestParam("file") MultipartFile file,
			  			  HttpSession session, Model model) throws IllegalStateException, IOException  {
	
	file.transferTo(new File("C:/uploads/"+file.getOriginalFilename()));
		
	Product product = new Product();
	
	product.setProductName(productName);
	product.setPrice(price);
	product.setStockQty(stockQty);
	product.setDescription(description);
	if (isLaunch) {
        // 商品上架逻辑
		product.setIsLaunch(true);
    } else {
        // 商品下架逻辑
    	product.setIsLaunch(false);
    }
	product.setCategoryId(categoryId);
	product.setImage(file.getOriginalFilename());
	
	sqProductDao.addProduct(product);
		
	model.addAttribute("successMessage", "商品新增成功");
	
		return "sq/backend/backend_checkPage";
	}
	
//======================================================
	//-----刪除上架商品-----
	@PostMapping("/backend/deletProd")
	public String deleteProduct(@RequestParam("productId") Integer productId) {
	    // 在這裡執行刪除數據庫中相應產品的操作
	    sqProductDao.removeProductById(productId);
	    // 重定向到商品列表頁面或其他頁面
	    return "redirect:/mvc/sq/backend/prodList";
	}
	
//======================================================
	//-----更改商品庫存數量-----
	@PostMapping("/backend/changeProdQty")
	public String changeProdQty(@RequestParam("productId") Integer productId,
								@RequestParam("productQty") Integer productQty,
								@RequestParam("newStockQty") Integer newStockQty,
								HttpSession session, Model model) {	

		int updatedStockQty = productQty + newStockQty;
	    sqProductDao.updateProductQty(productId, updatedStockQty);
	    
		return "/sq/backend/backend_prodList";
	}

//======================================================
	//-----顯示商品列表-----
	@RequestMapping("/backend/showProdList")
	public String showProdList(Model model) {
		List<Product> products = sqProductDao.findAllProducts();
		model.addAttribute("products",products);
		return "/sq/backend/backend_prodList";
	}	
	
//======================= 會員管理後台 =======================
//========================================================	
		//-----管理員員註冊功能-----
		//。信箱不可重複
		//。兩次的註冊密碼要相同
		@RequestMapping("/register")
		public String register(@RequestParam("username") String username,
							   @RequestParam("userpassword") String password,
							   @RequestParam("userpassword2") String password2,
							   @RequestParam("useremail") String email,
							   @RequestParam("usertel") String phoneNumber,
							   HttpSession session, Model model) throws Exception  {
			
			Optional<User> userOpt = sqUserDao.findUserByEmail(email);
			
					if(userOpt.isPresent()){
				// 如果 使用該姓名或信箱的user有存在 則 執行此處
				session.invalidate(); // session 過期失效
				model.addAttribute("loginMessage", "使用者信箱重複");
				return "sq/frontend/backend_addEmp";
			}
			// 如果 用戶名和信箱均不重複 則 檢查兩次密碼是否相同
			else if (!password.equals(password2)){
				 session.invalidate(); // session 過期失效
		         model.addAttribute("loginMessage", "兩次輸入的密碼不相同");
		         return "sq/frontend/backend_addEmp";
		      }
				 // 如果 兩次密碼輸入相同 則 進行註冊
				 else {
					User user = new User();
					user.setUsername(username);
//					// 將 password 進行 AES 加密 -------------------------------------------------------------------
//					final String KEY = KeyUtil.getSecretKey();
//					SecretKeySpec aesKeySpec = new SecretKeySpec(KEY.getBytes(), "AES");
//					byte[] encryptedPasswordECB = KeyUtil.encryptWithAESKey(aesKeySpec, password);
//					String encryptedPasswordECBBase64 = Base64.getEncoder().encodeToString(encryptedPasswordECB);
//					//-------------------------------------------------------------------------------------------
					user.setPassword(password);
					user.setEmail(email);
					user.setPhoneNumber(phoneNumber);
					sqUserDao.addEmp(user);
					model.addAttribute("successMessage", "註冊成功");
					return "sq/frontend/backend_addEmp";
				 }
				}
		
//========================================================	
		//-----管理員登入-----
		// 邏輯：
		@RequestMapping("/login")
		public String login(@RequestParam("useremail") String useremail,
		                    @RequestParam("password") String password,      
		                    HttpSession session, Model model) throws Exception {
			
		    // 根據 useremail 查找 user 物件
		    Optional<User> userOpt = sqUserDao.findUserByEmail(useremail);

		    if (userOpt.isPresent()) {
		        User user = userOpt.get();
		        // 比對的 password 是否相同
		        if (user.getPassword().equals(password)) {
		            // 將 user 物件放入到 session 變數中
		            session.setAttribute("user", user);
		            // OK, 導向前台首頁
		            return "redirect:/mvc/sq/backend/index";
		        } else {
		            // session 過期失效
		            session.invalidate();
		            // 密碼錯誤
		            model.addAttribute("loginMessage", "密碼錯誤");
		            return "sq/backend/backend_login";
		        }
		    } else {
		        // session 過期失效
		        session.invalidate();
		        // 無此使用者
		        model.addAttribute("loginMessage", "無此使用者");
		        return "sq/backend/backend_login";
		    }
		}
	
	
}
