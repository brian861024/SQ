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
    <link rel="stylesheet" href=<c:url value="/resources/css/frontend_Liquorlayout.css" /> />
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
                                <li><a class="dropdown-item" href="/SpiritQuest/mvc/sq/whiskey">Whiskey</a></li>
                                <li><a class="dropdown-item" href="/SpiritQuest/mvc/sq/rum">Rum</a></li>
                                <li><a class="dropdown-item" href="/SpiritQuest/mvc/sq/gin">Gin</a></li>
                                <li><a class="dropdown-item" href="/SpiritQuest/mvc/sq/tequila">Tequila</a></li>
                                <li><a class="dropdown-item" href="/SpiritQuest/mvc/sq/vodka">Vodka</a></li>
                                <li><a class="dropdown-item" href="/SpiritQuest/mvc/sq/liqueur">Liqueur</a></li>
                                <hr class="dropdown-divider">
                                <li><a class="dropdown-item" href="/SpiritQuest/mvc/sq/liquor">Liquor</a></li>
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
    
    <!-- header area end======================== -->
    <!-- main area============================== -->
    <main>
        <div class="liquor-area">
            <div class="liquor-img-area" style="text-align: left;"><img src=<c:url value="/resources/img/liquor/rum/havana.png"/>  alt=""
                    class="liquor-img" style="padding: 0 38px; "></div>
            <div class="liquor-text-area">
                <div class="liquor-text-block">
                    <div class="liquor-text-block">
                        <h2 class="liquor-text">哈瓦那 窖藏3年蘭姆酒 750ml</h2>
                    </div>
                    <div class="liquor-text-block">
                        <h3 class="liquor-text">
<br>
                            酒精濃度(%) : 40%
                            <br>
                            容量：
                            750ml

                            <div class="liquor-text-little">
                            <br>
                            哈瓦那俱樂部3年RUM陳釀是唯一一款可以使你調配出來的Mojito是正宗的古巴味道的RUM。這款酒也許是最負盛名的古巴蘭姆酒了，哈瓦那俱樂部蘭姆酒3年陳釀為蘭姆雞尾酒注入了一種不一樣的感覺。
<br>
<br>
在三年陳釀的過程中，液體被周圍的氣候，氛圍，樂觀以及激情所影響，這也就賦予了這款酒獨特的味道：
<br>
香草的氣息，焦糖梨，香蕉以及煙熏橡木的香味。
<br>
<br>
這些風味可能會刺激你的嗅覺，而煙熏巧克力和香草的味道則刺激你的味蕾。
                            </div>
                        </h3>
                    </div>
                </div>
            </div>
        </div>
        <div class="liquor-area">
            <div class="liquor-img-area"><img src=<c:url value="/resources/img/liquor/rum/bacardi.png"/> alt=""
                    class="liquor-img"></div>
            <div class="liquor-text-area">
                <div class="liquor-text-block">
                    <div class="liquor-text-block">
                        <h2 class="liquor-text">百家得 蘭姆酒 750ml</h2>
                    </div>
                    <div class="liquor-text-block">
                        <h3 class="liquor-text">
                            <br>
                            酒精濃度(%) : 40%
                            <br>
                            
                            容量：
                            750ml
                            <div class="liquor-text-little">
                                <br>
                                Bacardi Carta Blanca / Light 是世界上最有名的蘭姆酒。
                                <br>
                                <br>
                                它是經典的 Bacardi 蘭姆酒 – 正好說明了Bacardi 的最重要的本質：
                                <br>年輕、高品質、具備社交性質、優雅、醇美、感官的、及熱情。 
                                <br>
                                <br>
                                Bacardi Carta Blanca / Light 是 Bacard 真實原始技藝的主要傳達者；它瓶上的蝙蝠標記代表著它的陽剛氣質及歷史傳統（西元1862年創始）。
                            </div>
                        </h3>
                    </div>
                </div>
            </div>
        </div>
    </main>
    <!-- main area end========================== -->
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
                <a href="https://reurl.cc/9R70vx" target="_blank"><img src=<c:url value="/resources/img/icon/telephone.svg"/> alt=""
                        class="footer-icon"></a>
            </div>
            <div class="footer-icon-block">
                <a href="https://reurl.cc/m0rzyV" target="_blank"><img src=<c:url value="/resources/img/icon/line.svg"/> alt=""
                        class="footer-icon">
                </a>
            </div>
            <div class="footer-icon-block">
                <a href="https://reurl.cc/edLQMR" target="_blank"><img src=<c:url value="/resources/img/icon/facebook.svg"/> alt=""
                        class="footer-icon"></a>
            </div>
            <div class="footer-icon-block">
                <a href="https://reurl.cc/L64e29" target="_blank"><img src=<c:url value="/resources/img/icon/instagram.svg"/> alt=""
                        class="footer-icon"></a>
            </div>
        </div>
        <div class="footer-text" style="text-align: end;">
            <h3 style="margin: 0 4rem;color: #a0a0a09d;">@ 2023 </h3>
        </div>

    </footer>

    <!-- footer area end======================== -->

</body>

</html>