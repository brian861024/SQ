<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ include file="/WEB-INF/views/sq/fragements/header.jspf"%>

<link rel="stylesheet" href=<c:url value="/resources/css/frontend_Order.css" /> />

<style>
body {
    background-image: url(<c:url value="/resources/img/bg/bg.jpg"/>);
    background-repeat: no-repeat;
    background-attachment: fixed;
    background-position: top;
    background-size: cover;
}
</style>

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
					<input class="form-control me-2" type="search" placeholder="Search"
						aria-label="Search">
					<button class="btn btn-outline-light" type="submit">Search</button>
				</form>
			</div>

			<!-- 下方區域 -->

			<div class="main-area" style="display: flex;">

				<!-- ==================================================================================================== -->
                    <!-- 左邊會員管理表單 -->
                    <%@ include file="/WEB-INF/views/sq/fragements/leftmember.jspf" %>
				<!-- ==================================================================================================== -->

				<!-- 右邊購物車區域 -->
				<div class="right-cart-area">
					<div class="cart-area-title">
						<div class="cart-area-title-color-bar"></div>
						<h2 style="margin: 0;">訂單查詢</h2>
					</div>
					
					<div class="cart-item-area">
						<!-- 購物車卡片 -->
						<c:forEach items="${ carts }" var="cart">
							<div class="card order-card">
								<div class="card-body">
									<div class="order-card-left-area">
										<h5 class="card-title"></h5>
										<table class="pure-table pure-table-horizontal">
											<tbody>
												<thead>
													<td></td>
													<td class="order-card-form-prod-name">品名</td>
													<td>數量</td>
													<td>價格</td>
												</thead>
												<c:forEach items="${ cart.cartItems }" var="cartItem">
													<tr>
													  <td></td>
													  <td class="order-card-form-prod-name">${ cartItem.product.productName }</td>
													  <td>${ cartItem.qty }</td>
													  <td>${ cartItem.price } /元</td>
												    </tr>
												</c:forEach>
											</tbody>
										</table>
									</div>
									<div class="order-card-right-area">
										<div class="order-card-right-item">
											<div style="min-width: 80px;">總價：</div>
											<div>${ cart.amount }元</div>
										</div>
										<div class="order-card-right-item">
											<div style="min-width: 80px;">寄送地址：</div>
											<div>${ cart.deliveryAddress }</div>
										</div>
										<div class="order-card-right-item">
											<div style="min-width: 80px;">訂單時間：</div>
											<div>${ cart.checkoutTime }</div>
										</div>
										<button type="submit" class="pure-button">${ cart.deliveryStatus }</button>
										<button type="submit" class="pure-button">欲取消訂單請來電</button>
									</div>
								</div>
							</div>
						</c:forEach>
					</div>
				</div>
			</div>
		</div>
</div>


<%@ include file="/WEB-INF/views/sq/fragements/footer.jspf"%>