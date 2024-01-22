import java.util.List;
import java.util.Optional;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import spring.mvc.sq.model.dao.SqCartDaoMySQL;
import spring.mvc.sq.model.dao.SqCartItemDaoMySQL;
import spring.mvc.sq.model.dao.SqContactDaoMySQL;
import spring.mvc.sq.model.dao.SqProductDaoMySQL;
import spring.mvc.sq.model.dao.SqUserDaoMySQL;
import spring.mvc.sq.model.entity.Cart;
import spring.mvc.sq.model.entity.User;

public class DaoTest {

	public static void main(String[] args) {
		
		ApplicationContext ctx = new ClassPathXmlApplicationContext("/WEB-INF/springmvc-servlet.xml");
				
		SqUserDaoMySQL sqUserDao = ctx.getBean("sqUserDaoMySQL", SqUserDaoMySQL.class);
		SqCartDaoMySQL sqCartDao = ctx.getBean("sqCartDaoMySQL", SqCartDaoMySQL.class);
		SqCartItemDaoMySQL sqCartItemDao = ctx.getBean("sqCartItemDaoMySQL", SqCartItemDaoMySQL.class);
		SqContactDaoMySQL sqContactDao = ctx.getBean("sqContactDaoMySQL", SqContactDaoMySQL.class);
		SqProductDaoMySQL sqProductDao = ctx.getBean("sqProductDaoMySQL", SqProductDaoMySQL.class);
		//List<User> users = sqUserDao.findAllUsers();
		//System.out.println(users);
		
		//Optional<User> userOpt = sqUserDao.findUserById(1);
		//if(userOpt.isPresent()) {
		//	System.out.println(userOpt.get());
		//} else {
		//	System.out.println("無此User");
		//}
		
//		List<Cart> carts = sqCartDao.findAllCart();
//		System.out.println(carts);
		
		User user1 = new User();
		user1.setUsername("brian");
		sqUserDao.addUser(user1);
		
		
	}
}
