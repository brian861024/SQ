package spring.mvc.sq.controller;

import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.model;

import java.util.Optional;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.mysql.cj.Session;

import spring.mvc.sq.model.entity.*;
import spring.mvc.sq.model.entity.Cart;
import spring.mvc.sq.model.entity.User;
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
	//。比對注入 CartItem qty 比 Product qty 數量少
	@RequestMapping("/cart/update")
	public String updateCartItem(@RequestParam("itemId") Integer itemId,
								 @RequestParam("qty") Integer qty,
								 @ModelAttribute Product product,
								 HttpSession session, Model model) {
		
		User user = (User)session.getAttribute("user");
		Optional<CartItem> cartItemOpt = sqCartItemDao.findCartItemById(itemId);
		CartItem cartItem1 = cartItemOpt.get();
		Optional<Product> productOpt = sqProductDao.findProductbyId(cartItem1.getProductId());
		Product product1 = productOpt.get(); 
		
		// 如何得知 itemId 是屬於該使用者的 ?
		sqCartItemDao.findCartItemById(itemId).ifPresent(cartItem -> {
			if(cartItem.getCart().getUserId().equals(user.getUserId())) {
				if(qty > 0) {
					if(qty>product1.getStockQty()) {
						model.addAttribute("StockMessage", "庫存不足");
					} else {
						sqCartItemDao.updateCartItemQuantity(itemId, qty);
					}
				} else {
					sqCartItemDao.removeCartItemById(itemId);
				}
			}
		});
		return "sq/frontend/frontend_cart";
	 }
//======================================================
//======================================================	
	//-----訂單確認以及填寫資訊-----
	
//======================================================
//======================================================	
	//-----訂單完成-----
	//。先找到 user 登入者
	//。找到 user 的尚未結帳的購物車
	//。計算購物車總金額
	@RequestMapping("/check")
	public String checkOrder(HttpSession session, Model model) {
			
			// 先找到 user 登入者
			User user = (User)session.getAttribute("user");
			// 找到 user 的尚未結帳的購物車
			Optional<Cart> cartOpt = sqCartDao.findNoneCheckoutCartByUserId(user.getUserId());
			cartOpt.ifPresent(cart -> {
				// 計算購物車總金額
				int total = cart.getCartItems().stream()
								.mapToInt(item -> item.getQty() * item.getProduct().getPrice())
								.sum();
				sqCartDao.checkoutCartByUserId(cart.getUserId()); // 結帳
				model.addAttribute("cart", cart);
				model.addAttribute("total", total);
			});
			
			model.addAttribute("successMessage", "訂單成功送出");
			return "";
	}
	
//======================================================
//======================================================
	//-----查詢訂單-----
	//。先找到 session 裡的 user 如果沒有 則 回傳 "請先登入"
	//。有 user 則透過 userid 去找到 屬於他的購物車並傳至 jsp
	@RequestMapping("/cart/query")
	public void queryOrder(@ModelAttribute Cart cart,
						   HttpSession session, Model model) {
		
		
	}
	
//======================= 購物車後台 =======================
//=======================================================	
	//-----增加商品-----
	//。
	
//======================================================	
}
