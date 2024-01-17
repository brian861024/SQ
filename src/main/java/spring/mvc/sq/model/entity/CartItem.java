package spring.mvc.sq.model.entity;

public class CartItem {

	private Integer itemId; // 購物車明細 Id
	private Integer cartId; // 購物車 Id
	private Integer productId; // 商品 Id
	private Integer quantity; // 數量

	private Cart cart; // 購物車物件(關聯欄位)
	private Product product; // 商品物件(關聯欄位)
	
	
	public CartItem() {
		
	}

	public CartItem(Integer itemId, Integer cartId, Integer productId, Integer quantity, Cart cart, Product product) {
		super();
		this.itemId = itemId;
		this.cartId = cartId;
		this.productId = productId;
		this.quantity = quantity;
		this.cart = cart;
		this.product = product;
	}

	public Integer getItemId() {
		return itemId;
	}

	public void setItemId(Integer itemId) {
		this.itemId = itemId;
	}

	public Integer getCartId() {
		return cartId;
	}

	public void setCartId(Integer cartId) {
		this.cartId = cartId;
	}

	public Integer getProductId() {
		return productId;
	}

	public void setProductId(Integer productId) {
		this.productId = productId;
	}

	public Integer getQuantity() {
		return quantity;
	}

	public void setQuantity(Integer quantity) {
		this.quantity = quantity;
	}

	public Cart getCart() {
		return cart;
	}

	public void setCart(Cart cart) {
		this.cart = cart;
	}

	public Product getProduct() {
		return product;
	}

	public void setProduct(Product product) {
		this.product = product;
	}

	@Override
	public String toString() {
		return "CartItem [itemId=" + itemId + ", cartId=" + cartId + ", cart=" + cart + ", productId=" + productId
				+ ", product=" + product + ", quantity=" + quantity + "]";
	}
	
}
