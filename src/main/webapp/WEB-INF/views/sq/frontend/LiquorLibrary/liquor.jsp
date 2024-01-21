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
    <link rel="stylesheet" href=<c:url value="/resources/css/frontend_Liquorlayout-base.css" /> />
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
    <main>
        <!-- card area====================== -->
        <div class="card-area">

            <div class="card" style="width:auto; max-width: 30rem;background: #ffffffb7;">
                <img src=<c:url value="/resources/img/liquor/whiskey/(限量) 皇家禮炮21年王者之鑽 700ml(1).png"/> alt="">
                <div class="card-body">
                    <a href="/SpiritQuest/mvc/user/sq/whiskey" target="_blank" class="card-title" style="color: rgba(0, 0, 0, 0.767); text-decoration: none;">
                        <h5 class="card-title" >威士忌 &nbsp Whisky</h5>
                    </a>
                    <p class="card-text">
                        威士忌一詞源自蘇格蘭語，是指「生命之水」，是所有以穀物為原料，並經過「陳年」工序（在橡木桶中成熟）所製造出來的蒸餾酒之通稱，口感獨特鮮明，容易與其他副材料衝突，因此以威士忌為基酒的調酒並不多，主要還是以純飲為主。
                        <br>
                        <br>
                        威士忌的香氣及風味豐富而繁多，而酒精正是這些為威士忌帶來香味的物質的載體。
                        一般當酒精濃度較高，威士忌味道會較強勁和濃郁，帶較多乾果等成熟果香；隨著酒精度下降，不同較淡的味道會散發出來，如柑橘的香味。
                    </p>
                </div>
            </div>
            <div class="card" style="width:auto; max-width: 30rem;background: #ffffffb7;">
                <img src=<c:url value="/resources/img/liquor/gin/英人琴酒-700ml-removebg-preview.png"/> alt="">
                <div class="card-body">
                    <a href="/SpiritQuest/mvc/user/sq/gin" target="_blank" style="color: rgba(0, 0, 0, 0.767);text-decoration: none; ">
                        <h5 class="card-title">琴酒 &nbspGin</h5>
                    </a>
                    <p class="card-text">
                        琴酒是由穀物發酵，並增添多種香料蒸餾製成，由於主要調味香料為杜松子，故又名為「杜松子酒」，但並非所有的琴酒都是以杜松子作為主調味。常見的琴酒有二種：
                        <br>
                        <br>
                    <div style="background-color: rgba(54, 54, 54, 0.144);"> 荷蘭琴酒 &nbsp
                        Dutch Gin</div>
                    <br>
                    將精餾後的酒液貯藏在玻璃槽中成熟，再稀釋至酒精濃度約40度而成。帶有濃厚香氣和麥芽味，酒液透明清亮。適合純飲。
                    <br>
                    <br>
                    <div style="background-color: rgba(54, 54, 54, 0.144);">倫敦琴酒 &nbsp
                        London Dry Gin</div>
                    <br>
                    一般指的琴酒多為此類，口感辛辣，「Dry」是指傾向不甜之意。酒液無色，氣味清香，可單飲也適合調酒，故琴酒被譽為是「六大基酒之首」。
                    </p>
                </div>
            </div>
            <div class="card" style="width:auto; max-width: 30rem;background: #ffffffb7;">
                <img src=<c:url value="/resources/img/liquor/vodka/瑞典 ABS 絕對伏特加 原味 700ml (詢問優惠價)_结果_preview_rev_1.png"/> alt="">
                <div class="card-body">
                    <a href="/SpiritQuest/mvc/user/sq/vodka" target="_blank" style="color: rgba(0, 0, 0, 0.767); text-decoration: none;">
                       <h5 class="card-title">伏特加 &nbsp Vodka</h5></a>
                 
                    <p class="card-text">
                        酒液透明無色，又稱作「鑽石酒」，酒精含量介於35%~50%之間，釀造原料最常見的是馬鈴薯、黑麥或小麥，經過蒸餾後反覆精煉而成，在製作過程中，過濾的次數越多，品質越上乘，市面上品質較佳的伏特加至少都經過三次以上的蒸餾，再用活性炭過濾。
                        <br>
                        <br>
                        伏特加最大的特色是「無色、無味、無香」，只有淡淡的酒精味，適合搭配色澤、風味強烈的材料，是「最純粹的基酒」，也被戲稱「沒有個性」，具有高度的靈活性，可以凸顯任何配角的風采，也最考驗調酒師的創意。
                    </p>
                </div>
            </div>
            <div class="card" style="width:auto; max-width: 30rem;background: #ffffffb7;">
                <img src=<c:url value="/resources/img/liquor/tequila/墨西哥_銀快活龍舌蘭酒_700ml_40_-removebg-preview.png"/> alt="">
                <div class="card-body">
                    <a href="/SpiritQuest/mvc/user/sq/tequila" target="_blank" style="color: rgba(0, 0, 0, 0.767);text-decoration: none; ">     <h5 class="card-title">龍舌蘭 &nbsp Tequila</h5>
                    </a>
               
                    <p class="card-text">
                        以其原料為名，龍舌蘭是原產自墨西哥的植物，莖部富含水分及糖分，故被用來發酵釀酒，也因為它獨特的植物香氣，適合調配成口感濃厚的調酒，或以「shot」的方式飲用，先抿一口鹽巴，將龍舌蘭酒一飲而盡後，再含食檸檬片，別有風味。
                        <br> <br>
                        龍舌蘭可以依據「貯藏時間」分為五種：
                        <br>
                    <div style="background-color: rgba(54, 54, 54, 0.144);">Blanco/Silver</div>
                    <br>
                    西班牙文為「白色」，貯藏時間不超過一個月，並未染上木桶的色澤風味，酒液透明無色，口感最為辛辣，風格強烈。
                    <br><br>
                    <div style="background-color: rgba(54, 54, 54, 0.144);">Joven abocado</div>
                    <br>
                    西班牙文為「年輕順口」，貯藏時間與Blanco相同，但在過程中加入了焦糖或少許龍舌蘭酒，酒液呈現金黃色。
                    <br> <br>
                    <div style="background-color:rgba(54, 54, 54, 0.144);">Reposado</div>
                    <br>
                    西班牙文為「休息」，貯藏時間約2個月~1年，浸染些許橡木桶的色澤風味，酒液呈現淡金色，口感較濃厚豐富，也是市面上最常見的龍舌蘭種類。
                    <br> <br>
                    <div style="background-color: rgba(54, 54, 54, 0.144);">Añejo</div>
                    <br>
                    西班牙文為「陳年」，貯藏時間超過1年以上，長時間浸染在橡木桶中，味道比Reposado更柔和，價格偏高昂。
                    <br> <br>
                    <div style="background-color: rgba(54, 54, 54, 0.144);">Extra Añejo</div>
                    <br>
                    西班牙文為「額外的陳年」，貯藏時間超過3年以上，屬於最上等的龍舌蘭，風味纖細溫潤，價格高昂。
                    </p>
                </div>
            </div>
            <div class="card" style="width:auto; max-width:30rem;background: #ffffffb7;">
                <img src=<c:url value="/resources/img/liquor/rum/百家得-1000-removebg-preview.png"/> alt="">
                <div class="card-body">
                    <a href="/SpiritQuest/mvc/user/sq/rum"  target="_blank" style="color: rgba(0, 0, 0, 0.767); text-decoration: none;"><h5 class="card-title">朗姆酒 &nbsp Rum</h5>
                    </a>
                    
                    <p class="card-text">
                        蘭姆酒又名「糖酒」，帶有醇厚的甜膩果香或甘蔗焦香，非常適合調製具有熱帶風情的水果類調酒，主要產地也多在為牙買加、古巴、墨西哥、巴西等熱帶地區。
                        <br>
                        市面上常見的蘭姆酒可以分為三類：
                        <br>
                    <div style="background-color: rgba(54, 54, 54, 0.144);">白色蘭姆酒<br> Light/White Rum</div>
                    <br>
                    風味最淡，酒液為透明無色或極淺的黃色，口感稍具刺激性，廣泛運用在調酒之中，也是台灣最常見的蘭姆酒種類。貯藏過程最短。
                    <br>
                    <br>
                    <div style="background-color: rgba(54, 54, 54, 0.144);">金色蘭姆酒 <br>Gold/Medium Rum</div>
                    <br>
                    風味中等，酒液為討喜的淡金色，香氣和口感偏甜。貯藏時間介於白色與黑色蘭姆酒之間。
                    <br>
                    <br>
                    <div style="background-color: rgba(54, 54, 54, 0.144);">黑色蘭姆酒 <br>Dark Rum</div>
                    <br>
                    保留較多雜質，風味最濃郁豐富，酒液的顏色較深，多為深褐色。釀造時程較長，須在木桶中貯藏3年~30年，故帶有木桶香或巧克力香，品質較佳，價格高昂，適合純飲。
                    </p>
                </div>
            </div>
            <div class="card" style="width:auto; max-width: 30rem;background: #ffffffb7;">
                <img src=<c:url value="/resources/img/liquor/liqueur/範本_64_-removebg-preview.png"/> alt="">
                <div class="card-body">
                    <a href="/SpiritQuest/mvc/user/sq/liqueur" target="_blank" style="color: rgba(0, 0, 0, 0.767); text-decoration: none;"><h5 class="card-title">利口酒 &nbspLiqueur</h5>
                    </a>
                    
                    <p class="card-text">利口酒翻譯自法語 Liqueur，是以蒸餾酒加入水果、花、香草或草藥等再加上色素及甜味的混合酒，口味甘美，適合餐前飯後單獨飲用。
                        <br>
                        利口酒的豔色大多是色彩鮮明、味道香甜，有香草類、種子類、水果類、牛乳類等。
                        <br>
                        <br>
                        而利口酒也適合用來提配各種層次的雞尾酒，大多數利口酒的酒精濃度比烈酒低在15-30%，但有的利口酒的酒精濃度也高達55%。
                        <br>
                        利口酒的口味大致為以下：
                        <br>
                        <br>
                    <div style="background-color: rgba(54, 54, 54, 0.144);">水果類</div>
                    <br>
                    此類的利口酒是種類最多的，因為各種有甜味的水果皆能作成此類的類口酒，其常見的不外乎是蘋果、草莓、葡萄、檸檬、柳橙等等…..，也是最常拿來純飲的利口酒種類。
                    <br>
                    <br>
                    <div style="background-color: rgba(54, 54, 54, 0.144);">香草類</div>
                    <br>
                    可以說是早期的利口酒，通常以香草、藥草、特定香料調製而成，而早期拿來當藥酒的功用較多，配方也比較不外傳。
                    <br>
                    <br>
                    <div style="background-color: rgba(54, 54, 54, 0.144);">種子類</div>
                    <br>
                    凡利用堅果或其他豆類製成的利口酒都分為此類，其含油量高與味道較濃厚是它的特色，也多用於調酒之中。
                    <br>
                    <br>
                    <div style="background-color: rgba(54, 54, 54, 0.144);">牛乳類</div>
                    <br>
                    顧名思義就是利用蛋奶製作而成的利口酒，有別於其他三種分類使用的是動物性食品加工製成，期最常見的奶酒也可以歸在此類。
                    </p>
                </div>
            </div>
        </div>
        </div>
        </div>
        <!-- card area end================== -->

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

    <!-- footer area end======================== -->
</body>

</html>