package spring.mvc.sq.controller;

import java.awt.Color;
import java.awt.Font;
import java.awt.Graphics;
import java.awt.image.BufferedImage;
import java.io.IOException;
import java.util.Base64;
import java.util.Enumeration;
import java.util.List;
import java.util.Optional;
import java.util.Random;

import javax.crypto.spec.SecretKeySpec;
import javax.imageio.ImageIO;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import spring.mvc.sq.model.entity.CartItem;
import spring.mvc.sq.model.entity.Contact;
import spring.mvc.sq.model.dao.SqCartDao;
import spring.mvc.sq.model.dao.SqCartItemDao;
import spring.mvc.sq.model.dao.SqContactDao;
import spring.mvc.sq.model.dao.SqProductDao;
import spring.mvc.sq.model.dao.SqUserDao;
import spring.mvc.sq.model.dao.SqUserDaoMySQL;
import spring.mvc.sq.model.entity.Product;
import spring.mvc.sq.model.entity.User;

//UserController處理以下之功能：
//帳號相關：會員註冊、會員登入、會員登出、個人資料修改、查詢密碼

@Controller
@RequestMapping("/user")
public class SqUserController {
	
	@Autowired
	private SqUserDao sqUserDao;
	@Autowired
	private SqProductDao sqProductDao;
	@Autowired
	private SqContactDao sqContactDao;
	@Autowired
	private SqCartDao sqCartDao;
	@Autowired
	private SqCartItemDao sqCartItemDao;

	
	
	//進入首頁(前台商品頁面)
	@RequestMapping("/index")
	public String frontendMain() {
		return "/sq/frontend/frontend_index";
	}

//====================== 會員管理前臺 ======================
//======================================================	
	//-----產生驗證碼圖片功能-----
	@GetMapping("/getcode")
	private void getCodeImage(HttpSession session, HttpServletResponse response) throws IOException {
		// 產生一個驗證碼 code
		 Random random = new Random();
		    String code1 = String.format("%c", (char) (random.nextInt(26) + 'A')); // 大寫英文字母
		    String code2 = String.format("%c", (char) (random.nextInt(26) + 'A'));
		    String code3 = String.format("%c", (char) (random.nextInt(26) + 'A'));
		    String code4 = String.format("%c", (char) (random.nextInt(26) + 'A'));

		    String code = code1 + code2 + code3 + code4;
		    session.setAttribute("code", code);
		
		// Java 2D 產生圖檔
		// 1. 建立圖像暫存區
		BufferedImage img = new BufferedImage(110, 40, BufferedImage.TYPE_INT_BGR);
		// 2. 建立畫布
		Graphics g = img.getGraphics();
		// 3. 設定顏色
		g.setColor(Color.gray);
		// 4. 塗滿背景
		g.fillRect(0, 0, 120, 40);
		// 5. 設定顏色
		g.setColor(Color.white);
		// 6. 設定字型
		g.setFont(new Font("新細明體", Font.BOLD, 30));
		// 7. 繪字串
		g.drawString(code, 10, 28); // code, x, y
		// 8. 干擾線
		g.setColor(Color.RED);
		for(int i=0;i<4;i++) {
			int x1 = random.nextInt(110);
			int y1 = random.nextInt(40);
			int x2 = random.nextInt(110);
			int y2 = random.nextInt(40);
			g.drawLine(x1, y1, x2, y2);
		}
		g.setColor(Color.black);
		for(int i=0;i<4;i++) {
			int x1 = random.nextInt(110);
			int y1 = random.nextInt(40);
			int x2 = random.nextInt(110);
			int y2 = random.nextInt(40);
			g.drawLine(x1, y1, x2, y2);
		}
		
		// 設定回應類型
		response.setContentType("image/png");
		
		// 將影像串流回寫給 client
		ImageIO.write(img, "PNG", response.getOutputStream());
	}
//======================================================
//======================================================	
	//-----會員註冊功能-----
	//。信箱不可重複
	//。兩次的註冊密碼要相同
	@RequestMapping("/register")
	public String register(@RequestParam("username") String username,
						   @RequestParam("userpassword") String password,
						   @RequestParam("userpassword2") String password2,
						   @RequestParam("useremail") String email,
						   @RequestParam("usertel") String phoneNumber,
						   @RequestParam("code") String code,
						   HttpSession session, Model model) throws Exception  {
		//比對驗證碼
		if(!code.equals(session.getAttribute("code")+"")) {
			session.invalidate(); // session 過期失效
			model.addAttribute("loginMessage", "驗證碼錯誤");
			return "sq/frontend/frontend_register";}
		
		Optional<User> userOpt = sqUserDao.findUserByEmail(email);
		
				if(userOpt.isPresent()){
			// 如果 使用該姓名或信箱的user有存在 則 執行此處
			session.invalidate(); // session 過期失效
			model.addAttribute("loginMessage", "使用者信箱重複");
			return "sq/frontend/frontend_register";
		}
		// 如果 用戶名和信箱均不重複 則 檢查兩次密碼是否相同
		else if (!password.equals(password2)){
			 session.invalidate(); // session 過期失效
	         model.addAttribute("loginMessage", "兩次輸入的密碼不相同");
	         return "sq/frontend/frontend_register";
	      }
			 // 如果 兩次密碼輸入相同 則 進行註冊
			 else {
				User user = new User();
				user.setUsername(username);
//				// 將 password 進行 AES 加密 -------------------------------------------------------------------
//				final String KEY = KeyUtil.getSecretKey();
//				SecretKeySpec aesKeySpec = new SecretKeySpec(KEY.getBytes(), "AES");
//				byte[] encryptedPasswordECB = KeyUtil.encryptWithAESKey(aesKeySpec, password);
//				String encryptedPasswordECBBase64 = Base64.getEncoder().encodeToString(encryptedPasswordECB);
//				//-------------------------------------------------------------------------------------------
				user.setPassword(password);
				user.setEmail(email);
				user.setPhoneNumber(phoneNumber);
				sqUserDao.addUser(user);
				model.addAttribute("successMessage", "註冊成功");
				return "sq/frontend/frontend_checkRegisterPage";
			 }
			}
		
//======================================================	
//======================================================
	//-----會員登入-----
	// 邏輯：
	@RequestMapping("/login")
	public String login(@RequestParam("useremail") String useremail,
	                    @RequestParam("password") String password,
	                    @RequestParam("code") String code,
	                    HttpSession session, Model model) throws Exception {
		//比對驗證碼
		if(!code.equals(session.getAttribute("code")+"")) {
			session.invalidate(); // session 過期失效
			model.addAttribute("loginMessage", "驗證碼錯誤");
			return "sq/frontend/frontend_login";}
	    // 根據 useremail 查找 user 物件
	    Optional<User> userOpt = sqUserDao.findUserByEmail(useremail);

	    if (userOpt.isPresent()) {
	        User user = userOpt.get();
	        // 比對的 password 是否相同
	        if (user.getPassword().equals(password)) {
	            // 將 user 物件放入到 session 變數中
	            session.setAttribute("user", user);
	            // OK, 導向前台首頁
	            return "redirect:/mvc/sq/index";
	        } else {
	            // session 過期失效
	            session.invalidate();
	            // 密碼錯誤
	            model.addAttribute("loginMessage", "密碼錯誤");
	            return "sq/frontend/frontend_login";
	        }
	    } else {
	        // session 過期失效
	        session.invalidate();
	        // 無此使用者
	        model.addAttribute("loginMessage", "無此使用者");
	        return "sq/frontend/frontend_login";
	    }
	}

//======================================================	
//======================================================
	//-----會員登出-----
	//邏輯：
	@GetMapping("/logout")
	public String logout(HttpSession session) {
		session.invalidate(); // session 過期失效
		return "redirect:/mvc/sq/frontend/frontend_login";
	}
	
//======================================================
//======================================================
	//-----會員姓名修改-----
	//邏輯：
	@PostMapping("/editUserName")
	public String editUserName(@RequestParam("Oldusername") String oldusername,
	                           @RequestParam("Newusername") String newusername,
	                           @RequestParam("useremail") String email,
	                           @ModelAttribute User user,
	                           HttpSession session, Model model) throws Exception {
		// 檢查有無登入
	    User user1 = (User) session.getAttribute("user");
	    if (user1 == null) {
	        // 重新導向到登入頁面或其他處理方式
	    	model.addAttribute("loginMessage", "欲修改姓名請先登入");
	        return "sq/frontend/frontend_login";
	    }
	    // 根據 useremail 查找 user 物件
	    Optional<User> userOpt = sqUserDao.findUserByEmail(email);

	    // 如果 確認有該使用者 則 比對姓名 否則 回傳"查無此信箱"
	    if (userOpt.isPresent()) {
	        User existingUser = userOpt.get();
	        // 如果 使用者名稱重複 則 重導
	        if(existingUser.getUsername().equals(newusername)) {
	            model.addAttribute("loginMessage", "使用者名稱重複");
	            return "sq/frontend/frontend_editUserName";
	        }
	        // 如果 確認有該使用者 則 比對姓名
	        if (existingUser.getUsername().equals(oldusername)) {
	            existingUser.setUsername(newusername);
	            sqUserDao.updateUserName(existingUser.getUserId(), newusername);
	        }
	        else {
	            model.addAttribute("loginMessage", "查無此使用者名稱");
	            return "sq/frontend/frontend_editUserName";
	        }

	        return "sq/frontend/frontend_index";
	        } 
	    model.addAttribute("loginMessage", "查無此信箱");
	    return "sq/frontend/frontend_editUserName";
	}

//======================================================
//======================================================
	//-----會員電話修改-----
	@PostMapping("/editUserTel")
	public String editUserTel(@RequestParam("useremail") String email,
		                      @RequestParam("Oldusertel") String oldphoneNumber,
		                      @RequestParam("Newusertel") String newphoneNumber,
		                      @ModelAttribute User user,
	                          HttpSession session, Model model) throws Exception {
			
			// 檢查有無登入
			User user1 = (User) session.getAttribute("user");
			if (user1 == null) {
			// 重新導向到登入頁面或其他處理方式
			model.addAttribute("loginMessage", "欲修改姓名請先登入");
			return "sq/frontend/frontend_login";
			}
			
	     	//根據 useremail 查找 user 物件		   
			Optional<User> userOpt = sqUserDao.findUserByEmail(email);
			//如果 確認有該使用者 則 比對姓名 否則 回傳"查無此信箱"
		    if (userOpt.isPresent()) {
		        User existingUser = userOpt.get();
		        // 如果 使用者電話重複 則 重導
		        if(existingUser.getPhoneNumber().equals(newphoneNumber)) {
		            model.addAttribute("loginMessage", "使用者電話重複");
		            return "sq/frontend/frontend_editUserTel";
		        }
		        // 如果 確認有該使用者 則 比對號碼
		        if (existingUser.getPhoneNumber().equals(oldphoneNumber)) {
		            existingUser.setPhoneNumber(newphoneNumber);
		            sqUserDao.updateUserNumber(existingUser.getUserId(), newphoneNumber);
		        } else {

		            model.addAttribute("loginMessage", "查無使用者電話號碼");
		            return "sq/frontend/frontend_editUserTel";
		        }
		        return "sq/frontend/frontend_index";
		    }	
		    
		    model.addAttribute("loginMessage", "查無此信箱");
		    return "sq/frontend/frontend_editUserTel";
	}	

	
//=====================================================
//=====================================================
	//-----聯絡我們-----
	//。新增 contact 物件
	//。注入資料至 contact 物件 並 回傳至資料庫
	//。return 至 確認送出表單的jsp
	@PostMapping("/contact")
	public String contact(@RequestParam("name") String name,
						  @RequestParam("emailOrTel") String emailOrTel,
	                      @RequestParam("title") String title,
	                      @RequestParam("text") String text,
	                      HttpSession session, Model model) throws Exception {
		Contact contact = new Contact();
		
		contact.setCustomerName(name);
		contact.setCustomerEmail(emailOrTel);
		contact.setContactTitle(title);
		contact.setContactContext(text);
		
		sqContactDao.addContact(contact);
		
		model.addAttribute("successMessage", "感謝您的聯絡<hr>我們會盡快與您聯繫");
		
		return "sq/frontend/frontend_checkPage";
		
		}
	
	
//=====================================================
	

	
}	

