package spring.mvc.sq.model.dao;

import java.util.List;
import java.util.Map;
import java.util.Optional;

import spring.mvc.sq.model.entity.*;

public interface SqProductDao {
	
//	商品-ProductCategoryId
//	1. 查詢所有商品(多筆)
	List<Product> findAllProducts();
//	2. 根據 isLaunch 狀態取得商品資料
	List<Product> findAllProducts(Boolean isLaunch);
//	3. 根據產品ID來查找商品(單筆)
	Optional<Product> findProductbyId(Integer productId);
//	4. 根據產品屬性來查找商品(多筆)
	List<Product> findProductsbyCategory(Integer categoryId);
//	5. 根據產品及價格屬性來查找商品(多筆)
	List<Product> findProductsbyPriceandCategory(Integer categoryId,Integer price);
//	6. 根據價格來查找商品(多筆)
	List<Product> findProductsbyPrice(Integer price);
//	7. 新增商品
	void addProduct(Product product);
//	8. 變更商品上架狀態
	Boolean updateProductLaunch(Integer productId, Boolean isLaunch);
//	9. 修改商品名稱
	Boolean updateProductName(Integer productId, String productname);
//	10.修改商品價格
	Boolean updateProductPrice(Integer productId, Float productprice);
//	11.修改商品數量
	Boolean updateProductQty(Integer productId, Integer productqty);
//	12.修改商品屬性
	Boolean updateProductCategory(Integer productId, Integer categoryId);
//	13.修改商品描述
	Boolean updateProductDescribe(Integer productId, String productdescribe);
//  14.刪除商品
	Boolean removeProductById(Integer productId);
	
}
