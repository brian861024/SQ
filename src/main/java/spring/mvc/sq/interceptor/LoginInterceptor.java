package spring.mvc.sq.interceptor;

import java.net.URLEncoder;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import spring.mvc.sq.model.entity.User;

public class LoginInterceptor implements HandlerInterceptor{

//===============================================================================================================
//===============================================================================================================
//-----登入權限管理-----
@Override
public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
        throws Exception {
    
    System.out.println("RequestURI = " + request.getRequestURI());
    
    boolean isValid = false;
    String url = request.getRequestURI().toString();
    HttpSession session = request.getSession();
    // 檢查 session 中是否有 user 的物件資料(意味著用戶已經登入)
    if(session.getAttribute("user") != null) {
        User user = (User) session.getAttribute("user");
        int levelId = user.getLevelId();
        isValid = true;
        if(url.contains("backend") && levelId == 1 ) {
        	isValid = false;
        }
    }
    
    if(isValid) {
    	return true;
    }
    // 未登入, 導入到登入頁面
    String loginPath;
    if (url.contains("staff")) {
    	loginPath = "/mvc/sq/backend/login";
    } else { loginPath = "/mvc/sq/login";}
    response.sendRedirect(request.getServletContext().getContextPath() + loginPath + "?loginMessage=" + URLEncoder.encode("請先登入"));
    return false;
}
//===============================================================================================================
//===============================================================================================================
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