package spring.mvc.sq.model.entity;

import java.util.Date;
import java.util.List;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class CartItem {
	
	private Integer itemId; // 購物車明細 Id
	private Integer cartId; // 購物車 Id
	private Integer productId; // 商品 Id
	private Integer price; // 商品價格
	private Integer qty; // 數量

	private Cart cart; // 購物車物件(關聯欄位)
	private Product product; // 商品物件(關聯欄位)
		
}
