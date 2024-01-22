package spring.mvc.sq.model.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Product {

	private Integer productId; // 商品代號
	private String productName; // 商品名稱
	private Integer price; // 商品價格
	private Integer stockQty; //商品庫存
	private String describe; //商品描述
	private Boolean isLaunch; // 是否上架
	private Integer categoryId; //商品分類
	
}
