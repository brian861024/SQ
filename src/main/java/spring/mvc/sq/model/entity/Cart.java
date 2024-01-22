package spring.mvc.sq.model.entity;

import java.util.Date;
import java.util.List;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Cart {
	private Integer cartId; // 購物車 Id
	private Date checkoutTime; // 結帳時間
	private Boolean isCheckout; // 是否結帳
	private String deliveryStatus; // 運送狀態
	private String deliveryAddress; // 運送地址
	private Integer last5chars; // 帳號後五碼
	private Integer userId; // 使用者 Id
	private Integer amount; // 金額加總
	private User user;
	private List<CartItem> cartItems;
}