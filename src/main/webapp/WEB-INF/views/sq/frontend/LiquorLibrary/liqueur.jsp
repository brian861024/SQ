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
            <div class="liquor-img-area"><img src=<c:url value="/resources/img/liquor/liqueur/範本-已修復-已修復_16_-removebg-preview.png"/> alt=""
                    class="liquor-img"></div>
            <div class="liquor-text-area">
                <div class="liquor-text-block">
                    <div class="liquor-text-block">
                        <h2 class="liquor-text">愛瑪樂香甜奶酒 ( 大象奶酒 ) 700ml</h2>
                    </div>
                    <div class="liquor-text-block">
                        <h3 class="liquor-text">
                            <br>
                            酒精濃度(%) : 17%
                            <br>
                            容量：
                            700ml
                            <div class="liquor-text-little">
                                <br>
                                非洲最受歡迎的愛瑪樂香甜奶酒(Amarula)
                                <br>
                                由珍稀的非洲瑪魯拉(Marula)果實釀造而成。香甜滑順、絲綢般圓潤的口感，伴隨著瑪魯拉果香餘韻，加入咖啡或者直接冰鎮純飲，都是種享受！
                                <br><br>
                                瑪魯拉果實 Marula
                                <br><br>
                                充滿異國風情的瑪魯拉果實僅在撒哈拉沙漠以南的非洲平原才能生長，且無法被人工栽植，非常珍稀。
                                每年僅有數週的瑪魯拉果實成熟期，濃郁的熱帶水果香氣經常吸引成群的非洲象跋涉千里來享受這美味多汁的果實，因此，瑪魯拉樹也被稱為「大象樹」。
                                <br><br>
                                從瑪魯拉果實到愛瑪樂香甜奶酒
                                非洲當地居民將摘採下來的瑪魯拉果實打成果漿，經過充分發酵及二次蒸餾程序後，瑪魯拉原酒風味獨特、香氣濃郁，存放在法國橡木桶熟成兩年，再以特殊工法融合優質的新鮮奶油，與熟成的瑪魯拉酒液充分結合，一款令人迷戀、絲綢般滑順的愛瑪樂香甜奶酒終於誕生。
                            </div>
                        </h3>
                    </div>
                </div>
            </div>
        </div>
        <div class="liquor-area">
            <div class="liquor-img-area"><img src=<c:url value="/resources/img/liquor/liqueur/範本_64_-removebg-preview.png"/> alt=""
                    class="liquor-img"></div>
            <div class="liquor-text-area">
                <div class="liquor-text-block">
                    <div class="liquor-text-block">
                        <h2 class="liquor-text">法國 君度橙酒 700ml</h2>
                    </div>
                    <div class="liquor-text-block">
                        <h3 class="liquor-text">
                            <br>
                            酒精濃度(%) : 40%
                            
                            容量：
                            700ml
                            <div class="liquor-text-little">
                                <br>
                                自1875年第一瓶君度橙酒發明以來，獲得無數獎項的肯定，產品獨特之處在於它是100%由橙皮提煉出來的橙皮酒，嚐起來甜中帶甘，但仍保有40%酒精的強烈口感，而其澄澈透明的酒液更是當時製酒技術的一大創舉，搭配時尚的方形瓶身以及琥珀色的玻璃設計，更是讓品牌聲勢永垂不墜的經典。
                                <br>
                                <br>
                                君度的瓶身有四個邊，象徵你會在君度橙酒中品嘗到的四種味道：
                                
                                水、橙皮、糖和酒精。
                                <br>
                                <br>
                                此外，時至今日，Margarita, Cosmopolitan, Sidecar以及White Lady等全世界350種以上的調酒都以君度橙酒作為基酒。
                                <br>
                                可見君度橙酒所體現調和的藝術。
                            </div>
                        </h3>
                    </div>
                </div>
            </div>
        </div>
        <div class="liquor-area">
            <div class="liquor-img-area"><img src=<c:url value="/resources/img/liquor/liqueur/野格_2_-removebg-preview.png"/> alt=""
                    class="liquor-img"></div>
            <div class="liquor-text-area">
                <div class="liquor-text-block">
                    <div class="liquor-text-block">
                        <h2 class="liquor-text">野格利口酒 700ml</h2>
                    </div>
                    <div class="liquor-text-block">
                        <h3 class="liquor-text">
                            <br>
                            酒精濃度(%) : 35%
                            
                            容量：
                            700ml
                            <div class="liquor-text-little">
                                <br>
                                由星茴香種子，肉桂，甘菊，番紅花，丁香薑，甘草，茴香種子，龍膽草根，安古斯圖拉樹皮，洋山薄荷，芫荽，蜂蜜等56種精選材料釀製而成。
                                <br>
                                以70度的酒精浸泡56種精選材料，口感呈現淡淡的茴香味，下喉微甜順口，冰鎮入口後，一個暖流立刻從腹部竄出；
                                除了冰鎮飲用，還能搭配各式飲品，調製成各式調酒。
                                <br>
                                <br>近來野格Shots已然成為各種派對必備的元素，成為一種歡樂時光的象徵。
                                <br><br>
                                野格在世界各地受到極大的歡迎，現在是世界排名第八的國際烈酒品牌，同時也是來自德國的最大烈酒品牌。

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