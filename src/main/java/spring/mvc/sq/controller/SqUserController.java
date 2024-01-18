package spring.mvc.sq.controller;

import java.util.Enumeration;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import spring.mvc.sq.model.dao.SqCartDao;
import spring.mvc.sq.model.dao.SqCartItemDao;
import spring.mvc.sq.model.dao.SqContactDao;
import spring.mvc.sq.model.dao.SqProductDao;
import spring.mvc.sq.model.dao.SqUserDao;

@Controller
@RequestMapping("/sq/user")
public class SqUserController {
	
	@Autowired
	private SqUserDao Userdao;
	@Autowired
	private SqProductDao Productdao;
	@Autowired
	private SqContactDao ContactDao;
	@Autowired
	private SqCartDao CartDao;
	@Autowired
	private SqCartItemDao CartItemDao;
	
	@GetMapping("/Register")
	public String UserRegister() {
		
	}
	
}
