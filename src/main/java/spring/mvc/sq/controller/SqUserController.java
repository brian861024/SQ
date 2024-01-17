package spring.mvc.sq.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import mvc.dao.spform.UserDao;



@Controller
@RequestMapping("/sq/user")
public class SqUserController {
	
	@Autowired
	private UserDao userdao;
	
	
}
