package spring.mvc.sq.model.dao;

import java.util.List;
import java.util.Map;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import spring.mvc.sq.model.entity.CartItem;
import spring.mvc.sq.model.entity.Cart;
import spring.mvc.sq.model.entity.Product;
import spring.mvc.sq.model.entity.User;

@Repository
public class SqCartDaoMySQL implements SqCartDao{

	@Autowired
	private JdbcTemplate jdbcTemplate;
	
	// 新增購物車
	@Override
	public void addCart(Cart cart) {
		String sql = "insert into cart(userId, isCheckOut) values(?, ?)";
		jdbcTemplate.update(sql, cart.getUserId(), cart.getIsCheckout());
	}
	
	// 查找所有購物車(多筆)
	@Override
	public List<Cart> findAllCart() {
		String sql = "select cartId, checkoutTime, isCheckout, deliveryStatus, deliveryAddress, userId, amount from cart";
		return jdbcTemplate.query(sql, new BeanPropertyRowMapper<>(Cart.class));
	}

	// 根據使用者ID來查找其所有購物車資料(多筆)
	@Override
	public List<Cart> findCartsByUserId(Integer userId) {
		String sql = "select * from cart where userId = ?";
		List<Cart> carts = jdbcTemplate.query(sql, new BeanPropertyRowMapper<>(Cart.class), userId);
		carts.forEach(this::enrichCartWithDetails);
		return carts;
	}

	// 根據is_Checkout狀態查找所有購物車資料(多筆)
	@Override
	public List<Cart> findCartIdbyisCheckout(Boolean isCheckout) {
		String sql = "select cartId, checkoutTime, isCheckout, deliveryStatus, deliveryAddress, userId, amount from cart where isCheckout = ?";
		List<Cart> carts = jdbcTemplate.query(sql, new BeanPropertyRowMapper<>(Cart.class), isCheckout);
		carts.forEach(this::enrichCartWithDetails);
		return carts;
	}

	// 根據is_Checkout狀態及UserId列出訂單(多筆)
	@Override
	public List<Cart> findCartIdbyisCheckoutAndUserId(Boolean isCheckout, Integer userId) {
		String sql = "select cartId, checkoutTime, isCheckout, deliveryStatus, deliveryAddress, userId, amount from cart where isCheckout = ? and userId = ?";
		List<Cart> carts = jdbcTemplate.query(sql, new BeanPropertyRowMapper<>(Cart.class), isCheckout);
		carts.forEach(this::enrichCartWithDetails);
		return carts;
	}
	
	// 刪除購物車
	@Override
	public Boolean removeCartById(Integer cartId) {
		String sql = "delete from cart where cartId = ?";
		return jdbcTemplate.update(sql, cartId) == 1;
	}

	// 修改訂單運送地址
	@Override
	public Boolean updateDeliveryAddress(Integer cartId, String deliveryAddress) {
		String sql = "update cart set deliveryAddress = ? where cartId = ?";
		return jdbcTemplate.update(sql, deliveryAddress, cartId) > 0;
	}

	// 根據使用者ID來查找其未結帳的購物車資料(單筆)
    @Override
    public Optional<Cart> findNoneCheckoutCartByUserId(Integer userId) {
        String sql = "select cartId, checkoutTime, isCheckout, deliveryStatus, deliveryAddress, userId, amount from cart where userId = ? AND isCheckout = false";
        try {
            Cart cart = jdbcTemplate.queryForObject(sql, new BeanPropertyRowMapper<>(Cart.class), userId);
            enrichCartWithDetails(cart);
            return Optional.of(cart);
        } catch (EmptyResultDataAccessException e) {
            return Optional.empty();
        }
    }

    // 根據使用者ID及結帳狀態來查找其所有購物車資料(多筆)
    @Override
    public List<Cart> findCartsbyUserIdAndCheckoutStatus(Integer userId, Boolean isCheckout) {
        String sql = "SELECT cartId, checkoutTime, isCheckout, deliveryStatus, deliveryAddress, userId, amount from cart where userId = ? AND isCheckout = ?";
        List<Cart> carts = jdbcTemplate.query(sql, new BeanPropertyRowMapper<>(Cart.class), userId, isCheckout);
        carts.forEach(this::enrichCartWithDetails);
        return carts;
    }

    // 計算每位使用者的總金額
    @Override
    public List<Map<String, Object>> calculateTotalAmountPerUser() {
        String sql = "SELECT userId, SUM(totalAmount) AS totalAmount from cart GROUP BY userId";
        return jdbcTemplate.queryForList(sql);
    }

    // 結帳特定使用者的購物車
    @Override
    public Boolean checkoutCartByUserId(Integer userId) {
        String sql = "update cart SET isCheckout = true where userId = ? AND isCheckout = false";
        return jdbcTemplate.update(sql, userId) > 0;
    }

    // 設置特定購物車為處理中
    @Override
    public Boolean setProcessingCartById(Integer cartId) {
        String sql = "update cart SET processingStatus = '處理中' where cartId = ?";
        return jdbcTemplate.update(sql, cartId) > 0;
    }

    // 結帳特定購物車
    @Override
    public Boolean checkoutCartById(Integer cartId) {
        String sql = "update cart SET isCheckout = true where cartId = ?";
        return jdbcTemplate.update(sql, cartId) > 0;
    }

    // 為 cart 注入 cartItem
 	// details: 使用者物件(user) 與 購物車明細(cartItems), 以及購物車明細的商品資料
 	private void enrichCartWithDetails(Cart cart) {
 	// 注入 user
 	//findUserById(cart.getUserId()).ifPresent(user -> cart.setUser(user));
 	findUserById(cart.getUserId()).ifPresent(cart::setUser);
 	
 	// 查詢 cartItems 並注入
 	String sqlItems = "select * from cartitem where cartId = ?";
 	List<CartItem> cartItems = jdbcTemplate.query(sqlItems, new BeanPropertyRowMapper<>(CartItem.class), cart.getCartId());
 	// 根據 productId 找到 product 並注入
 	cartItems.forEach(cartItem -> {
 		findProductbyId(cartItem.getProductId()).ifPresent(cartItem::setProduct);
 	});
 	cart.setCartItems(cartItems);
 	}

	@Override
	public Optional<User> findUserById(Integer userId) {
		String sql = "select userId, username, password, level from user where username = ?";
		return Optional.empty();
	}
	
	@Override
	public Optional<Product> findProductbyId(Integer productId) {
	   String sql = "select  cartId, checkoutTime, isCheckout, deliveryStatus, deliveryAddress, userId from Products where productId = ?";
	     try {
	         // 使用 queryForObject 方法來獲取單個結果
	         Product product = jdbcTemplate.queryForObject(sql, new BeanPropertyRowMapper<>(Product.class), productId);
	         return Optional.ofNullable(product);
	     } catch (Exception e) {
	         // 查找不到時返回空的 Optional
	         return Optional.empty();
	     }
	}
	
	// 根據使用者ID查詢last5chars
	@Override
	public Optional<Cart> findlast5charsByUserId(Integer userId) {
		// TODO Auto-generated method stub
		return Optional.empty();
	}
	
	// 根據購物車ID將購物車設置為取消訂單狀態
	@Override
	public Boolean cancleOrderById(Integer cartId) {
		String sql = "update cart SET processingStatus = '已取消' where cartId = ?";
        return jdbcTemplate.update(sql, cartId) > 0;
	}
	
}
