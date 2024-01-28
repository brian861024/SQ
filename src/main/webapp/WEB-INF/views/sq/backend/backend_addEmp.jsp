<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/sq/fragements/backend_header.jspf"%>

<link rel="stylesheet"
	href=<c:url value="/resources/css/backend_addEmp.css" /> />
<style>
body {
    background-image: url(<c:url value="/resources/img/bg/bg.jpg"/>);
    background-repeat: no-repeat;
    background-attachment: fixed;
    background-position: top;
    background-size: cover;
}
</style>

<script type="text/javascript"></script>

<body>

	<div class="Event_Section">
		<section>
			<div class="container">
				<!-- 下方區域 -->
				<div class="main-area" style="display: flex;">
					<!-- 左方導覽列 -->
					 <%@ include file="/WEB-INF/views/sq/fragements/backend_leftbar.jspf" %>

					<!-- 右邊登入表單 -->
					<div class="right-login-area">
						<div class="login-area-title">
							<div class="login-area-title-color-bar"></div>
							<h2 style="margin: 0;">新增管理員</h2>
						</div>
						<div class="login-register-form-area">
							<div class="login-form-area">
<!-- ================================================================================================ -->						
<!-- ================================================================================================ -->
								<form class="pure-form pure-form-stacked" id="registerForm"
									method="POST" action="./sq/staff/register">
									<fieldset>
										<label for="stacked-name" style="color: rgb(255, 255, 255);">姓名</label>
										<input id="stacked-name" name="username" placeholder="Name"
											class="pure-input-1" />
										
										<label for="stacked-PhoneNuber"
											style="color: rgb(255, 255, 255);">電話</label>
											
										<input
											id="stacked-PhoneNuber" name="usertel"
											placeholder="PhoneNuber" class="pure-input-1" />
											
										<label
											for="stacked-email" style="color: rgb(255, 255, 255);">Email(登入帳號)</label>
										
										<input type="email" id="stacked-email" name="useremail"
											placeholder="Email" class="pure-input-1" /> <span
											class="pure-form-message">This is a required field.</span> <label
											for="stacked-password" style="color: rgb(255, 255, 255);">密碼</label>
										
										<input type="password" id="stacked-password"
											name="userpassword" placeholder="Password" class="pure-input-1" />
										<span class="pure-form-message">This is a required field.</span>
										
										<label for="stacked-password2" style="color: rgb(255, 255, 255);">確認密碼</label>
										
										<input
											type="password" id="stacked-password2" name="userpassword2"
											placeholder="再輸入一次密碼" class="pure-input-1" />
										
										<label for="stacked-name" style="color: red;">${ loginMessage }</label>
											
										<hr>
										<hr>
										<a type="submit" class="pure-button" onclick="location.href='/SpiritQuest/mvc/sq/register';">Register</a>
									</fieldset>
								</form>
<!-- ================================================================================================ -->
<!-- ================================================================================================ -->
																
							</div>
							<div class="register-form-area">
							</div>
						</div>
					</div>
				</div>
			</div>
	</div>
	</div>


</body>

</html>