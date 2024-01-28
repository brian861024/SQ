<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ include file="/WEB-INF/views/sq/fragements/header.jspf" %>

<link rel="stylesheet" href=<c:url value="/resources/css/frontend_Notice.css" /> />
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
                        <img src="/img/banner/ws.png" class="d-block w-100" alt="...">
                    </div>
                    <div class="carousel-item">
                        <img src="/img/banner/st.png" class="d-block w-100" alt="...">
                    </div>
                    <div class="carousel-item">
                        <img src="/img/banner/gs.jpg" class="d-block w-100" alt="...">
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
                <!-- 右方文章列表 -->
                <div style="display: block; text-align: center;">
                    <div class="notice-text-area">
                        <div class="notice-text-title">
                            <h1>《主題酒單》醉暖聖誕節🎄微醺的季節 又來囉❗️</h1>
                        </div>
                        <div class="notice-text-content">
                                <h3>
                                <hr>
                                在這溫馨的聖誕季節裡，我們精心編製了一份獨特的主題酒單，為您的節日增添一絲微醺的溫暖。以下是我們精心挑選的幾款佳釀，每一款都是為了在這個特別的季節中，為您的味蕾帶來不一樣的驚喜。
                                <hr>
                                香檳之夜✨
                                <hr>
                                Veuve Clicquot Yellow Label Brut
                                <hr>
                                Moët & Chandon Impérial
                                <hr>
                                暖心葡萄酒🍷
                                <hr>
                                Meiomi Pinot Noir
                                <hr>
                                Château Ste. Michelle Cabernet Sauvignon
                                <hr>
                                聖誕雪薇尼🍾
                                <hr>
                                Santa Margherita Prosecco Superiore
                                <hr>
                                Kim Crawford Sauvignon Blanc
                                <hr>
                                每一口都是一種美好的享受，每一瓶都是一段美好的故事。讓我們一同沉浸在這醉人的氛圍中，與摯愛的人共享美好時光。願這微醺的季節，為您帶來豐富的感動和美好的回憶。聖誕快樂！🎅🍷" 
                                </h3>
                        </div>
                    </div>
                </div>
            </div>
            </div>
        </div>
        </div>
        </div>
        </div>
    </section>

 <%@ include file="/WEB-INF/views/sq/fragements/footer.jspf" %>