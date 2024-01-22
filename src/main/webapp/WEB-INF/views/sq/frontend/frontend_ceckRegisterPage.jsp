<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
    <!-- Head 區域 -->
    <meta name="viewport"
        content="width=device-width, user-scalable=yes, initial-scale=1.0, maximum-scale=3.0, minimum-scale=1.0">
    <meta charset="UTF-8">
    <link rel="icon" href=<c:url value="/resources/img/icon/logo.png"/> type="image/x-icon" />
    <link rel="shortcut icon" href="" type="image/x-icon" />
    <title>SpiritQuest</title>
    <!-- jQuery載入 -->
    <script src="js/jquery-3.4.1.min.js"></script>
    <!-- w3.css載入 -->
    <link rel="stylesheet" href="css/w3.css">
    <!-- Bootstrap載入 -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-F3w7mX95PdgyTmZZMECAngseQB83DfGTowi0iMjiWaeVhAn4FJkqJByhZMI3AhiU" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.1/dist/umd/popper.min.js"
        integrity="sha384-W8fXfP3gkOKtndU4JGtKDvXbO53Wy8SZCQHczT5FMiiqmQfUpWbYdTil/SxwZgAN"
        crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/js/bootstrap.min.js"
        integrity="sha384-skAcpIdS7UcVUC05LJ9Dxay8AXcDYfBJqt1CJ85S/CFujBsIzCIv+l9liuYLaMQ/"
        crossorigin="anonymous"></script>
    <!-- 這是所有頁面需要的版型樣式, 所以在此head區載入 -->
    <link rel="stylesheet" href=https://cdn.jsdelivr.net/npm/purecss@3.0.0/build/pure-min.css>
    <link rel="stylesheet" href="../include/css/frontend_Login.css">
</head>

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
          Header
    ==========================================-->
    <header>
        <!-- Header左側logo圖片 -->
        <div class="logo">
            <a href="/SpiritQuest/mvc/sq/index"><img src=<c:url value="/resources/img/icon/logo.png"/> alt="" class="logoimg"></a>
        </div>
        <!-- Header右側按鍵 -->
        <nav class="navbar navbar-expand-lg navbar-light bg-opacity fs-5">
            <div class="container-fluid">
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                    data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
                    aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                        <li class="nav-item" style="margin-right: 10px;">
                            <a class="nav-link active" aria-current="page"
                                href="/SpiritQuest/mvc/sq/index">SpiritQuest</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" aria-current="page" href="/SpiritQuest/mvc/sq/cart">購物車</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" aria-current="page" href="/SpiritQuest/mvc/sq/order">訂單查詢</a>
                        </li>
                        <li class="nav-item dropdown ">
                            <a class="nav-link dropdown-toggle" href="/SpiritQuest/mvc/sq/liquor" id="navbarDropdown" role="button"
                                data-bs-toggle="dropdown" aria-expanded="false">
                                酒類圖書館<img src=<c:url value="/icon/list.svg"/> alt="">
                            </a>
                            <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                            	
                            	<li><a class="dropdown-item" href="/SpiritQuest/mvc/sq/liquor">總類</a></li>
                            	<hr class="dropdown-divider">
                            	
                                <li><a class="dropdown-item" href="/SpiritQuest/mvc/sq/whiskey">Whiskey</a></li>
                                <li><a class="dropdown-item" href="/SpiritQuest/mvc/sq/rum">Rum</a></li>
                                <li><a class="dropdown-item" href="/SpiritQuest/mvc/sq/gin">Gin</a></li>
                                <li><a class="dropdown-item" href="/SpiritQuest/mvc/sq/tequila">Tequila</a></li>
                                <li><a class="dropdown-item" href="/SpiritQuest/mvc/sq/vodka">Vodka</a></li>
                                <li><a class="dropdown-item" href="/SpiritQuest/mvc/sq/liqueur">Liqueur</a></li>

                            </ul>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="/SpiritQuest/mvc/sq/login">login</a>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>
    </header>

    <!--======================================
          login
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
                            <li><a class="dropdown-item" href="/SpiritQuest/mvc/sq/editUserInfo">修改基本資料</a></li>
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

                    <!-- 右邊登入表單 -->
                    <div class="right-login-area">
                        <div class="login-area-title">
                            <div class="login-area-title-color-bar"> </div>
                            <h2 style="margin: 0;"> 會員資料確認 </h2>
                        </div >
                        <div class="login-register-form-area">
                            <div class="login-form-area">
                                <form class="pure-form pure-form-stacked">
                                    <fieldset>  
                                        <label for="stacked-email" style="color: rgb(255, 255, 255);">Email：aaa@gmail.com</label>

                                        <label for="stacked-password" style="color: rgb(255, 255, 255);">密碼：</label>

                                        <label for="stacked-password" style="color: rgb(255, 255, 255);">地址：台北市信義區忠孝東路3段111號2樓</label>

                                        <label for="stacked-password" style="color: rgb(255, 255, 255);">生日：1997/1/1</label>
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

    <!--======================================
          Footer
    ==========================================-->
    <div class="footer">
        <a href="https://reurl.cc/Ny4OOn" target="_blank" class="footer"><img src=<c:url value="/resources/img/icon/warning.png"/> alt=""
                class="footer-banner"></a>
    </div>
    <footer>
        <div class="footer-icon-area">
            <div class="footer-icon-block">
                <a href="" target="_blank"><img src=<c:url value="/resources/img/icon/telephone.svg"/> alt=""
                        class="footer-icon"></a>
            </div>
            <div class="footer-icon-block">
                <a href="" target="_blank"><img src=<c:url value="/resources/img/icon/line.svg"/> alt=""
                        class="footer-icon">
                </a>
            </div>
            <div class="footer-icon-block">
                <a href="" target="_blank"><img src=<c:url value="/resources/img/icon/facebook.svg"/> alt=""
                        class="footer-icon"></a>
            </div>
            <div class="footer-icon-block">
                <a href="" target="_blank"><img src=<c:url value="/resources/img/icon/instagram.svg"/> alt=""
                        class="footer-icon"></a>
            </div>
        </div>
        <div class="footer-text" style="text-align: end;">
            <h3 style="margin: 0 4rem;color: #a0a0a09d;">@ 2023 </h3>
        </div>

    </footer>


</body>

</html>