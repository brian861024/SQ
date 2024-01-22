package spring.mvc.sq.model.dao;

import java.util.List;
import java.util.Map;
import java.util.Optional;

import spring.mvc.sq.model.entity.*;

public interface SqCartDao {
//	購物車(Cart)
//	1. 新增購物車
	void addCart(Cart cart);
//	2. 查詢所有購物車資料(多筆)
	List<Cart> findAllCart();
//  3. 根據使用者ID查詢last5chars
	Optional<Cart> findlast5charsByUserId(Integer userId);
//	4. 根據使用者ID來查找其所有購物車資料(多筆)
	List<Cart> findCartsByUserId(Integer userId);
//	5. 根據is_Checkout狀態列出訂單(多筆)
	List<Cart> findCartIdbyisCheckout(Boolean isCheckout);
//	6. 根據is_Checkout狀態及UserId列出訂單(多筆)
	List<Cart> findCartIdbyisCheckoutAndUserId(Boolean isCheckout,Integer userId);
//	7. 刪除購物車
	Boolean removeCartById(Integer cartId);
//  8. 修改訂單運送地址
	Boolean updateDeliveryAddress(Integer cartId, String deliveryAddress);
//  9. 根據使用者ID來查找其未結帳的購物車資料(單筆)
	Optional<Cart> findNoneCheckoutCartByUserId(Integer userId);
//  10.根據使用者ID及結帳狀態來查找其所有購物車資料(多筆)
	List<Cart> findCartsbyUserIdAndCheckoutStatus(Integer userId, Boolean isCheckout);
//  11.計算每個使用者所購買的總金額
	List<Map<String, Object>> calculateTotalAmountPerUser();
//  12.根據使用者ID將該使用者的購物車設置為已結帳狀態(前台的事件)
	Boolean checkoutCartByUserId(Integer userId);
//  13.根據購物車ID將購物車設置為處理中狀態(後台的事件)
	Boolean setProcessingCartById(Integer cartId);
//  14.根據購物車ID將購物車設置為已結帳狀態(後台的事件)
	Boolean checkoutCartById(Integer cartId);
//  15.根據購物車ID將購物車設置為取消訂單狀態
	Boolean cancleOrderById(Integer cartId);
//  16.根據使用者名稱查找使用者
	Optional<User> findUserById(Integer userId);
//  17.根據產品ID來查找商品(單筆)
	Optional<Product> findProductbyId(Integer productId);
	
}
