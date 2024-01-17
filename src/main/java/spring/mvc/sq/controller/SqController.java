package spring.mvc.sq.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;


@Controller
@RequestMapping("/sq")
public class SqController {
	
	// 導到首頁
	@GetMapping("/index")
	public String getMethodName(@RequestParam String param) {
		return "redirect:/sq/frontend/frontend_index";
	}
	
	
	
}
