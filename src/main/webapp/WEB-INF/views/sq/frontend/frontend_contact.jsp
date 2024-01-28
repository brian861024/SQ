<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ include file="/WEB-INF/views/sq/fragements/header.jspf" %>

<link rel="stylesheet" href=<c:url value="/resources/css/frontend_Login.css" /> />
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
          contact
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
                    <!-- 右邊登入表單 -->
                    <div class="right-login-area">
                        <div class="login-area-title">
                            <div class="login-area-title-color-bar"> </div>
                            <h2 style="margin: 0;"> 聯絡我們 </h2>
                        </div >
                        <div class="contect-form-area">
                        
 <!-- ==================================================================================================== -->                        
 <!-- ==================================================================================================== -->                       
                            <form class="pure-form" method="post" action="/SpiritQuest/mvc/user/contact">
                                <fieldset>
                                    <input name="name" type="text" class="pure-input-1-2" style="margin-top: 10px;height: 50px;" placeholder="稱呼" />
                                    <input name="emailOrTel" class="pure-input-1-2" style="margin-top: 10px;height: 50px;" placeholder="聯絡電話/信箱" />
                                    <input name="title" type="text" class="pure-input-1-2" style="margin:10px 0;height: 50px;" placeholder="主旨" />
                                    <textarea name="text" class="pure-input-1-2" style="height: 400px;" placeholder="文字輸入區"></textarea>
                                </fieldset>
                                <hr class="dropdown-divider">
                                <button type="submit" class="pure-button">送出</button>
                            </form>
<!-- ==================================================================================================== -->                             
<!-- ==================================================================================================== -->                             
                        </div>
                    </div>
                </div>
            </div>
    </div>
    </div>

<%@ include file="/WEB-INF/views/sq/fragements/footer.jspf" %>