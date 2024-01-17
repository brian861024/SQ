package spring.mvc.sq.model.dao;

import java.util.List;
import java.util.Map;
import java.util.Optional;

import spring.mvc.sq.model.entity.*;

public interface SqUserDao {
	
//使用者-User:
//1. 查詢所有使用者(多筆)
	List<User> findAllUsers();
//2. 新增使用者
	void addUser(User user);
//3. 修改密碼
	Boolean updateUserPassword(Integer usererId, String newPassword);
//4. 修改使用者名稱
	Boolean updateUserName(Integer userId, String newName);
//5. 修改信箱
	Boolean updateUserEmail(Integer userId, String newEmail);
//6. 修改電話
	Boolean updateUserNumber(Integer userId, String newNumber);
//7. 根據使用者名稱查找使用者(登入用-單筆)
	Optional<User> findUserById(Integer userId);
//8. 根據使用者ID刪除使用者
	Boolean removeUserById(Integer userId);
	
}
