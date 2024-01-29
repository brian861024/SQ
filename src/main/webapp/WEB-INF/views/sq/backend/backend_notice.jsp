<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ include file="/WEB-INF/views/sq/fragements/backend_header.jspf" %>


<link rel="stylesheet" href=<c:url value="/resources/css/frontend_Login.css" /> />
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
          EVENTS SECTION
    ==========================================-->
    <section>
        <div class="container">
            
            <div class="main-area" style="display: flex;margin-top:50px">
                <!-- 左方導覽列 -->
					 <%@ include file="/WEB-INF/views/sq/fragements/backend_leftbar.jspf" %>

<!-- ==================================================================================================== --> 
                    <!-- 右邊新增公告表單 -->
                    <div class="right-login-area" style="margin:100px">
                        <div class="login-area-title">
                            <div class="login-area-title-color-bar"> </div>
                            <h2 style="margin: 0;"> 新增公告 </h2>
                        </div >
                        <div class="contect-form-area">
                        
 <!-- ==================================================================================================== -->                        
 <!-- ==================================================================================================== -->                       
                            <form class="pure-form" method="post" action="/SpiritQuest/mvc/sq/staff/addNotice">
                                <fieldset>
                                    <input name="noticeTitle" type="text" class="pure-input-1" style="margin:10px 0;height: 50px;" placeholder="主旨" />
                                    <textarea name="noticeContext" class="pure-input-1" style="height: 400px;" placeholder="文字輸入區"></textarea>
                                </fieldset>
                                <hr class="dropdown-divider">
                                <button type="submit" class="pure-button">送出</button>
                            </form>
<!-- ==================================================================================================== -->                             
<!-- ==================================================================================================== -->                             
                        </div>
                    </div>
                </div>
            </div>
	</section>

<%@ include file="/WEB-INF/views/sq/fragements/footer.jspf" %>