<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
	
<%@ include file="/WEB-INF/views/sq/fragements/header.jspf" %>

<link rel="stylesheet" href=<c:url value="/resources/css/frontend_index.css" /> />
<!--======================================
       Roll Area
 ==========================================-->
<div class="roll-area">
	<div class="roll">
		<div id="carouselExampleIndicators" class="carousel slide"
			data-bs-ride="carousel">
			<div class="carousel-indicators">
				<button type="button" data-bs-target="#carouselExampleIndicators"
					data-bs-slide-to="0" class="active" aria-current="true"
					aria-label="Slide 1"></button>
				<button type="button" data-bs-target="#carouselExampleIndicators"
					data-bs-slide-to="1" aria-label="Slide 2"></button>
				<button type="button" data-bs-target="#carouselExampleIndicators"
					data-bs-slide-to="2" aria-label="Slide 3"></button>
			</div>
			<div class="carousel-inner">
				<div class="carousel-item active">
					<img src=<c:url value="/resources/img/banner/ws.png"/>
						class="d-block w-100" alt="...">
				</div>
				<div class="carousel-item">
					<img src=<c:url value="/resources/img/banner/st.png"/>
						class="d-block w-100" alt="...">
				</div>
				<div class="carousel-item">
					<img src=<c:url value="/resources/img/banner/gs.jpg"/>
						class="d-block w-100" alt="...">
				</div>
			</div>
			<button class="carousel-control-prev" type="button"
				data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
				<span class="carousel-control-prev-icon" aria-hidden="true"></span>
				<span class="visually-hidden">Previous</span>
			</button>
			<button class="carousel-control-next" type="button"
				data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
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
			<form class="d-flex justify-content-end align-items-end" style="width: 100%;">
			<select class="category"  id="stacked-state">
				<option value="0" class="select1">請選擇分類</option>
				<option>威士忌</option>
				<option>清酒</option>
				<option>果實酒</option>
				<option>葡萄酒</option>
				<option>調酒</option>
				<option>酒器</option>
			</select>
			<select class="category"  id="stacked-state">
				<option value="0" class="select1">請選擇價格</option>
				<option>&nbsp&nbsp&nbsp0&nbsp&nbsp&nbsp ~ 1000</option>
				<option>1000 ~ 2000</option>
				<option>2000 ~ 3000</option>
				<option>3000 ~ 4000</option>
				<option>4000 ~ 5000</option>
				<option>5000 以上</option>
			</select>
	
				<button class="btn btn-outline-light" type="submit" style="margin-bottom：8px">Search</button>
			</form>
		</div>

		<div class="main-area" style="display: flex;">
		<!-- 左方導覽列 -->
		<%@ include file="/WEB-INF/views/sq/fragements/leftcategory.jspf" %>

			<!-- =============================================================================== -->
			<!-- 右方商品列表 -->
			<div style="display: block; text-align: center;">

				<!-- 商品卡片頁標題
                 <h1 class="" style="color: rgba(255, 255, 255, 0.89);margin:30px">  </h1> -->

				<!-- 商品搜索 -->
				<!-- 商品卡片 -->
				<div class="card-area">
				    <c:forEach items="${products}" var="product">
				        <div class="card" style="width: auto; max-width: 18rem; background: #ffffffb7;">
				            <img src="/SpiritQuest/mvc/product/image/${product.image}" alt="" />
				            <div class="card-body">
				                <h5 class="card-title">${product.productName}</h5>
				                <p class="card-text">${product.description}</p>
				               	<form Method="post" action="/SpiritQuest/mvc/sq/prodInfo">
				                <input type="hidden" name="productId" value="${product.productId}">
				                <!-- 添加點擊事件，呼叫 JavaScript 函數 -->
				                <button onclick="redirectToProdPage(${product.productId})" class="pure-button">更多商品資料</button>
				                </form>
				                
				            </div>
				        </div>
				    </c:forEach>
				</div>
				
				<!-- 隱藏的表單 -->
				<form id="redirectToProdForm" method="post" action="/frontend_prod">
				    <input type="hidden" name="productId" id="productIdInput" value="" />
				</form>

					<!-- 最下方換頁按鈕 -->
					<div>
						<nav class="d-flex justify-content-center me-7 m-5">
							<ul class="pagination">
								<li class="page-item"><a class="page-link" style="color: black;"
									href="/SpiritQuest/mvc/sq/index?currentPage=${ (currentPage - 1) <= 0 ? 1: currentPage - 1}">上一頁</a></li>
								<c:forEach begin="1" end="${ totalPage }" varStatus="loop">
									<li class="page-item"><a class="page-link" style="color: black;"
										href="/SpiritQuest/mvc/sq/index?currentPage=${loop.index}">${loop.index}</a>
									</li>
								</c:forEach>
								<li class="page-item"><a class="page-link" style="color: black;"
									href="/SpiritQuest/mvc/sq/index?currentPage=${ (currentPage + 1) >= totalPage ? totalPage: currentPage + 1  }">下一頁</a></li>
							</ul>
						</nav>
						<!--
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
                         -->
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