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
    <link rel="stylesheet" href="../include/css/frontend_Prod.css">
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
          Cart
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

                <div class="main-area" style="display: flex;">
                    <!-- 左方導覽列 -->
                    <div class="left-prod-class-area">
                    
                    <!-- 公告消息 -->
                    <p class="w3-padding-large" style="margin: 10px;margin-top: 20px;">
                        <h5>公告消息</h5>
                        </p>
    
                        <hr class="dropdown-divider">
                        <!-- 公告 -->
                        <a class="prod-class-link" href="#">《主題酒單》醉暖聖誕節🎄微醺的季節 又來囉❗️</a>
    
                        <hr class="dropdown-divider">
                        <!-- 公告 -->
    
                        <a class="prod-class-link" href="#"> 《好朋友專區》我來惹~ 好朋友幫您把包裹變免運！</a>
    
                        <hr class="dropdown-divider">
                        <!-- 商品分類 -->
                        <p class="w3-padding-large" style="margin: 10px;margin-top: 20px;">
                        <h5>商品分類</h5>
                        </p>

                        <hr class="dropdown-divider">
                        <!-- 導覽列按鈕 威士忌 -->

                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button"
                            data-bs-toggle="dropdown" aria-expanded="false">
                            威士忌<img src="./icon/list.svg" alt="">
                        </a>
                        <ul class="dropdown-menu left-prod-class-dropdown-menu" aria-labelledby="navbarDropdown">
                            <li><a class="dropdown-item" href="">蘇格蘭威士忌</a></li>
                            <li><a class="dropdown-item" href="">日本威士忌</a></li>
                            <li><a class="dropdown-item" href="">台灣威士忌</a></li>
                            <hr class="dropdown-divider">
                            <li><a class="dropdown-item" href="#">雪莉桶</a></li>
                            <li><a class="dropdown-item" href="#">波本桶</a></li>
                            <hr class="dropdown-divider">
                            <li><a class="dropdown-item" href="#">泥煤</a></li>
                            <li><a class="dropdown-item" href="#">煙燻</a></li>
                        </ul>

                        <hr class="dropdown-divider">
                        <!-- 導覽列按鈕 清酒 -->


                        <a class="prod-class-link" href="#">清酒</a>


                        <hr class="dropdown-divider">
                        <!-- 導覽列按鈕 果實酒 -->

                        <a class="prod-class-link" href="#">果實酒</a>

                        <hr class="dropdown-divider">
                        <!-- 導覽列按鈕 葡萄酒 -->

                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button"
                            data-bs-toggle="dropdown" aria-expanded="false">
                            葡萄酒<img src="./icon/list.svg" alt="">
                        </a>
                        <ul class="dropdown-menu left-prod-class-dropdown-menu" aria-labelledby="navbarDropdown">
                            <li><a class="dropdown-item" href="">Whiskey</a></li>
                            <li><a class="dropdown-item" href="">Rum</a></li>
                            <li><a class="dropdown-item" href="">Gin</a></li>
                            <li><a class="dropdown-item" href="">Tequila</a></li>
                            <li><a class="dropdown-item" href="">Vodka</a></li>
                            <li><a class="dropdown-item" href="">Liqueur</a></li>
                            <hr class="dropdown-divider">
                            <li><a class="dropdown-item" href="#">Cocktail</a></li>
                            <li><a class="dropdown-item" href="#">Plum Wine</a></li>
                        </ul>

                        <hr class="dropdown-divider">
                        <!-- 導覽列按鈕 調酒 -->

                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button"
                            data-bs-toggle="dropdown" aria-expanded="false">
                            調酒<img src="./icon/list.svg" alt="">
                        </a>
                        <ul class="dropdown-menu left-prod-class-dropdown-menu" aria-labelledby="navbarDropdown">
                            <li><a class="dropdown-item" href="">Whiskey</a></li>
                            <li><a class="dropdown-item" href="">Rum</a></li>
                            <li><a class="dropdown-item" href="">Gin</a></li>
                            <li><a class="dropdown-item" href="">Tequila</a></li>
                            <li><a class="dropdown-item" href="">Vodka</a></li>
                            <li><a class="dropdown-item" href="">Liqueur</a></li>
                            <hr class="dropdown-divider">
                            <li><a class="dropdown-item" href="#">Cocktail</a></li>
                            <li><a class="dropdown-item" href="#">Plum Wine</a></li>
                        </ul>

                        <hr class="dropdown-divider">
                        <!-- 導覽列按鈕 酒器 -->

                        <a class="prod-class-link" href="#">酒器</a>

                        <hr class="dropdown-divider">
                    </div>

                    <!-- 右邊商品名稱區域 -->
                    <div class="right-prod-area">
                        <div class="prod-area-title">
                            <div class="prod-area-title-color-bar"> </div>
                            <h2 style="margin: 0;"> 商品名稱 </h2>
                        </div>
                        <!-- 商品 -->
                        <div class="prod-item-area">
                            <div class="card prod-card">
                                <!-- 商品名稱區域的商品圖片部分 -->
                                <div>
                                    <div class="prod-card-img-area"><img class="prod-card-img"
                                            src="../img/cocktail/gintonic.webp" alt=""></div>
                                    <div class="prod-card-little-img-area">
                                        <div class="prod-card-little-img-item"><img class="prod-card-little-img"
                                                src="../img/cocktail/gintonic.webp" alt=""></div>
                                        <div class="prod-card-little-img-item"><img class="prod-card-little-img"
                                                src="../img/cocktail/gintonic.webp" alt=""></div>
                                        <div class="prod-card-little-img-item"><img class="prod-card-little-img"
                                                src="../img/cocktail/gintonic.webp" alt=""></div>
                                        <div class="prod-card-little-img-item"><img class="prod-card-little-img"
                                                src="../img/cocktail/gintonic.webp" alt=""></div>

                                    </div>
                                </div>
                                <div class="card-body">
                                    <h2 class="card-title">Gin Tonic</h2>
                                    <hr class="dropdown-divider">
                                    <p />
                                    <div style="margin:15px ;">
                                        <p class="card-text">
                                        <h3>$100</h3>
                                        </p>
                                        <p class="card-text">酒精濃度(%)：40%
                                        </p>
                                        <p class="card-text">容量： 700ml
                                        </p>
                                        <p class="card-text">
                                            琴通寧是很受歡迎的調酒，做法也相當簡單，將琴酒混合通寧水（氣泡水）再加入檸檬片就完成。喝起來像是檸檬汽水，帶有些微苦味。
                                        </p>
                                    </div>
                                    <p />
                                    <hr class="dropdown-divider">
                                    <p />
                                    <div>
                                        <p style="margin: 5px 10px;">數量：<input type="number"
                                                style="width: 50px;margin:0 10px;" id="quantity" name="quantity"
                                                value="1"></p>
                                        <button type="submit" class="pure-button">加入購物車</button>
                                        <button type="submit" class="pure-button">直接購買</button>
                                    </div>
                                </div>
                            </div>

                            <div style="display: flex;justify-content: flex-end;">
                                <button type="submit" class="pure-button" style="margin-right: 100px;">回商品列表</button>
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