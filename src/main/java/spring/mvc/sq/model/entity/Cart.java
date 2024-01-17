package spring.mvc.sq.model.entity;

import java.util.Date;
import java.util.List;

public class Cart {

	private Integer cartId; // 購物車 Id
	private Date checkoutTime; // 結帳時間
	private Integer userId; // 使用者 Id
	private String deliveryAddress;
	private Date orderDate;
	private String deliveryStatus;
	private Integer totalAmount;
	private Boolean isCheckout; // 是否結帳
	
	
	private User user; // 使用者物件(關聯欄位)
	private List<CartItem> cartItems; // 購物車明細(關聯欄位)
	
	public Cart() {
		
	}

	public Cart(Integer cartId, Date checkoutTime, Boolean isCheckout, Integer userId, User user,
			List<CartItem> cartItems) {
		super();
		this.cartId = cartId;
		this.checkoutTime = checkoutTime;
		this.userId = userId;
		this.cartItems = cartItems;
		setIsCheckout(isCheckout);
	}

	public Cart(Integer cartId,  Boolean isCheckout, Integer userId, List<CartItem> cartItems) {
		this.cartId = cartId;
		this.userId = userId;
		this.cartItems = cartItems;
		
		setIsCheckout(isCheckout);
	}   // 根據userId找User物件
	
	public Integer getCartId() {
		return cartId;
	}

	public void setCartId(Integer cartId) {
		this.cartId = cartId;
	}

	public Date getCheckoutTime() {
		return checkoutTime;
	}

	public void setCheckoutTime(Date checkoutTime) {
		this.checkoutTime = checkoutTime;
	}

	public Boolean getIsCheckout() {
		return isCheckout;
	}

	public void setIsCheckout(Boolean isCheckout) {
		this.isCheckout = isCheckout;
		if(isCheckout != null && isCheckout) {
			setCheckoutTime(new Date());
		}
	}

	public Integer getUserId() {
		return userId;
	}

	public void setUserId(Integer userId) {
		this.userId = userId;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public List<CartItem> getCartItems() {
		return cartItems;
	}

	public void setCartItems(List<CartItem> cartItems) {
		this.cartItems = cartItems;
	}
	
	
	
}