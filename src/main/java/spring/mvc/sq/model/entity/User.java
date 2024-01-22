package spring.mvc.sq.model.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class User {

	private Integer userId; // 使用者Id
	private String username; // 使用者名稱
	private String password; // 使用者密碼
	private Integer levelId; // 使用者等級
	private String email; // 使用者信箱
	private String phoneNumber; // 使用者電話號碼
}
