package spring.mvc.sq.model.entity;

public class Product {

	private Integer productId; // 商品代號
	private String productName; // 商品名稱
	private Integer price; // 商品價格
	private Integer stockquantity; //商品庫存
	private Integer categoryId; //商品分類
	private String describe; //商品描述
	private Boolean isLaunch; // 是否上架
	
	public Product() {
		
	}
	
	public Product(Integer productId, String productName, Integer price, Integer stockquantity, String category,
			String describe, Boolean isLaunch) {
		this.productId = productId;
		this.productName = productName;
		this.price = price;
		this.stockquantity = stockquantity;
		this.categoryId = categoryId;
		this.describe = describe;
		this.isLaunch = isLaunch;
	}
	
	public Integer getProductId() {
		return productId;
	}

	public void setProductId(Integer productId) {
		this.productId = productId;
	}

	public String getProductName() {
		return productName;
	}

	public void setProductName(String productName) {
		this.productName = productName;
	}

	public Integer getPrice() {
		return price;
	}

	public void setPrice(Integer price) {
		this.price = price;
	}

	public Integer getStockQuantity() {
		return stockquantity;
	}

	public void setStockQuantity(Integer stockquantity) {
		this.stockquantity = stockquantity;
	}

	public Integer getCategoryId() {
		return categoryId;
	}

	public void setCategoryId(Integer categoryId) {
		this.categoryId = categoryId;
	}
	
	public String getDescribe() {
		return describe;
	}

	public void setDescribe(String describe) {
		this.describe = describe;
	}
	
	public Boolean getIsLaunch() {
		return isLaunch;
	}

	public void setIsLaunch(Boolean isLaunch) {
		this.isLaunch = isLaunch;
	}

	@Override
	public String toString() {
		return "Product [productId=" + productId + ", productName=" + productName + ", price=" + price
				+ ", stockquantity=" + stockquantity + ", categoryId=" + categoryId + ", describe=" + describe
				+ ", isLaunch=" + isLaunch + "]";
	}
	
}
