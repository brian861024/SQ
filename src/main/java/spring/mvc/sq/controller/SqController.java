package spring.mvc.sq.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestParam;

import spring.mvc.sq.model.entity.Product;


@Controller
@RequestMapping("/sq")
public class SqController {
	
//================== 進入各種前台頁面 ==================
	
	//進入首頁(前台商品頁面)
	@RequestMapping("/index")
	public String goToIndex() {
		return "sq/frontend/frontend_index";
	}
		
	//進入登入頁面
		@RequestMapping("/login")
		public String goToLogin() {
			return "sq/frontend/frontend_login";	
		}
		
	//進入註冊頁面
		@RequestMapping("/register")
		public String goToRegister() {
			return "sq/frontend/frontend_register";	
		}
	
	//進入購物車頁面
		@RequestMapping("/cart")
		public String goToCart() {
			return "sq/frontend/frontend_cart";	
		}

	//進入購物車頁面
		@RequestMapping("/order")
		public String goToOrder() {
			return "sq/frontend/frontend_order";	
		}
		
	//進入最愛商品頁面
		@RequestMapping("/favoriteProd")
		public String goToFavoriteProd() {
			return "sq/frontend/frontend_favoriteProd";	
		}

	//進入修改會員資料頁面
		@RequestMapping("/editUserInfo")
		public String goToEditUserInfo() {
			return "sq/frontend/frontend_editUserInfo";	
		}
		
	//進入修改會員資料頁面
		@RequestMapping("/findpassword")
		public String goToFindpassword() {
			return "sq/frontend/frontend_findpassword";	
		}

	//進入聯絡我們頁面
		@RequestMapping("/contact")
		public String goToContact() {
			return "sq/frontend/frontend_contact";	
		}
		
	//進入威士忌介紹頁面
		@RequestMapping("/whiskey")
		public String goToWhiskey() {
			return "sq/frontend/LiquorLibrary/whiskey";	
		}
		
	//進入琴酒介紹頁面
		@RequestMapping("/gin")
		public String goToGin() {
			return "sq/frontend/LiquorLibrary/gin";	
		}

	//進入朗姆酒介紹頁面
		@RequestMapping("/rum")
		public String goToRum() {
			return "sq/frontend/LiquorLibrary/rum";	
		}
		
	//進入龍舌蘭酒頁面
		@RequestMapping("/tequila")
		public String goToTequila() {
			return "sq/frontend/LiquorLibrary/tequila";	
		}
		
	//進入伏特加介紹頁面
		@RequestMapping("/vodka")
		public String goToVodka() {
			return "sq/frontend/LiquorLibrary/vodka";	
		}

	//進入利口酒介紹頁面
		@RequestMapping("/liqueur")
		public String goToLiqueur() {
			return "sq/frontend/LiquorLibrary/liqueur";	
		}
		
	//進入基酒介紹頁面
		@RequestMapping("/liquor")
		public String goToLiquor() {
			return "sq/frontend/LiquorLibrary/liquor";	
		}

//================== 進入各種頁面 ==================
		
	//進入後台首頁
		@GetMapping("/backend/main")
		public String backendMain(@ModelAttribute Product product, Model model) {
			return "/sq/backend/backend_index";
		}
}
