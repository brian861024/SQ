<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ include file="/WEB-INF/views/sq/fragements/backend_header.jspf" %>

<link rel="stylesheet" href=<c:url value="/resources/css/frontend_Login.css" /> />
<style>
body {
    background-image: url(<c:url value="/resources/img/bg/bg.jpg"/>);
    background-repeat: no-repeat;
    background-attachment: fixed;
    background-position: top;
    background-size: cover;
}

a.pure-button:hover {
    color: black;
}
</style>

<body>
 
    <!--======================================
          login
    ==========================================-->

    <div class="Event_Section">
        <section>
            <div class="container">
                
                <!-- 下方區域 -->

                <div class="main-area" style="display: flex;">
<!-- ==================================================================================================== -->                
                    <!-- 左方導覽列 -->
                    <%@ include file="/WEB-INF/views/sq/fragements/backend_leftbar.jspf" %>
<!-- ==================================================================================================== -->   


                    <!-- 右邊登入表單 -->
                    <div class="right-login-area">
                        <div class="login-area-title">
                            <div class="login-area-title-color-bar"> </div>
                            <h2 style="margin: 0;"> 管理員登入 </h2>
                        </div >
                        <div class="login-register-form-area">
                            <div class="login-form-area">
<!-- ==================================================================================================== -->                               
                         
                                <form class="pure-form pure-form-stacked" id="loginForm" method="post" action="/SpiritQuest/mvc/sq/staff/login" >
                                    <fieldset>
                                        <label for="stacked-email" style="color: rgb(255, 255, 255);">Email</label>
                                        <input type="email" id="stacked-email" placeholder="Email"
                                            class="pure-input-1" name="useremail" />
                                        <span class="pure-form-message">This is a required field.</span>
                                        <label for="stacked-password" style="color: rgb(255, 255, 255);">密碼</label>
                                        <input type="password" id="stacked-password" placeholder="Password"
                                            class="pure-input-1" name="password" />
                                        <hr>
                                        <hr>
                                        <label for="stacked-name" style="color: red;">${loginMessage}</label>
										<hr>
										<div>
										</div>
										<div>
                                        <button type="submit" class="pure-button">Login</button>                                    
                                  		</div>
                                  		<a type="submit" class="pure-button"
										href="/SpiritQuest/mvc/sq/login">返回前台登入</a>
                                    </fieldset>
                                </form>
                                
 <!-- ==================================================================================================== -->                                  
                            </div>
                            <div class="register-form-area">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
    </div>
    </div>

<%@ include file="/WEB-INF/views/sq/fragements/footer.jspf" %>