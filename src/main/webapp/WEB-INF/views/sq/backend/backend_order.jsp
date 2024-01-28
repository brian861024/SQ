<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ include file="/WEB-INF/views/sq/fragements/backend_header.jspf"%>

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

			<!-- 下方區域 -->

			<div class="main-area" style="display: flex;">

				<!-- ==================================================================================================== -->
                    <!-- 左邊會員管理表單 -->
                    <%@ include file="/WEB-INF/views/sq/fragements/backend_leftbar.jspf" %>
				<!-- ==================================================================================================== -->

				<!-- 右邊購物車區域 -->
				<div class="right-cart-area">
					<div class="cart-area-title">
						<div class="cart-area-title-color-bar"></div>
						<h2 style="margin: 0;">訂單查詢</h2>
					</div>
					<div class="cart-item-area">
						<!-- 購物車卡片 -->
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
										<tr>
											<td></td>
											<td class="order-card-form-prod-name">${ products.productName }</td>
											<td>${ cartItems.qty }</td>
											<td>${ cartItems.price } /元</td>
										</tr>
										</tbody>
									</table>
								</div>
								<div class="order-card-right-area">
									<div class="order-card-right-item">
										<div style="min-width: 80px;">訂購人：</div>
										<div>${ user.username }</div>
									</div>
									<div class="order-card-right-item">
										<div style="min-width: 80px;">總價：</div>
										<div>${ carts.amount }元</div>
									</div>
									<div class="order-card-right-item">
										<div style="min-width: 80px;">寄送地址：</div>
										<div>${ carts.deliveryAddress }</div>
									</div>
									<div class="order-card-right-item">
										<div style="min-width: 80px;">訂單時間：</div>
										<div>${ carts.checkoutTime }</div>
									</div>
									<button type="submit" class="pure-button">${ carts.deliveryStatus }</button>
									<button type="submit" class="pure-button">取消訂單</button>
								</div>
							</div>
						</div>

					</div>
				</div>
			</div>
		</div>
</div>
</div>

<%@ include file="/WEB-INF/views/sq/fragements/footer.jspf"%>