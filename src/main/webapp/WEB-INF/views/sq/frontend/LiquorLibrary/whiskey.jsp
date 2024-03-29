<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

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

        </div>
        <div class="liquor-area">
            <div class="liquor-img-area"><img src=<c:url value="/resources/img/liquor/whiskey/OMAR.png"/> alt=""
                    class="liquor-img"></div>
            <div class="liquor-text-area">
                <div class="liquor-text-block">
                    <div class="liquor-text-block">
                        <h2 class="liquor-text">OMAR 雪莉果乾 威士忌 700ml</h2>
                    </div>
                    <div class="liquor-text-block">
                        <h3 class="liquor-text">
                            <br>
                            酒精濃度(%) : 46%
                            <br>
                            容量：700ml
                            <br>
                            <div class="liquor-text-little">
                                <br>
                                •色澤:
                                飽滿的紅棕色澤。
                                <br>
                                <br>
                                •香氣:
                                芬芳花香中帶有若隱若現的一絲硫味，撲面而來熟香蕉的濃郁氣息，以及蘇打餅乾、話梅的氣味，果醬、檀香和黑巧克力甘甜再現，緊接而來的是龍眼蜜、熟芒果、芭蕉、葡萄乾、梅子蜜餞等香甜的味道。
                                <br>
                                <br>
                                •口感:
                                入口酒體濃稠香甜，似焦糖土司般甜美，果乾和橘子蛋糕的甜點滋味。
                                <br>
                                <br>
                                •餘韻:
                                細微硫味轉化為煙燻氣息，尾韻的悠長回甘。
                            </div>
                        </h3>
                    </div>
                </div>
            </div>
        </div>
        <div class="liquor-area">
            <div class="liquor-img-area"><img src=<c:url value="/resources/img/liquor/whiskey/teacher.png"/> alt="" class="liquor-img"></div>
            <div class="liquor-text-area">
                <div class="liquor-text-block">
                    <div class="liquor-text-block">
                        <h2 class="liquor-text">教師牌 700ml</h2>
                    </div>
                    <div class="liquor-text-block">
                        <h3 class="liquor-text">
                            <br>
                            酒精濃度(%) : 40%
                            <br>
                            容量：700ml
                            <div class="liquor-text-little">
                                <br>
                                創立於1863年，也被稱為老蘇格蘭威士忌中的完美傑作1899年，此威士忌酒廠另建立Ardmore純麥蒸餾廠。
                                <br>
                                <br>
                                另外在1957年又併購了Glendronach純麥蒸餾廠，正式形成了「教師蘇格蘭威士忌」這支酒款，以「Ardmore 與 Glendronach
                                」兩種麥芽威士忌為主體的高比例麥芽的而調和威士忌。
                                <br>
                                <br>
                                特色在Ardmore單一麥芽和Glendronach 酒廠提供的完美雪莉香氣。
                                <br>
                                <br>
                                色澤像琥珀色香氣中有泥煤跟雪莉香氣酒體扎實而飽滿口感有香蕉無花果蛋糕杏仁派核桃派及鳳梨餘韻是濃郁且帶著煙燻的長時間回韻2007年。
                                <br>
                                <br>
                                此酒更是全球銷售一百五十萬箱，全球前十大蘇格蘭威士忌品牌，也是公認價位最合理，品質及口感最好的調和式威士忌。

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