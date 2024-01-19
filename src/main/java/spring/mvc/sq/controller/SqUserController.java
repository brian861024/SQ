package spring.mvc.sq.controller;

import java.util.Enumeration;

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

import spring.mvc.sq.model.dao.SqCartDao;
import spring.mvc.sq.model.dao.SqCartItemDao;
import spring.mvc.sq.model.dao.SqContactDao;
import spring.mvc.sq.model.dao.SqProductDao;
import spring.mvc.sq.model.dao.SqUserDao;
import spring.mvc.sq.model.dao.SqUserDaoMySQL;
import spring.mvc.sq.model.entity.Product;

@Controller
@RequestMapping("/user")
public class SqUserController {
	
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
	
	//進入前台首頁
	@GetMapping("/frontend/main")
	public String frontendMain() {
		//model.addAttribute("products", Productdao.findAllProducts());@ModelAttribute Product product, Model model
		return "sq/frontend/frontend_index";
	}
	
//	//會員註冊
//	@GetMapping("/Register")
//	public String UserRegister() {
//		
//	}
//	
//	//會員登入
//	@PostMapping("/login")
//	public String login(@RequestParam("username") String username, 
//			 @RequestParam("password") String password,
//			 @RequestParam("code") String code,
//			HttpSession session, Model model) throws Exception {
//		
//	}
	
	//購物完成頁
	
	//購物車頁面
	
//	//購物車結帳
//	@GetMapping("/frontend/checkout")
//	public String checkout(HttpSession session, Model model) {
//		
//	}
//	//
	
}
