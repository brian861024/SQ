package spring.mvc.sq.interceptor;

import java.net.URLEncoder;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

public class LoginInterceptor implements HandlerInterceptor{

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		
		System.out.println("RequestURI = " + request.getRequestURI());
		
		HttpSession session = request.getSession();
		// 檢查 session 中是否有 user 的物件資料(意味著用戶已經登入)
		if(session.getAttribute("user") != null) {
			return true;
		}
		// 未登入, 導入到登入頁面
		response.sendRedirect(request.getServletContext().getContextPath() + "/mvc/sq/login?loginMessage=" + URLEncoder.encode("請先登入"));
		return false;
	}

	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex)
			throws Exception {
		
		
	}

}