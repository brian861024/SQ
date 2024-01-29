package spring.mvc.sq.model.dao;

import java.util.List;
import java.util.Map;
import java.util.Optional;

import org.springframework.data.domain.Pageable;

import spring.mvc.sq.model.entity.*;

public interface SqProductDao {
	
//	商品-ProductCategoryId
//	查詢所有商品(多筆)
	List<Product> findAllProducts();
//	根據 isLaunch 狀態取得商品資料
	List<Product> findAllProducts(Boolean isLaunch);
//	根據產品ID來查找商品(單筆)
	Optional<Product> findProductbyId(Integer productId);
//	根據產品屬性來查找商品(多筆)
	List<Product> findProductsbyCategory(Boolean isLaunch, Integer categoryId, Pageable page);
//	根據產品及價格屬性來查找商品(多筆)
	List<Product> findProductsbyPriceandCategory(Integer categoryId,Integer price);
//	根據價格來查找商品(多筆)
	List<Product> findProductsbyPrice(Integer price);
//	新增商品
	void addProduct(Product product);
//	變更商品上架狀態
	Boolean updateProductLaunch(Integer productId, Boolean isLaunch);
//	修改商品名稱
	Boolean updateProductName(Integer productId, String productname);
//	修改商品價格
	Boolean updateProductPrice(Integer productId, Float productprice);
//	修改商品數量
	Boolean updateProductQty(Integer productId, Integer productqty);
//	修改商品屬性
	Boolean updateProductCategory(Integer productId, Integer categoryId);
//	修改商品描述
	Boolean updateProductDescribe(Integer productId, String productdescribe);
//  刪除商品
	Boolean removeProductById(Integer productId);
//	透過Page來找商品	
	public List<Product> findProductsByPage(Boolean isLaunch,Pageable page);
//	全部的頁數	
	public int totalPage(Boolean isLaunch,int pageSize);
//	透過分類來篩選總頁數
	int totalPageByCategory(Boolean isLaunch, Integer categoryId, int pageSize);
}
