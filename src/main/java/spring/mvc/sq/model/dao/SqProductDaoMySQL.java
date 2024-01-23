package spring.mvc.sq.model.dao;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import spring.mvc.sq.model.entity.Product;

@Repository
public class SqProductDaoMySQL implements SqProductDao {

    @Autowired
    private JdbcTemplate jdbcTemplate;

    // 1. 查找所有產品
    @Override
    public List<Product> findAllProducts() {
        String sql = "SELECT * FROM Product";
        return jdbcTemplate.query(sql, new BeanPropertyRowMapper<>(Product.class));
    }

    // 2. 根據上架狀態查找產品
    @Override
    public List<Product> findAllProducts(Boolean isLaunch) {
        String sql = "SELECT * FROM Product WHERE isLaunch = ?";
        return jdbcTemplate.query(sql, new BeanPropertyRowMapper<>(Product.class), isLaunch);
    }

    // 3. 根據產品ID查找單個產品
    @Override
    public Optional<Product> findProductbyId(Integer productId) {
        String sql = "SELECT * FROM Product WHERE productId = ?";
        try {
            // 使用 queryForObject 方法來獲取單個結果
            Product product = jdbcTemplate.queryForObject(sql, new BeanPropertyRowMapper<>(Product.class), productId);
            return Optional.ofNullable(product);
        } catch (Exception e) {
            // 查找不到時返回空的 Optional
            return Optional.empty();
        }
    }

    // 4. 根據分類ID查找相關產品
    @Override
    public List<Product> findProductsbyCategory(Integer categoryId) {
        String sql = "SELECT * FROM Product WHERE categoryId = ?";
        return jdbcTemplate.query(sql, new BeanPropertyRowMapper<>(Product.class), categoryId);
    }

    // 5. 根據價格和分類查找產品
    @Override
    public List<Product> findProductsbyPriceandCategory(Integer categoryId, Integer price) {
        String sql = "SELECT * FROM Product WHERE categoryId = ? AND price <= ?";
        return jdbcTemplate.query(sql, new BeanPropertyRowMapper<>(Product.class), categoryId, price);
    }

    // 6. 根據價格查找產品
    @Override
    public List<Product> findProductsbyPrice(Integer price) {
        String sql = "SELECT * FROM Product WHERE price <= ?";
        return jdbcTemplate.query(sql, new BeanPropertyRowMapper<>(Product.class), price);
    }

    // 7. 新增產品
    @Override
    public void addProduct(Product product) {
        String sql = "INSERT INTO Product (ProductName, Price, StockQuantity, Description, isLaunch, CategoryId) VALUES (?, ?, ?, ?, ?, ?)";
        jdbcTemplate.update(sql, product.getProductName(), product.getPrice(), product.getStockQty(),
                product.getDescribe(), product.getIsLaunch(), product.getCategoryId());
    }

    // 8. 更新產品上架狀態
    @Override
    public Boolean updateProductLaunch(Integer productId, Boolean isLaunch) {
        String sql = "UPDATE Product SET isLaunch = ? WHERE productId = ?";
        // update 方法返回受影響的行數，判斷是否更新成功
        return jdbcTemplate.update(sql, isLaunch, productId) > 0;
    }

    // 9. 更新產品名稱
    @Override
    public Boolean updateProductName(Integer productId, String productName) {
        String sql = "UPDATE Product SET ProductName = ? WHERE productId = ?";
        return jdbcTemplate.update(sql, productName, productId) > 0;
    }

    // 10. 更新產品價格
    @Override
    public Boolean updateProductPrice(Integer productId, Float productPrice) {
        String sql = "UPDATE Product SET Price = ? WHERE productId = ?";
        return jdbcTemplate.update(sql, productPrice, productId) > 0;
    }

    // 11. 更新產品庫存數量
    @Override
    public Boolean updateProductQty(Integer productId, Integer productQty) {
        String sql = "UPDATE Product SET StockQty = ? WHERE productId = ?";
        return jdbcTemplate.update(sql, productQty, productId) > 0;
    }

    // 12. 更新產品分類
    @Override
    public Boolean updateProductCategory(Integer productId, Integer categoryId) {
        String sql = "UPDATE Product SET CategoryId = ? WHERE productId = ?";
        return jdbcTemplate.update(sql, categoryId, productId) > 0;
    }

    // 13. 更新產品描述
    @Override
    public Boolean updateProductDescribe(Integer productId, String productDescribe) {
        String sql = "UPDATE Product SET Description = ? WHERE productId = ?";
        return jdbcTemplate.update(sql, productDescribe, productId) > 0;
    }

    // 14. 刪除產品
    @Override
    public Boolean removeProductById(Integer productId) {
        String sql = "DELETE FROM Product WHERE productId = ?";
        return jdbcTemplate.update(sql, productId) > 0;
    }

}
