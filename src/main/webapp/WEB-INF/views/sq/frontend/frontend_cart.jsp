<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<%@ include file="/WEB-INF/views/sq/fragements/header.jspf"%>

<link rel="stylesheet" href=<c:url value="/resources/css/frontend_Cart.css" /> />

<body>

	<!--======================================
          Cart
    ==========================================-->

	<div class="Event_Section">
		<div>
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
					</select> <select class="category">
						<option value="0" class="select1">請選擇價格</option>
						<option>&nbsp&nbsp&nbsp0&nbsp&nbsp&nbsp ~ 1000</option>
						<option>1000 ~ 2000</option>
						<option>2000 ~ 3000</option>
						<option>3000 ~ 4000</option>
						<option>4000 ~ 5000</option>
						<option>5000 以上</option>
					</select>
					<form class="d-flex" style="width: 50%; margin: 10px">
						<input class="form-control me-2" type="search"
							placeholder="Search" aria-label="Search">
						<button class="btn btn-outline-light" type="submit">Search</button>
					</form>
				</div>

				<!-- 下方區域 -->

				<div class="main-area" style="display: flex;">
					<!-- ==================================================================================================== -->
					<!-- 左方導覽列 -->
					<%@ include file="/WEB-INF/views/sq/fragements/leftmember.jspf"%>
					<!-- ==================================================================================================== -->
					<!-- 右邊購物車區域 -->
					<div class="right-cart-area">
						<div class="cart-area-title">
							<div class="cart-area-title-color-bar"></div>
							<h2 style="margin: 0;">購物車</h2>
						</div>
						<div class="cart-item-area">
							<!-- 購物車物件 -->
							<c:forEach items="${ products }" var="product">
								<div class="card prod-card">
									<div class="prod-card-img-area">
										<img class="prod-card-img"
											src="/SpiritQuest/mvc/product/image/${product.image}" alt="">
									</div>

									<div class="card-body">
										<h2 class="card-title">${ product.productName }</h2>
										<hr class="dropdown-divider">
										<p />
										<p class="card-text">${ product.description }</p>

										<!-- 修改數量的form -->
										<form method="post" action="">
											<!-- 讓修改按鈕對齊 -->
											<div
												style="display: flex; justify-content: end; align-items: center;">
												<c:forEach items="${ cartItems }" var="cartitem">
													<c:if test="${ cartitem.productId == product.productId }">
														<p style="margin: 5px 10px;">
															數量： <input type="number"
																style="width: 50px; margin: 0 10px;" id="quantity"
																name="quantity" value="${cartitem.qty}">
														</p>
													</c:if>
												</c:forEach>
												<button type="submit" class="pure-button">修改數量</button>
												<button type="submit" class="pure-button">刪除</button>
											</div>
										</form>
									</div>
								</div>
							</c:forEach>
							<div style="display: flex; justify-content: flex-end;">
								<button type="button" class="pure-button" onclick="window.location.href='/SpiritQuest/mvc/sq/checkOut?cartId=${ cart.cartId }'">結帳</button>
								<button type="button" class="pure-button" style="margin-right: 100px;">刪除購物車</button>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<%@ include file="/WEB-INF/views/sq/fragements/footer.jspf"%>