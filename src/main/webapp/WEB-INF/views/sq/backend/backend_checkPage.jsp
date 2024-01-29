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
          checkPage
    ==========================================-->

    <div class="Event_Section">
        <section>
            <div class="container">      
                <!-- 下方區域 -->
                <div class="main-area" style="display: flex;">
<!-- ==================================================================================================== -->                
                                     <!-- 左方導覽列 -->
					 <%@ include file="/WEB-INF/views/sq/fragements/backend_leftbar.jspf" %>
<!-- ==================================================================================================== --> 

                    <!-- 右邊訂單確認表單 -->
                    <div class="right-login-area">
                        <div class="login-area-title">
                            <div class="login-area-title-color-bar"> </div>
                            <h2 style="margin: 0;"> 訂單確認 </h2>
                        </div >
                        <div class="login-register-form-area">
                            <div class="login-form-area">
                            
                                <form class="pure-form pure-form-stacked" >
                                
                                    <fieldset>  
                                        <h1><label for="stacked-code" style="color: rgb(255, 255, 255)">${ successMessage }</label></h1>                                 
                                    </fieldset>
                                </form>    
                                    
                                    <a href="/SpiritQuest/mvc/sq/backend/index"><button class="pure-button">點此回首頁</button></a>          
                            </div>

                        </div>
                    </div>
                </div>
            </div>
    </div>
    </div>

<%@ include file="/WEB-INF/views/sq/fragements/footer.jspf" %>