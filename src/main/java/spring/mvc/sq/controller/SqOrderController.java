package spring.mvc.sq.controller;

import java.util.Optional;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

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
	//-----增加購物車商品-----
	//。CartItem 注入 Cart
	// 修改購物車商品項目數量
	@GetMapping("/cart/update")
	public String updateCartItem(@RequestParam("itemId") Integer itemId,
								 @RequestParam("qty") Integer qty,
								 HttpSession session) {
		User user = (User)session.getAttribute("user");
		// 如何得知 itemId 是屬於該使用者的 ?
		sqCartItemDao.findCartItemById(itemId).ifPresent(cartItem -> {
			if(cartItem.getCart().getUserId().equals(user.getUserId())) {
				if(qty > 0) {
					sqCartItemDao.updateCartItemQuantity(itemId, qty);
				} else {
					sqCartItemDao.removeCartItemById(itemId);
				}
			}
		});
		return "sq/frontend/frontend_cart";
	}
//======================================================
//======================================================	
	//-----訂單確認+完成-----
	
//======================================================
//======================================================
	//-----查詢訂單-----
	
//======================= 購物車後台 =======================
//=======================================================	
	//-----增加商品-----
	
//======================================================	
}
