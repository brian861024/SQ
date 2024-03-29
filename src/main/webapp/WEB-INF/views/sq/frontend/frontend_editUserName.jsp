<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ include file="/WEB-INF/views/sq/fragements/header.jspf" %>

<link rel="stylesheet"href=<c:url value="/resources/css/frontend_editUserInfo.css" /> />
<style>
body {
    background-image: url(<c:url value="/resources/img/bg/bg.jpg"/>);
    background-repeat: no-repeat;
    background-attachment: fixed;
    background-position: top;
    background-size: cover;
}
</style>

<body>


    <!--======================================
          EditUserName
    ==========================================-->

    <div class="Event_Section">
        <section>
            <div class="container">
                <!-- 上方搜索列 -->
                <div class="search">
                    <select class="category">
                        <option value="0" class="select1">請選擇分類</option>
                        <option>威士忌</option>
                        <option>清酒</option>
                        <option>果實酒</option>
                        <option>葡萄酒</option>
                        <option>調酒</option>
                        <option>酒器</option>
                    </select>
                    <select class="category">
                        <option value="0" class="select1">請選擇價格</option>
                        <option>&nbsp&nbsp&nbsp0&nbsp&nbsp&nbsp ~ 1000</option>
                        <option>1000 ~ 2000</option>
                        <option>2000 ~ 3000</option>
                        <option>3000 ~ 4000</option>
                        <option>4000 ~ 5000</option>
                        <option>5000 以上</option>
                    </select>
                    <form class="d-flex" style="width: 50%;margin: 10px">
                        <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
                        <button class="btn btn-outline-light" type="submit">Search</button>
                    </form>
                </div>

                <!-- 下方區域 -->

                <div class="main-area" style="display: flex;">
<!-- ==================================================================================================== -->                
                     <!-- 左邊會員管理表單 -->
                    <%@ include file="/WEB-INF/views/sq/fragements/leftmember.jspf" %>
<!-- ==================================================================================================== --> 
                    <!-- 右邊會員資料修改表單 -->
                    <div class="right-login-area">
                        <div class="login-area-title">
                            <div class="login-area-title-color-bar"> </div>
                            <h2 style="margin: 0;"> 會員資料修改 </h2>
                        </div >
                        <div class="login-register-form-area">
                            <div class="login-form-area">
 <!-- ==================================================================================================== -->                            
 <!-- ==================================================================================================== --> 
 
                            	<!-- 資料提交表單 -->
                                <form class="pure-form pure-form-stacked" method="POST" action="/SpiritQuest/mvc/user/editUserName">
                                    <fieldset>
                                        <label for="stacked-email" style="color: rgb(255, 255, 255);">Email(登入帳號)</label>
                                        
                                        <input type="email" id="stacked-email" placeholder="Email"
                                            class="pure-input-1" name="useremail" />
                                            
                                        <hr style="border: none;height: 20px;background-color: rgba(255, 255, 255, 0);">

                                        
                                        <label for="stacked-name" style="color: rgb(255, 255, 255);">舊姓名</label>
                                        
                                        <input id="stacked-name" placeholder="Name"
                                            class="pure-input-1" name="Oldusername" />
                                            
                                        <label for="stacked-name" style="color: rgb(255, 255, 255);">修改後姓名</label>
                                        
                                        <input id="stacked-name" placeholder="Name"
                                            class="pure-input-1" name="Newusername" />
                                     
                                        <hr style="border: none;height: 50px;background-color: rgba(255, 255, 255, 0);">
                                        
                                        <label for="stacked-name" style="color: red;">${ loginMessage }</label>
                                        
                                        <button type="submit" class="pure-button" >提交</button>                                    
                                        <a href="/SpiritQuest/mvc/sq/findpassword" style="text-decoration: none;"><h5 class="forget-password-label">忘記密碼?</h5></a>
                                    </fieldset>
                                </form>
                                
<!-- ==================================================================================================== --> 
<!-- ==================================================================================================== --> 

                            </div>

                           		<div class="register-form-area">
                                <div class="forget-password" style="color: rgba(253, 253, 253, 0.788);">
                                    忘記密碼?<a type="submit" class="pure-button" style="margin: 20px;">點此</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
    </div>
    </div>

<%@ include file="/WEB-INF/views/sq/fragements/footer.jspf" %>