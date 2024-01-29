package spring.mvc.sq.model.dao;

import java.util.List;
import java.util.Map;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import spring.mvc.sq.model.entity.CartItem;

@Repository
public class SqCartItemDaoMySQL implements SqCartItemDao {

    @Autowired
    private JdbcTemplate jdbcTemplate;

//========================================================================
    //-----新增購物車項目-----
    @Override
    public void addCartItem(CartItem cartItem) {
        String sql = "INSERT INTO CartItem (Qty, CartId, ProductId, price) VALUES (?, ?, ? ,?)";
        jdbcTemplate.update(sql, cartItem.getQty(), cartItem.getCartId(), cartItem.getProductId(), cartItem.getPrice() );
    }
   
//========================================================================
    //-----刪除購物車項目-----
    @Override
    public Boolean removeCartItemById(Integer itemId) {
        String sql = "DELETE FROM CartItem WHERE ItemId = ?";
        return jdbcTemplate.update(sql, itemId) > 0;
    }

//========================================================================
    //-----根據項目ID查找購物車項目-----
    @Override
    public Optional<CartItem> findCartItemById(Integer itemId) {
        String sql = "SELECT itemId, cartId, productId, price, qty FROM CartItem WHERE ItemId = ?";
        try {
            CartItem cartItem = jdbcTemplate.queryForObject(sql, new BeanPropertyRowMapper<>(CartItem.class), itemId);
            return Optional.ofNullable(cartItem);
        } catch (Exception e) {
            return Optional.empty();
        }
    }

//========================================================================
    //-----根據購物車ID查找所有項目-----
    @Override
    public List<CartItem> findCartItemsById(Integer cartId) {
        String sql = "SELECT itemId, cartId, productId, price, qty FROM CartItem WHERE CartId = ?";
        return jdbcTemplate.query(sql, new BeanPropertyRowMapper<>(CartItem.class), cartId);
    }

//========================================================================
    //-----更新購物車項目數量（根據項目ID）-----
    @Override
    public Boolean updateCartItemQuantityById(Integer itemId, Integer quantity) {
        String sql = "UPDATE CartItem SET Qty = ? WHERE ItemId = ?";
        return jdbcTemplate.update(sql, quantity, itemId) > 0;
    }

//========================================================================
    //-----更新購物車項目數量（根據購物車ID）-----
    @Override
    public Boolean updateCartItemQuantity(Integer cartId, Integer quantity) {
        String sql = "UPDATE CartItem SET Qty = ? WHERE CartId = ?";
        return jdbcTemplate.update(sql, quantity, cartId) > 0;
    }

//========================================================================
    //-----計算每個使用者的總消費金額-----
    @Override
    public List<Map<String, Object>> calculateTotalAmountPerUser() {
        // TODO: 實現計算總金額的 SQL 查詢
        return null;
    }
    
    // 透過CartItemId來找ProductId
    
    
}
