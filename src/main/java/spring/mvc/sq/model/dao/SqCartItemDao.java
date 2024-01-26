package spring.mvc.sq.model.dao;

import java.util.List;
import java.util.Map;
import java.util.Optional;

import spring.mvc.sq.model.entity.*;

public interface SqCartItemDao {
//	購物車商品(CartItem)
//-----新增購物車商品-----
	void addCartItem(CartItem cartItem);
//-----根據購物車項目ID刪除指定的購物車項目-----
	Boolean removeCartItemById(Integer ItemId);
//-----根據購物車項目ID查找購物車項目資料(單筆)-----
	Optional<CartItem> findCartItemById(Integer itemId);
//-----根據商品ID查詢商品(多筆)-----
	List<CartItem> findCartItemsById(Integer ItemId);
//-----修改商品數量-----
	Boolean updateCartItemQuantityById(Integer ItemId,Integer quantity);
//-----更新購物車項目的數量-----
	Boolean updateCartItemQuantity(Integer ItemId, Integer quantity);
//-----計算每個使用者所購買的總金額-----
	List<Map<String, Object>> calculateTotalAmountPerUser();
//-----透過CartItemId來找ProductId-----

}
