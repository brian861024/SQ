<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/sq/fragements/backend_header.jspf" %>

<link rel="stylesheet" href=<c:url value="/resources/css/backend_PlusProd.css" /> />
    
    <script>
    function submitForms() {
        document.getElementById('Form').submit();
        document.getElementById('Form2').submit();
        document.getElementById('Form3').submit();
    }
	</script>

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
          Cart
    ==========================================-->

    <div class="Event_Section">
        <section>
            <div class="container">
                <div class="main-area" style="display: flex;">
                    <!-- 左方導覽列 -->
					 <%@ include file="/WEB-INF/views/sq/fragements/backend_leftbar.jspf" %>
                    <!-- 右邊商品名稱區域 -->
                   		<div class="right-prod-area">
                       		<div class="prod-area-title">
                            <div class="prod-area-title-color-bar"> </div>
                            <h2 style="margin: 0;"> 商品新增 </h2>
                        </div>
                        <!-- 商品 -->
                        <div class="prod-item-area">
                            <div class="card prod-card">
                                <!-- 商品名稱區域的商品圖片部分 -->
                                <div>
                                    <div class="prod-card-img-area"><img class="prod-card-img"
                                            src=<c:url value="/resources/img/cocktail/gintonic.webp"/> alt=""></div>
                                    <div class="prod-card-little-img-area">
                                        <div class="prod-card-little-img-item"><img class="prod-card-little-img"
                                                src=<c:url value="/resources/img/cocktail/gintonic.webp"/> alt=""></div>
                                    </div>
                                </div>
                                
                            <div class="card-body pure-form">
                                <form class="card-body pure-form" id="plusProdForm" method="post" action="/123" id="Form1">
                                    <h5 class="card-title">
                                    <input type="text" id="Prod-name" placeholder="商品名稱"
                                            class="pure-input-1" name=""/></h5>
                                    <hr class="dropdown-divider">
                                    <p />
                                    <p class="card-text"><input type="text" id="Prod-price" placeholder="商品價格"
                                            class="pure-input-1-3" name=""/>
                                    </p>
                                    </p>
                                    <p class="card-text"><textarea type="text" id="Prod-text" placeholder="產品描述"
                                            style="height: 250px;" class="pure-input-1" name=""></textarea>
                                    </p>
                                    <p />
                                    <hr class="dropdown-divider">
                                    <p />
                                 	
                            
                               	   <div style="display: flex;flex-direction: row;">
                               	   		<div>
                                       	<p style="margin: 5px 10px;">庫存：<input type="number"
                                                style="width: 70px;margin:0 10px;" id="quantity" name="quantity"
                                                value="1"></p>
                                        </div>
                                        <div>
                                        <select style="width: 200px;margin-top: 5px">
                    					<option value="0" class="select1">請選擇分類</option>
                    					<option>威士忌</option>
                    					<option>清酒</option>
                   						<option>果實酒</option>
                    					<option>葡萄酒</option>
                   						<option>調酒</option>
                 					    <option>酒器</option>
              							</select>
                                        </div>
									</div>	    
                                   <hr> 
                                   <input type="checkbox" id="On-the-shelves" style="margin-left:20px;" /> 於網頁上架            
                               </div>
                            </div>

                            <div style="display: flex;justify-content: flex-end;">
                                <button type="submit" class="pure-button" onclick="submitForms()" >確認</button>
                                <button type="submit" class="pure-button" style="margin-right: 100px;">回商品列表</button>
                            </div>
                            </form>
                            
                        </div>
                    </div>

                </div>
            </div>
    </div>
    </div>


</body>

</html>