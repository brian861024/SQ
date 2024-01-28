package spring.mvc.sq.model.dao;

import java.util.List;
import java.util.Map;
import java.util.Optional;

import spring.mvc.sq.model.entity.*;
import spring.mvc.sq.model.dao.*;

public interface SqUserDao {
	
//使用者-User:
//-----查詢所有使用者(多筆)-----
	List<User> findAllUsers();
//-----透過使用者ID查找使用者-----
	public Optional<User> findUserById(Integer userId);
//-----新增使用者-----
	void addUser(User user);
//-----新增使用者-----
	void addEmp(User user);
//-----修改密碼-----
	Boolean updateUserPassword(Integer usererId, String newPassword);
//-----修改使用者名稱-----
	Boolean updateUserName(Integer userId, String newName);
//-----修改信箱-----
	Boolean updateUserEmail(Integer userId, String newEmail);
//-----修改電話-----
	Boolean updateUserNumber(Integer userId, String newNumber);
//-----根據使用者名稱或信箱查找使用者(登入用-單筆)-----
	Optional<User> findUserByUsernameOrEmail(String username, String email);
//-----根據使用者名稱查找使用者(註冊檢查及登入用-單筆)-----
	Optional<User> findUserByUsername(String username);
//-----根據使用者信箱查找使用者(註冊檢查及登入用-單筆)-----
	Optional<User> findUserByEmail(String email);
//-----根據使用者ID刪除使用者-----
	Boolean removeUserById(Integer userId);
//-----根據使用者ID來查找其未結帳的購物車資料(單筆)-----
	public Optional<Cart> findNoneCheckoutCartByUserId(Integer userId);
//-----根據使用者ID來查找其未結帳的購物車資料(多筆)-----
	public List<Cart> findCheckoutCartByUserId(Integer userId);
//-----根據產品ID來查找商品(單筆)-----
	Optional<Product> findProductbyId(Integer productId);
	
}
