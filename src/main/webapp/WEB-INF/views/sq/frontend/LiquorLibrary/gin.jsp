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

        </div>
        <div class="liquor-area">
            <div class="liquor-img-area"><img src=<c:url value="/resources/img/liquor/gin/植物學家_琴酒_700ml-removebg-preview.png"/> alt=""
                    class="liquor-img"></div>
            <div class="liquor-text-area">
                <div class="liquor-text-block">
                    <div class="liquor-text-block">
                        <h2 class="liquor-text">植物學家琴酒 700ml</h2>
                    </div>
                    <div class="liquor-text-block">
                        <h3 class="liquor-text">
                            <br>
                            酒精濃度(%) : 46%
                            <br>
                            <br>
                            容量：
                            700ml
                            <div class="liquor-text-little">
                                <br>
                                植物學家琴酒是獨一無二的艾雷島干琴酒(DRYGIN)。
                                不添加任何香精，只透過22種手工採集的艾雷島當地植物，與9種琴酒專用植物，將這些果實、樹皮、種子、與果皮透過緩慢蒸餾萃取精華，更能保留細緻的芳香。
                                <br>
                                <br>
                                調製以琴酒為基底的經典調酒時，能夠保留經典風味，又能帶出一縷植物的清雅變幻。
                            </div>
                        </h3>
                    </div>
                </div>
            </div>
        </div>
        <div class="liquor-area">
            <div class="liquor-img-area"><img src=<c:url value="/resources/img/liquor/gin/6-removebg-preview.png"/> alt="" class="liquor-img">
            </div>
            <div class="liquor-text-area">
                <div class="liquor-text-block">
                    <div class="liquor-text-block">
                        <h2 class="liquor-text">六 Roku日本琴酒 700ml</h2>
                    </div>
                    <div class="liquor-text-block">
                        <h3 class="liquor-text">
                            <br>
                            酒精濃度(%) : 43%
                            <br>
                            <br>
                            容量：
                            700ml
                            <div class="liquor-text-little">
                                <br>
                                六日本琴酒 是琴酒工藝師純熟精確掌握各種原料，以及專注在製程上的細節所誕生的頂級琴酒。
                                <br>
                                ROKU在日文裡代表著「六」，六（ROKU）使用了6種經典的日本植物：
                                <ul>
                                    <br>
                                    <li>櫻花</li>
                                    <li>櫻花葉</li>
                                    <li>日本柚子皮</li>
                                    <li>煎茶</li>
                                    <li>玉露</li>
                                    <li>日本山椒</li>
                                </ul>
                                <br>
                                這些植物都是順應四季時序，在植物最盛開時採收並擷取其中的精華及香氣，經過日本大阪三得利烈酒廠的日本琴酒工藝師浸製、蒸餾、最後調和而成。
                                <br>
                                <br>
                                六日本琴酒 的細緻是透過6種獨特的日本植物、以及8種經典琴酒材料所表現出來的均衡風味。
                                <br>
                                <br>
                                而在六（ROKU）製程中最獨特的地方是，為了擷取這6種日本植物最精華的風味，工藝師選用了不一樣的壺式蒸餾器分批蒸餾，而這樣的努力也為這層次豐富的琴酒帶來如絲般細緻平衡的口感

                            </div>
                        </h3>
                    </div>
                </div>
            </div>
        </div>
        <div class="liquor-area">
            <div class="liquor-img-area"><img src=<c:url value="/resources/img/liquor/gin/bombay-sapphire-gin-750ml-removebg-preview.png"/>
                    alt="" class="liquor-img"></div>
            <div class="liquor-text-area">
                <div class="liquor-text-block">
                    <div class="liquor-text-block">
                        <h2 class="liquor-text">英國 龐貝 藍鑽特級琴酒 750ml </h2>
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
                                龐貝藍鑽特級琴酒包含了10種草本植物混合調味，包括：
                                <ul>
                                    <li>西班牙的苦杏仁</li>
                                    <li>德國薩克森地區的白芷根</li>
                                    <li>中南半島的肉桂樹皮</li>
                                    <li>摩洛哥的胡荽</li>
                                    <li>印尼的蓽橙笳</li>
                                    <li>西非的天堂砂</li>
                                    <li>西班牙的檸檬皮</li>
                                    <li>中國的甘草根</li>
                                    <li>佛羅倫斯的香鳶尾（香鳶花的根部）</li>
                                    <li>托斯卡尼杜松子</li>
                                </ul>
                                四角冰藍瓶身、維多利亞女王肖像的主題，融合悠久的傳統及藍鑽的歷史，脫俗的外表散發出摩登、時尚，既古典亦現代的設計風格。

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