<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ include file="/WEB-INF/views/sq/fragements/header.jspf" %>

<link rel="stylesheet" href=<c:url value="/resources/css/frontend_FavoriteProd.css" /> />
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
          favoriteProd
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
                                        <!-- 左方導覽列 -->
                    <div class="left-prod-class-area">
                        <p class="w3-padding-large" style="margin: 10px;margin-top: 20px;">
                        <h5>會員管理</h5>
                        </p>

                        <hr class="dropdown-divider">
                        
                        <!-- 導覽列按鈕 購物車 -->
                        <a class="prod-class-link" href="/SpiritQuest/mvc/sq/cart">購物車</a>

                        <hr class="dropdown-divider">
                        
                        <!-- 導覽列按鈕 歷史訂單 -->
                        <a class="prod-class-link" href="/SpiritQuest/mvc/sq/order">訂單查詢</a>

                        <hr class="dropdown-divider">
                        
                        <!-- 導覽列按鈕 收藏商品 -->
                        <a class="prod-class-link" href="/SpiritQuest/mvc/sq/favoriteProd">收藏商品</a>

                        <hr class="dropdown-divider">
                      
                        <!-- 導覽列按鈕 修改會員資料 -->
                        <a class="nav-link dropdown-toggle" href="" id="navbarDropdown" role="button"
                            data-bs-toggle="dropdown" aria-expanded="false">
                            修改會員資料<img src=<c:url value="/resources/img/icon/list.svg"/> alt="">
                        </a>
                        <ul class="dropdown-menu left-prod-class-dropdown-menu" aria-labelledby="navbarDropdown">
                            <li><a class="dropdown-item" href="/SpiritQuest/mvc/sq/editUserName">修改會員姓名</a></li>
                            <li><a class="dropdown-item" href="/SpiritQuest/mvc/sq/editUserTel">修改會員電話</a></li>
                            <hr class="dropdown-divider">
                            <li><a class="dropdown-item" href="/SpiritQuest/mvc/sq/findpassword">查詢密碼</a></li>

                        </ul>

                        <hr class="dropdown-divider">
                        
                        <!-- 導覽列按鈕 當前會員優惠
                        <a class="prod-class-link" href="#" >當前會員優惠</a>
             
                        <hr class="dropdown-divider"> -->
                        
                        <!-- 導覽列按鈕 聯絡客服 -->
                        <a class="prod-class-link" href="/SpiritQuest/mvc/sq/contact">聯絡客服</a>

                        <hr class="dropdown-divider">
                    </div>
<!-- ==================================================================================================== --> 
                    <!-- 右邊購物車區域 -->
                    <div class="right-cart-area">
                        <div class="cart-area-title">
                            <div class="cart-area-title-color-bar"> </div>
                            <h2 style="margin: 0;"> 收藏商品 </h2>
                        </div>
                        <div class="cart-item-area">

                            <div class="card prod-card">
                                <div>
                                    <img class="prod-card-img" src="../img/cocktail/gintonic.webp" alt="">
                                </div>
                                <div class="card-body">
                                    <h5 class="card-title">Gin Tonic</h5>
                                    <hr class="dropdown-divider">
                                    <p class="card-text">琴通寧是很受歡迎的調酒，做法也相當簡單，將琴酒混合通寧水（氣泡水）再加入檸檬片就完成。喝起來像是檸檬汽水，帶有些微苦味。
                                    </p>
                                    <div class="heart-area">酒精濃度：<img src="./icon/heart.svg" alt="" class="heart"></div>
                                    <hr class="dropdown-divider">
                                    <div style="display: flex;justify-content: end;">
                                        <button type="submit" class="pure-button">移除</button>
                                    </div>
                                </div>
                            </div>

                            <div style="display: flex;justify-content: flex-end;">
                                <button type="submit" class="pure-button" style="margin-right: 100px;">清空收藏商品 </button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
    </div>
    </div>

<%@ include file="/WEB-INF/views/sq/fragements/footer.jspf" %>