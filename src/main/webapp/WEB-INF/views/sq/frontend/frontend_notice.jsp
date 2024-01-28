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
            </div>

            <div class="main-area" style="display: flex;">
                <!-- 左方導覽列 -->
				<%@ include file="/WEB-INF/views/sq/fragements/leftcategory.jspf" %>
                <!-- 右方文章列表 -->
                <div style="display: block; text-align: center;">
                    <div class="notice-text-area">
                        <div class="notice-text-title">
                            <h1>${ notice.noticeTitle }</h1>
                        </div>
                        <div class="notice-text-content">
                                <h3>${ notice.noticeContext }</h3>
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