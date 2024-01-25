<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ include file="/WEB-INF/views/sq/fragements/header.jspf" %>

<link rel="stylesheet" href="../include/css/frontend_Prod.css">
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
          Prod
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
                                <form method="post" action="">
                                    <h2 class="card-title">${ product.productName }</h2>
                                    <hr class="dropdown-divider">
                                    <p />
                                    <div style="margin:15px ;">
                                        <p class="card-text">
                                        <h3>${ product.price }</h3>
                                        </p>
                                        <p class="card-text">${ product.description }</p>    
                                    </div>
                                    <p />
                                    <hr class="dropdown-divider">
                                    <p />
                                    <div>
                                        <p style="margin: 5px 10px;">數量：
                                        
                                        <input type="number"
                                                style="width: 50px;margin:0 10px;" id="quantity" name="quantity"
                                                value="1">
                                                
                                        </p>
                                        <button type="submit" class="pure-button">加入購物車</button>
                                    </div>
                               </form>
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

<%@ include file="/WEB-INF/views/sq/fragements/footer.jspf" %>