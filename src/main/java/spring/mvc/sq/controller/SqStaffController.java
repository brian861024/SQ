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
import spring.mvc.sq.model.entity.Product;

//@Controller
//@RequestMapping("/sq/staff")
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
		
	//-----刪除上架商品-----
			
//======================= 會員管理後台 =======================
//========================================================
			
	
	
	
	
}
