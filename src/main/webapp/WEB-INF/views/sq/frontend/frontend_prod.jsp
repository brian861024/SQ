<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ include file="/WEB-INF/views/sq/fragements/header.jspf" %>


<link rel="stylesheet" href=<c:url value="/resources/css/frontend_Prod.css"/> />
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
				<%@ include file="/WEB-INF/views/sq/fragements/leftcategory.jspf" %>
                    <!-- 右邊商品名稱區域 -->
                    <div class="right-prod-area">
                    	<div class="prod-area-title">
                            <div class="prod-area-title-color-bar"> </div>
                            <h2 style="margin: 0;"> 商品資訊 </h2>
                        </div >
                        <!-- 商品 -->
                        <div class="prod-item-area">
                            <div class="card prod-card">
                                <!-- 商品名稱區域的商品圖片部分 -->
                                <div>
                                    <div class="prod-card-img-area"><img class="prod-card-img"
                                            src="/SpiritQuest/mvc/product/image/${product.image}" alt="">
                                    </div>
                                </div>
                                <div class="card-body">
                                
                                    <h2 class="card-title">${ product.productName }</h2>
                                    <hr class="dropdown-divider">
                                    <p />
                                    <div style="margin:15px ;">
                                        <p class="card-text">
                                        <h3>${ product.price } /元</h3>
                                        </p>
                                        <p class="card-text">${ product.description }</p>    
                                    </div>
                                    <p />
                                    <hr class="dropdown-divider">
                                    <p />
                                    
                                    
                              <form method="post" action="">
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
                                <a href="/SpiritQuest/mvc/sq/index"><button type="button" class="pure-button" style="margin-right: 100px;">回商品列表</button></a>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
    </div>
    </div>

<%@ include file="/WEB-INF/views/sq/fragements/footer.jspf" %>