<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ include file="/WEB-INF/views/sq/fragements/header.jspf" %>

<link rel="stylesheet" href="../include/css/frontend_Login.css">
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
          checkOrderPage
    ==========================================-->

    <div class="Event_Section">
        <div>
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

                    <!-- 右邊訂單確認表單 -->
                    <div class="right-login-area">
                        <div class="login-area-title">
                            <div class="login-area-title-color-bar"> </div>
                            <h2 style="margin: 0;"> 訂單確認 </h2>
                        </div >
                        <div class="login-register-form-area">
                            <div class="login-form-area">
                                <form class="pure-form pure-form-stacked">
                                    <fieldset>  
                                        <label for="stacked-email" style="color: rgb(255, 255, 255);">訂購人姓名：</label>
                                        <input type="text" id="Prod-price" placeholder="商品價格"class="pure-input-1-3" name=""/>

                                        <label for="stacked-password" style="color: rgb(255, 255, 255);">寄送地址：</label>
                                        <input type="text" id="Prod-price" placeholder="商品價格"class="pure-input-1-3" name=""/>

                                        <label for="stacked-password" style="color: rgb(255, 255, 255);">付款方式：</label>
                                        <select>
                                        <option value="0" class="select1">請選擇付款方式</option>
                                        <option>轉帳</option>
                                        <option>付現</option>
                                        </select>

                                        <label for="stacked-password" style="color: rgb(255, 255, 255);">寄送方式：</label>
                                        <select>
                                        <option value="0" class="select1">請選擇取貨方式</option>
                                        <option>郵寄</option>
                                        <option>自取</option>
                                        </select>
                                        
                                        <hr>
                                        <hr>
                                        <button type="submit" class="pure-button">確認</button>   
                                        <button type="submit" class="pure-button">返回修改</button>                                  
                                    </fieldset>
                                </form>
                            </div>

                        </div>
                    </div>
                </div>
            </div>
    </div>
    </div>

<%@ include file="/WEB-INF/views/sq/fragements/footer.jspf" %>