package spring.mvc.sq.model.entity;

import java.util.List;

public class User {

	private Integer userId;
	private String username;
	private String password;
	private String email;
	private Integer level;
	private Integer phoneNumber;
	
	// 服務列表
	private List<Service> services;
	
	public User() {
		
	}

	//登入用
	public User(Integer userId, String username, String password, String email, Integer level) {
		super();
		this.userId = userId;
		this.username = username;
		this.password = password;
		this.email = email;
		this.level = level;
	}
	
	
	public User(Integer userId, String username, String password, String email, Integer level, Integer phoneNumber,
			Integer age, Integer gender) {
		super();
		this.userId = userId;
		this.username = username;
		this.password = password;
		this.email = email;
		this.level = level;
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

	public void setPassword(String passwordHash) {
		this.password = passwordHash;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public Integer getLevel() {
		return level;
	}

	public void setLevel(Integer level) {
		this.level = level;
	}

	public Integer getPhoneNumber() {
		return phoneNumber;
	}

	public void setPhoneNumber(Integer phoneNumber) {
		this.phoneNumber = phoneNumber;
	}
	
}
