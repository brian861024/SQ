package spring.mvc.sq.model.entity;

import java.util.List;

public class User {

	private Integer userId; // 使用者Id
	private String username; // 使用者名稱
	private String password; // 使用者密碼
	private Integer levelId; // 使用者等級
	private String email; // 使用者信箱
	private String phoneNumber; // 使用者電話號碼
	
	public User() {
		
	}

	public User(Integer userId, String username, String password, Integer levelId, String email, String phoneNumber) {
		super();
		this.userId = userId;
		this.username = username;
		this.password = password;
		this.levelId = levelId;
		this.email = email;
		this.phoneNumber = phoneNumber;
	}

	public Integer getUserId() {
		return userId;
	}

	public void setUserId(Integer userId) {
		this.userId = userId;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public Integer getLevelId() {
		return levelId;
	}

	public void setLevelId(Integer levelId) {
		this.levelId = levelId;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPhoneNumber() {
		return phoneNumber;
	}

	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}
	
}
