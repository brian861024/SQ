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
				<!-- 左方導覽列 -->
				<div class="left-prod-class-area">
					<p class="w3-padding-large" style="margin: 10px; margin-top: 20px;">
					<h5>會員管理</h5>
					</p>

					<hr class="dropdown-divider">

					<!-- 導覽列按鈕 購物車 -->
					<a class="prod-class-link" href="/SpiritQuest/mvc/sq/cart">購物車</a>

					<hr class="dropdown-divider">

					<!-- 導覽列按鈕 歷史訂單 -->
					<a class="prod-class-link" href="/SpiritQuest/mvc/sq/order">訂單查詢</a>

					<hr class="dropdown-divider">

					<!-- 導覽列按鈕 收藏商品 -->
					<a class="prod-class-link" href="/SpiritQuest/mvc/sq/favoriteProd">收藏商品</a>

					<hr class="dropdown-divider">

					<!-- 導覽列按鈕 修改會員資料 -->
					<a class="nav-link dropdown-toggle" href="" id="navbarDropdown"
						role="button" data-bs-toggle="dropdown" aria-expanded="false">
						修改會員資料<img src=<c:url value="/resources/img/icon/list.svg"/>
						alt="">
					</a>
					<ul class="dropdown-menu left-prod-class-dropdown-menu"
						aria-labelledby="navbarDropdown">
						<li><a class="dropdown-item"
							href="/SpiritQuest/mvc/sq/editUserName">修改會員姓名</a></li>
						<li><a class="dropdown-item"
							href="/SpiritQuest/mvc/sq/editUserTel">修改會員電話</a></li>
						<hr class="dropdown-divider">
						<li><a class="dropdown-item"
							href="/SpiritQuest/mvc/sq/findpassword">查詢密碼</a></li>

					</ul>

					<hr class="dropdown-divider">

					<!-- 導覽列按鈕 當前會員優惠
                        <a class="prod-class-link" href="#" >當前會員優惠</a>
             
                        <hr class="dropdown-divider"> -->

					<!-- 導覽列按鈕 聯絡客服 -->
					<a class="prod-class-link" href="/SpiritQuest/mvc/sq/contact">聯絡客服</a>

					<hr class="dropdown-divider">
				</div>
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
											<td class="order-card-form-prod-name">雷伯五號 威士忌</td>
											<td>2</td>
											<td>700 /元</td>
										</tr>
										<tr>
											<td></td>
											<td class="order-card-form-prod-name">帝王8年 龍舌蘭風味桶 750ml</td>
											<td>1</td>
											<td>680 /元</td>
										</tr>
										<tr>
											<td></td>
											<td class="order-card-form-prod-name">CHOYA 梅子風味氣泡酒
												750ml</td>
											<td>1</td>
											<td>480 /元</td>
										</tr>
										<tr>
											<td></td>
											<td class="order-card-form-prod-name">CHOYA 梅子風味氣泡酒
												750ml</td>
											<td>1</td>
											<td>480 /元</td>
										</tr>
										</tbody>
									</table>
								</div>
								<div class="order-card-right-area">
									<div class="order-card-right-item">
										<div style="min-width: 80px;">總價：</div>
										<div>1,860元</div>
									</div>
									<div class="order-card-right-item">
										<div style="min-width: 80px;">寄送地址：</div>
										<div>桃園市桃園區忠孝西路二段185弄320號6樓-8</div>
									</div>
									<div class="order-card-right-item">
										<div style="min-width: 80px;">訂單時間：</div>
										<div>2023-10-22 22:10:35</div>
									</div>
									<button type="submit" class="pure-button">處理中</button>
									<button type="submit" class="pure-button">查詢運送資訊</button>
									<button type="submit" class="pure-button">取消訂單</button>
								</div>
							</div>
						</div>

						<div class="card order-card">
							<div class="card-body">
								<div class="order-card-left-area">
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
											<td class="order-card-form-prod-name">雷伯五號 威士忌</td>
											<td>2</td>
											<td>700 /元</td>
										</tr>
										<tr>
											<td></td>
											<td class="order-card-form-prod-name">帝王8年 龍舌蘭風味桶 750ml</td>
											<td>1</td>
											<td>680 /元</td>
										</tr>
										<tr>
											<td></td>
											<td class="order-card-form-prod-name">(限量)金門高粱 白金龍61週年
												大師百選版 (泰坦灰源酒) 600ml</td>
											<td>1</td>
											<td>480 /元</td>
										</tr>
										</tbody>
									</table>
								</div>
								<div class="order-card-right-area">
									<div class="order-card-right-item">
										<div style="width: 80px;">總價：</div>
										<div>1,860元</div>
									</div>
									<div class="order-card-right-item">
										<div style="min-width: 80px;">寄送地址：</div>
										<div>桃園市桃園區忠孝西路320號6樓</div>
									</div>
									<div class="order-card-right-item">
										<div style="width: 80px;">訂單時間：</div>
										<div>2023-10-22 22:10:35</div>
									</div>
									<button type="submit" class="pure-button">運送中</button>
									<button type="submit" class="pure-button">查詢運送資訊</button>
								</div>
							</div>
						</div>

						<div class="card order-card">
							<div class="card-body">
								<div class="order-card-left-area">
									<table class="pure-table pure-table-horizontal">
										<tbody>
										<thead>
											<td></td>
											<td>品名</td>
											<td>數量</td>
											<td>價格</td>
										</thead>
										<tr>
											<td></td>
											<td>雷伯五號 威士忌</td>
											<td>2</td>
											<td>700 /元</td>
										</tr>
										<tr>
											<td></td>
											<td>帝王8年 龍舌蘭風味桶 750ml</td>
											<td>1</td>
											<td>680 /元</td>
										</tr>
										<tr>
											<td></td>
											<td>CHOYA 梅子風味氣泡酒 750ml</td>
											<td>1</td>
											<td>480 /元</td>
										</tr>
										</tbody>
									</table>
								</div>
								<div class="order-card-right-area">
									<div class="order-card-right-item">
										<div style="width: 80px;">總價：</div>
										<div>1,860元</div>
									</div>
									<div class="order-card-right-item">
										<div style="min-width: 80px;">寄送地址：</div>
										<div>桃園市桃園區忠孝西路320號6樓</div>
									</div>
									<div class="order-card-right-item">
										<div style="width: 80px;">訂單時間：</div>
										<div>2023-10-22 22:10:35</div>
									</div>
									<button type="submit" class="pure-button">已完成</button>
								</div>
							</div>
						</div>

						<div class="card order-card">
							<div class="card-body">
								<div class="order-card-left-area">
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
											<td class="order-card-form-prod-name">雷伯五號 威士忌</td>
											<td>2</td>
											<td>700 /元</td>
										</tr>
										</tbody>
									</table>
								</div>
								<div class="order-card-right-area">
									<div class="order-card-right-item">
										<div style="width: 80px;">總價：</div>
										<div>1,860元</div>
									</div>
									<div class="order-card-right-item">
										<div style="min-width: 80px;">寄送地址：</div>
										<div>桃園市桃園區忠孝西路320號6樓</div>
									</div>
									<div class="order-card-right-item">
										<div style="width: 80px;">訂單時間：</div>
										<div>2023-10-22 22:10:35</div>
									</div>
									<button type="submit" class="pure-button">已取消</button>
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