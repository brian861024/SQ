package spring.mvc.sq.model.dao;

import java.util.List;
import java.util.Map;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import spring.mvc.sq.model.entity.Cart;

public class SqCartDaoMySQL implements SqCartDao{

	@Autowired
	private JdbcTemplate jdbcTemplate;
	
	// 1.新增購物車
	@Override
	public void addCart(Cart cart) {
		String sql = "insert into cart(userId, isCheckOut) values(?, ?)";
		jdbcTemplate.update(sql, cart.getUserId(), cart.getIsCheckout());
	}

	@Override
	public List<Cart> findAllCart() {
		String sql = "select cartId, userId, isCheckout, checkoutTime from cart";
		return jdbcTemplate.query(sql, new BeanPropertyRowMapper<>(Cart.class));
	}

	@Override
	public Optional<Cart> findCartIdbyId(Integer cartId) {
		// TODO Auto-generated method stub
		return Optional.empty();
	}

	@Override
	public List<Cart> findCartsByUserId(Integer userId) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Cart> findCartIdbyisCheckout(Boolean isCheckout) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Cart> findCartIdbyisCheckoutAndUserId(Boolean isCheckout, Integer userId) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Boolean removeCartById(Integer cartId) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Boolean updateDeliveryAddress(Integer cartId, String deliveryAddress) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Optional<Cart> findNoneCheckoutCartByUserId(Integer userId) {
		// TODO Auto-generated method stub
		return Optional.empty();
	}

	@Override
	public List<Cart> findCartsbyUserIdAndCheckoutStatus(Integer userId, Boolean isCheckout) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Map<String, Object>> calculateTotalAmountPerUser() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Boolean checkoutCartByUserId(Integer userId) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Boolean setProcessingCartById(Integer cartId) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Boolean checkoutCartById(Integer cartId) {
		// TODO Auto-generated method stub
		return null;
	}
	
}
