package spring.mvc.sq.model.dao;

import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.ResponseBody;

import spring.mvc.sq.model.entity.CartItem;
import spring.mvc.sq.model.entity.Product;
import spring.mvc.sq.model.entity.Cart;
import spring.mvc.sq.model.entity.User;
import spring.mvc.sq.model.dao.*;

@Repository
public class SqUserDaoMySQL implements SqUserDao {
	
	@Autowired
	private JdbcTemplate jdbcTemplate;
	
//========================================================================
	//-----查詢所有使用者-----
	@Override
	public List<User> findAllUsers() {
		String sql = "select userId, username, password, levelId, email, phoneNumber from user";
		return jdbcTemplate.query(sql, new BeanPropertyRowMapper<>(User.class));
	}
	
//========================================================================
	//-----透過使用者ID查找使用者-----
	@Override
	public Optional<User> findUserById(Integer userId) {
	        String sql = "select userId, username, password, levelId, email, phoneNumber from user WHERE userId = ?";
	        // 使用 queryForObject 方法，指定 RowMapper
	        try {
	            User user = jdbcTemplate.queryForObject(sql, new Object[]{userId}, new BeanPropertyRowMapper<>(User.class));
	            return Optional.ofNullable(user);
	        } catch (EmptyResultDataAccessException ex) {
	            // 如果查詢結果為空，返回空的 Optional
	            return Optional.empty();
	    }
	}
	
//========================================================================
	//-----新增使用者-----
	@Override
	public void addUser(User user) {
		String sql = "insert into user(username, password, levelId, email, phoneNumber) values(?, ?, ?, ?, ?)";
		jdbcTemplate.update(sql, user.getUsername(), user.getPassword(), 1, user.getEmail(), user.getPhoneNumber());
	}
	
//========================================================================
	//-----新增員工-----
	@Override
	public void addEmp(User user) {
		String sql = "insert into user(username, password, levelId, email, phoneNumber) values(?, ?, ?, ?, ?)";
		jdbcTemplate.update(sql, user.getUsername(), user.getPassword(), 2, user.getEmail(), user.getPhoneNumber());
	}
	
//========================================================================
	//-----更改使用者密碼-----
	@Override
	public Boolean updateUserPassword(Integer userId, String newPassword) {
		String sql = "update user set password = ? where userId = ?";
		int rowcount = jdbcTemplate.update(sql, newPassword, userId);
		return rowcount > 0;
	}
	
//========================================================================
	//-----更改使用者名稱-----
	@Override
	public Boolean updateUserName(Integer userId, String newName) {
		String sql = "update user set username = ? where userId = ?";
		int rowcount = jdbcTemplate.update(sql, newName, userId);
		return rowcount > 0;
	}
	
//========================================================================
	//-----更改使用者信箱-----
	@Override
	public Boolean updateUserEmail(Integer userId, String newEmail) {
		String sql = "update user set email = ? where userId = ?";
		int rowcount = jdbcTemplate.update(sql, newEmail, userId);
		return rowcount > 0;
	}
	
//========================================================================
	//-----更改使用者Tel-----
	@Override
	public Boolean updateUserNumber(Integer userId, String newNumber) {
		String sql = "update user set phoneNumber = ? where userId = ?";
		int rowcount = jdbcTemplate.update(sql, newNumber, userId);
		return rowcount > 0;
	}
	
//========================================================================
	//-----根據使用者名稱查找使用者(登入用-單筆)-----
	@Override
	public Optional<User> findUserByUsernameOrEmail(String username, String email) {
		String sql = "select userId, username, password, levelId, email, phoneNumber from user where username = ? or email = ?";
	    try {
	        User user = jdbcTemplate.queryForObject(sql, new BeanPropertyRowMapper<>(User.class), username, email);
	        return Optional.ofNullable(user);
	    } catch (Exception e) {
	        // 如果查詢結果為空或其他錯誤，返回 Optional.empty()
	    	return Optional.empty();
	    }
	}
	
//========================================================================
	//-----根據使用者名稱查找使用者(註冊檢查及登入用-單筆)-----
	public Optional<User> findUserByUsername(String username){
		String sql = "select userId, username, password, levelId, email, phoneNumber from user where username = ?";
		try {
            User user = jdbcTemplate.queryForObject(sql, new BeanPropertyRowMapper<>(User.class), username);
            return Optional.ofNullable(user);
        } catch (Exception e) {
            // 如果查询结果為空或其他錯誤，返回 Optional.empty()
            return Optional.empty();
        }
	}
	
//========================================================================
	//-----根據使用者信箱查找使用者(註冊檢查及登入用-單筆)-----
	public Optional<User> findUserByEmail(String email){
		String sql = "select userId, username, password, levelId, email, phoneNumber from user where email = ?";
		try {
            User user = jdbcTemplate.queryForObject(sql, new BeanPropertyRowMapper<>(User.class), email);
            return Optional.ofNullable(user);
        } catch (Exception e) {
            // 如果查詢結果為空或其他錯誤，返回 Optional.empty()
            return Optional.empty();
        }
	}
	
//========================================================================
	//-----刪除使用者-----
	@Override
	public Boolean removeUserById(Integer userId) {
		String sql = "delete from user where userId = ?";
		return jdbcTemplate.update(sql, userId) == 1;
	}
	
//========================================================================	
	//-----查找未結帳的購物車-----
	@Override
	public Optional<Cart> findNoneCheckoutCartByUserId(Integer userId) {
	    try {
	        String sql = "select cartId, checkoutTime, isCheckout, deliveryStatus, deliveryAddress, userId, amount from cart "
	                + "where userId = ? and (isCheckout = false or isCheckout is null)";
	        List<Cart> carts = jdbcTemplate.query(sql, new BeanPropertyRowMapper<>(Cart.class), userId);

	        if (!carts.isEmpty()) {
	            Cart cart = carts.get(0);
	            enrichCartWithDetails(cart);
	            return Optional.of(cart);
	        } else {
	            return Optional.empty();
	        }
	    } catch (EmptyResultDataAccessException e) {
	        return Optional.empty();
	    }
	}
	
//========================================================================	
	@Override
	public List<Cart> findCheckoutCartByUserId(Integer userId) {
	    try {
	        String sql = "SELECT cartId, checkoutTime, isCheckout, deliveryStatus, deliveryAddress, userId, amount FROM cart "
	                   + "WHERE userId = ? AND isCheckout = true";

	        List<Cart> carts = jdbcTemplate.query(sql, new BeanPropertyRowMapper<>(Cart.class), userId);

	        for (Cart cart : carts) {
	            enrichCartWithDetails(cart);
	        }

	        return carts;
	    } catch (EmptyResultDataAccessException e) {
	        return Collections.emptyList();
	    }
	}
	
//========================================================================
	//-----根據產品ID來查找商品(單筆)-----
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

//========================================================================
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
}
