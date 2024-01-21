package spring.mvc.sq.controller;

import java.util.Optional;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;


import spring.mvc.sq.model.entity.*;
import spring.mvc.sq.model.dao.SqCartDao;
import spring.mvc.sq.model.dao.SqCartItemDao;
import spring.mvc.sq.model.dao.SqContactDao;
import spring.mvc.sq.model.dao.SqProductDao;
import spring.mvc.sq.model.dao.SqUserDao;

//OrderController處理以下之功能：
//購物車前台：購物車頁面、增加購物車商品、購物車結帳、訂單確認+完成、查詢訂單
//購物車後台：

@Controller
@RequestMapping("/order")
public class SqOrderController {
	
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
	
//======================= 購物車前台 =======================
//=======================================================	
	//-----購物車頁面-----
	//邏輯：
	//。透過 userId 查找 cart 物件
	@RequestMapping("/cart")
	public String cartPage(HttpSession session, Model model) {
		// 1. 先找到 user 登入者
		User user = (User)session.getAttribute("user");
		// 2. 找到 user 的尚未結帳的購物車
		Optional<Cart> cartOpt = sqUserDao.findNoneCheckoutCartByUserId(user.getUserId());
		cartOpt.ifPresent(cart -> {
			// 3. 計算購物車總金額
			int total = cart.getCartItems().stream()
							.mapToInt(item -> item.getqty() * item.getProduct().getPrice())
							.sum();
			model.addAttribute("cart", cart);
			model.addAttribute("total", total);
		});
		return "sq/frontend/frontend_cart";
	}
	
//======================================================
//======================================================	
	//-----增加購物車商品-----
	
//======================================================
//======================================================	
	//-----購物車結帳-----
	
//======================================================
//======================================================	
	//-----訂單確認+完成帳-----
	
//======================================================
//======================================================
	//-----查詢訂單-----
	
//======================= 購物車後台 =======================
//=======================================================	
	//-----增加商品-----
	
//======================================================	
}
