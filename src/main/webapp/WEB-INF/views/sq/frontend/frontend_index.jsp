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
    <link rel="stylesheet" href=<c:url value="/resources/css/frontend_index.css" /> />
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

    <!--======================================
          Roll Area
    ==========================================-->
    <div class="roll-area">
        <div class="roll">
            <div id="carouselExampleIndicators" class="carousel slide" data-bs-ride="carousel">
                <div class="carousel-indicators">
                    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0"
                        class="active" aria-current="true" aria-label="Slide 1"></button>
                    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1"
                        aria-label="Slide 2"></button>
                    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2"
                        aria-label="Slide 3"></button>
                </div>
                <div class="carousel-inner">
                    <div class="carousel-item active">
                        <img src=<c:url value="/resources/img/banner/ws.png"/> class="d-block w-100" alt="...">
                    </div>
                    <div class="carousel-item">
                        <img src=<c:url value="/resources/img/banner/st.png"/> class="d-block w-100" alt="...">
                    </div>
                    <div class="carousel-item">
                        <img src=<c:url value="/resources/img/banner/gs.jpg"/> class="d-block w-100" alt="...">
                    </div>
                </div>
                <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators"
                    data-bs-slide="prev">
                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                    <span class="visually-hidden">Previous</span>
                </button>
                <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators"
                    data-bs-slide="next">
                    <span class="carousel-control-next-icon" aria-hidden="true"></span>
                    <span class="visually-hidden">Next</span>
                </button>
            </div>
        </div>
    </div>

    <!--======================================
          EVENTS SECTION
    ==========================================-->
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
                   <!-- <hr class="dropdown-divider">
                        <li><a class="dropdown-item" href="#">雪莉桶</a></li>
                        <li><a class="dropdown-item" href="#">波本桶</a></li>
                        <hr class="dropdown-divider">
                        <li><a class="dropdown-item" href="#">泥煤</a></li>
                        <li><a class="dropdown-item" href="#">煙燻</a></li> -->
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
                <!-- =============================================================================== -->
                <!-- 右方商品列表 -->
                <div style="display: block; text-align: center;">

                    <!-- 商品卡片頁標題
                    <h1 class="" style="color: rgba(255, 255, 255, 0.89);margin:30px">  </h1> -->

                    <!-- 商品搜索 -->
                    <!-- 商品卡片 -->
                    <div class="card-area">

                        <div class="card" style="width:auto; max-width: 18rem;background: #ffffffb7;">
                            <img src="/img/cocktail/negroni.webp" alt="">
                            <div class="card-body">
                                <h5 class="card-title">Negroni</h5>
                                <p class="card-text">
                                    來自義大利的Negroni，將琴酒、甜苦艾酒、金巴利酒以1：1：1的比例調製，提取各自的甜味、苦味、酒味，喝起來別有特殊的重風味以及橙皮香，是品酒人眼中的瓊漿玉露。
                                </p>
                                <button type="submit" class="pure-button">加入購物車</button>
                            </div>
                        </div>

                        <div class="card" style="width:auto; max-width: 18rem;background: #ffffffb7;">
                            <img src="/img/cocktail/mojido.webp" alt="">
                            <div class="card-body">
                                <h5 class="card-title">Mojido</h5>
                                <p class="card-text">
                                    就像歌詞唱的那樣，用「海風、老爺車、棕櫚樹」來形容Mojito帶些有點復古的南國氣氛，可說再適合不過了。以蘭姆酒搭配檸檬汁、蘇打水、薄荷葉，是最適合夏天的清爽調酒。
                                </p>
                                <div class="heart-area">酒精濃度：<img src="./icon/heart.svg" alt="" class="heart"></div>
                            </div>
                        </div>

                        <div class="card" style="width:auto; max-width: 18rem;background: #ffffffb7;">
                            <img src="/img/cocktail/gintonic.webp" alt="">
                            <div class="card-body">
                                <h5 class="card-title">Gin Tonic</h5>
                                <p class="card-text">琴通寧是很受歡迎的調酒，做法也相當簡單，將琴酒混合通寧水（氣泡水）再加入檸檬片就完成。喝起來像是檸檬汽水，帶有些微苦味。
                                </p>
                                <div class="heart-area">酒精濃度：<img src="./icon/heart.svg" alt="" class="heart"></div>
                            </div>
                        </div>

                        <div class="card" style="width:auto; max-width: 18rem;background: #ffffffb7;">
                            <img src="/img/cocktail/pink-lady.webp" alt="">
                            <div class="card-body">
                                <h5 class="card-title">Pink Lady</h5>
                                <p class="card-text">由調酒師獻給心儀的歌劇女主角，充滿浪漫氣息的一款調酒。基酒使用琴酒並加上紅石榴糖漿，最後加上蛋白或鮮奶油，打造出綿密的泡沫來升級口感。
                                </p>
                                <div class="heart-area">酒精濃度：<img src="./icon/heart.svg" alt="" class="heart"> </div>
                            </div>
                        </div>

                        <div class="card" style="width:auto; max-width: 18rem;background: #ffffffb7;">
                            <img src="/img/cocktail/stdog.webp" alt="">
                            <div class="card-body">
                                <h5 class="card-title">Salty Dog</h5>
                                <p class="card-text">
                                    伏特加搭配葡萄柚與鹽巴，一款夏日風情的調酒，最特別的地方，在於鹽巴不是直接加進去，而是沾在杯緣，要先舔一口才喝下去。之所以叫「鹹狗」是來自老水手（俚語Sea
                                    dog）身上的汗水日曬蒸發，所殘留的鹽巴結晶。</p>
                                <div class="heart-area">酒精濃度：<img src="./icon/heart.svg" alt="" class="heart"><img
                                        src="./icon/heart.svg" alt="" class="heart"></div>
                            </div>
                        </div>

                        <div class="card" style="width:auto; max-width: 18rem;background: #ffffffb7;">
                            <img src="/img/cocktail/Old-Fashioned-.webp" alt="">
                            <div class="card-body">
                                <h5 class="card-title">Old-Fashioned</h5>
                                <p class="card-text">
                                    酒如其名，是一款永遠的老派與經典調酒。以威士忌搭配蘇打水、糖、苦精，搭配橙片、櫻桃還有檸檬皮，口感強烈嗆辣又帶點甘甜，將威士忌的美味昇華到更高境界。
                                </p>
                                <div class="heart-area">酒精濃度：<img src="./icon/heart-pulse.svg" alt="" class="heart"><img
                                        src="./icon/heart-pulse.svg" alt="" class="heart"></div>
                            </div>
                        </div>

                        <div class="card" style="width:auto; max-width: 18rem;background: #ffffffb7;">
                            <img src="/img/cocktail/LongIslandIcedTea.webp" alt="">
                            <div class="card-body">
                                <h5 class="card-title">Long-Island<br> Iced Tea</h5>
                                <p class="card-text">
                                    又有「失身酒」之稱的長島冰茶，光是基酒就用上琴酒、伏特加、龍舌蘭酒、蘭姆酒，再加些果汁糖漿稀釋一下而已。外觀看似檸檬紅茶，但它可不是好惹的，如果在酒吧有男生點長島冰茶給陌生女性，肯定會引人側目。
                                </p>
                                <div class="heart-area">酒精濃度：<img src="./icon/heart-pulse.svg" alt="" class="heart"><img
                                        src="./icon/heart-pulse.svg" alt="" class="heart"><img
                                        src="./icon/heart-pulse.svg" alt="" class="heart"></div>
                            </div>
                        </div>

                        <div class="card" style="width:auto; max-width: 18rem;background: #ffffffb7;">
                            <img src="/img/cocktail/Screwdriver.webp" alt="">
                            <div class="card-body">
                                <h5 class="card-title">Screwdriver</h5>
                                <p class="card-text">以伏特加作為基底，加入柳橙汁的簡單調酒，同樣適合普羅大眾。名稱來自從前一位美國工程師，把伏特加倒進柳橙汁裡，並隨手拿螺絲起子攪拌而成。
                                </p>
                                <div class="heart-area">酒精濃度：<img src="./icon/heart.svg" alt="" class="heart"></div>
                            </div>
                        </div>

                        <div class="card" style="width:auto; max-width: 18rem;background: #ffffffb7;">
                            <img src="/img/cocktail/Screwdriver.webp" alt="">
                            <div class="card-body">
                                <h5 class="card-title">Screwdriver</h5>
                                <p class="card-text">以伏特加作為基底，加入柳橙汁的簡單調酒，同樣適合普羅大眾。名稱來自從前一位美國工程師，把伏特加倒進柳橙汁裡，並隨手拿螺絲起子攪拌而成。
                                </p>
                                <div class="heart-area">酒精濃度：<img src="./icon/heart.svg" alt="" class="heart"></div>
                            </div>
                        </div>

                        <!-- 最下方換頁按鈕 -->
                        <div>
                            <nav aria-label="Page navigation example">
                                <ul class="pagination">
                                    <li class="page-item">
                                        <a class="page-link" href="#" style="color: black;" aria-label="Previous">
                                            <span aria-hidden="true">&laquo;</span>
                                        </a>
                                    </li>
                                    <li class="page-item"><a class="page-link" href="#" style="color: black;">1</a></li>
                                    <li class="page-item"><a class="page-link" href="#" style="color: black;">2</a></li>
                                    <li class="page-item"><a class="page-link" href="#" style="color: black;">3</a></li>
                                    <li class="page-item">
                                        <a class="page-link" href="#" style="color: black;" aria-label="Next">
                                            <span aria-hidden="true">&raquo;</span>
                                        </a>
                                    </li>
                                </ul>
                            </nav>
                        </div>

                    </div>
                </div>
            </div>
        </div>
        </div>
        </div>
        </div>
    </section>

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