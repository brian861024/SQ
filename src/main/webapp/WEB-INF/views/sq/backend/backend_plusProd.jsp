<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <!-- Head 區域 -->
    <meta name="viewport"
        content="width=device-width, user-scalable=yes, initial-scale=1.0, maximum-scale=3.0, minimum-scale=1.0">
    <meta charset="UTF-8">
    <link rel="icon" href="/img/icon/logo.png" type="image/x-icon" />
    <link rel="shortcut icon" href="" type="image/x-icon" />
    <title>SpiritQuest</title>
    <!-- 幾乎大多數頁面需要jQuery, 所以在此head區載入 -->
    <script src="js/jquery-3.4.1.min.js"></script>
    <!-- 幾乎所有頁面需要w3.css, 所以在此head區載入 -->
    <link rel="stylesheet" href="css/w3.css">
    <!-- 幾乎所有頁面需要Bootstrap, 所以在此head區載入 -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-F3w7mX95PdgyTmZZMECAngseQB83DfGTowi0iMjiWaeVhAn4FJkqJByhZMI3AhiU" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.1/dist/umd/popper.min.js"
        integrity="sha384-W8fXfP3gkOKtndU4JGtKDvXbO53Wy8SZCQHczT5FMiiqmQfUpWbYdTil/SxwZgAN"
        crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/js/bootstrap.min.js"
        integrity="sha384-skAcpIdS7UcVUC05LJ9Dxay8AXcDYfBJqt1CJ85S/CFujBsIzCIv+l9liuYLaMQ/"
        crossorigin="anonymous"></script>
    <!-- 這是所有頁面需要的版型樣式, 所以在此head區載入 -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/purecss@3.0.0/build/pure-min.css">
    <link rel="stylesheet" href="../include/css/backend_PlusProd.css">
</head>

<body>

    <!--======================================
          Header
    ==========================================-->
    <header>
        <!-- Header左側logo圖片 -->
        <div class="logo">
            <a href="/frontend_header.html"><img src="/img/icon/logo.png" alt="" class="logoimg"></a>
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
                                href="/frontend/frontend_index.html">SpiritQuest</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" aria-current="page" href="/frontend/frontend_Cart.html">Cart</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" aria-current="page" href="/frontend/frontend_Order.html">Order</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="./booze.html">Booze</a>
                        </li>
                        <li class="nav-item dropdown ">
                            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button"
                                data-bs-toggle="dropdown" aria-expanded="false">
                                Spirit<img src="./icon/list.svg" alt="">
                            </a>
                            <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                                <li><a class="dropdown-item" href="./Liquor-whisky.html">Whiskey</a></li>
                                <li><a class="dropdown-item" href="./Liquor-rum.html">Rum</a></li>
                                <li><a class="dropdown-item" href="./Liquor-gin.html">Gin</a></li>
                                <li><a class="dropdown-item" href="./Liquor-tequila.html">Tequila</a></li>
                                <li><a class="dropdown-item" href="./Liquor-vadka.html">Vodka</a></li>
                                <li><a class="dropdown-item" href="./Liquor-liqueur.html">Liqueur</a></li>
                                <hr class="dropdown-divider">
                                <li><a class="dropdown-item" href="#">Cocktail</a></li>
                                <li><a class="dropdown-item" href="#">Plum Wine</a></li>
                            </ul>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="/frontend/frontend_login.html">login</a>
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
                                    </div>
                                </div>
                                <div class="card-body pure-form">
                                    <h5 class="card-title"><input type="text" id="Prod-name" placeholder="商品名稱"
                                            class="pure-input-1" /></h5>
                                    <hr class="dropdown-divider">
                                    <p />
                                    <p class="card-text"><input type="text" id="Prod-price" placeholder="商品價格"
                                            class="pure-input-1-3" />
                                    </p>
                                    <p class="card-text">酒精濃度(%)：<input type="text" id="Prod-ABV" placeholder="度數"
                                            class="pure-input-1-4" />
                                    </p>
                                    <p class="card-text">容量： <input type="text" id="Prod-ml" placeholder="容量"
                                            class="pure-input-1-4" />
                                    </p>
                                    <p class="card-text"><textarea type="text" id="Prod-text" placeholder="產品描述"
                                            style="height: 250px;" class="pure-input-1"></textarea>
                                    </p>
                                    <p />
                                    <hr class="dropdown-divider">
                                    <p />
                                    <div>
                                        <p style="margin: 5px 10px;">庫存：<input type="number"
                                                style="width: 70px;margin:0 10px;" id="quantity" name="quantity"
                                                value="1"></p>
                                        <button type="submit" class="pure-button">更改庫存數量</button>
                                        <input type="checkbox" id="On-the-shelves" style="margin-left:20px;" /> 於網頁上架
                                    </div>
                                </div>
                            </div>

                            <div style="display: flex;justify-content: flex-end;">
                                <button type="submit" class="pure-button">確認</button>
                                <button type="submit" class="pure-button" style="margin-right: 100px;">回商品列表</button>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
    </div>
    </div>


</body>

</html>