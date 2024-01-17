package spring.mvc.sq.model.dao;

import java.util.List;
import java.util.Map;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;

import spring.mvc.sq.model.entity.User;

public class SqUserDaoMySQL implements SqUserDao {

	@Autowired
	private JdbcTemplate jdbcTemplate;
	
	// 1.查詢所有使用者
	@Override
	public List<User> findAllUsers() {
		String sql = "select userId, username, password, level from user";
		return jdbcTemplate.query(sql, new BeanPropertyRowMapper<>(User.class));
	}

	// 2. 新增使用者
	@Override
	public void addUser(User user) {
		String sql = "insert into user(username, password, level) values(?, ?, ?)";
		jdbcTemplate.update(sql, user.getUsername(), user.getPassword(), user.getLevel());
	}

	// 3. 更改使用者密碼
	@Override
	public Boolean updateUserPassword(Integer userId, String newPassword) {
		String sql = "update user set password = ? where userId = ?";
		int rowcount = jdbcTemplate.update(sql, newPassword, userId);
		return rowcount > 0;
	}

	// 4. 更改使用者名稱
	@Override
	public Boolean updateUserName(Integer userId, String newName) {
		String sql = "update user set Name = ? where userId = ?";
		int rowcount = jdbcTemplate.update(sql, newName, userId);
		return rowcount > 0;
	}

	// 5. 更改使用者信箱
	@Override
	public Boolean updateUserEmail(Integer userId, String newEmail) {
		String sql = "update user set Email = ? where userId = ?";
		int rowcount = jdbcTemplate.update(sql, newEmail, userId);
		return rowcount > 0;
	}

	// 6. 更改使用者號碼
	@Override
	public Boolean updateUserNumber(Integer userId, String newNumber) {
		String sql = "update user set Number = ? where userId = ?";
		int rowcount = jdbcTemplate.update(sql, newNumber, userId);
		return rowcount > 0;
	}

	// 7. 透過Id找使用者(登入)
	@Override
	public Optional<User> findUserById(Integer userId) {
		String sql = "select userId, username, password, level from user where username = ?";
		return Optional.empty();
	}

	// 8. 刪除使用者
	@Override
	public Boolean removeUserById(Integer userId) {
		String sql = "delete from user where userId = ?";
		return jdbcTemplate.update(sql, userId) == 1;
	}
	
}
