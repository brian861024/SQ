<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/sq/fragements/backend_header.jspf" %>
<script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>

<link rel="stylesheet" href="../include/css/backend_Order.css">
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
<script>
    
    function updateStock(button) {
        var productId = $(button).data("productid");
        var newStockQty = parseInt($(".newstockQty").val());

        $.ajax({
            type: "POST",
            url: "/backend/changeProdQty",
            data: { productId: productId, newStockQty: newStockQty },
            success: function (response) {
                alert("更新成功！");
            },
            error: function (error) {
                alert("更新失敗：" + JSON.stringify(error));
            }
        });
    }
    
</script>
    <!--======================================
          EVENTS SECTION
    ==========================================-->
    <section>
        <div class="container">
            
            <div class="main-area" style="display: flex;margin-top:50px">
                <!-- 左方導覽列 -->
					 <%@ include file="/WEB-INF/views/sq/fragements/backend_leftbar.jspf" %>

    <!--======================================
          右邊商品庫存清單
    ==========================================-->
                
                    <div class="card order-card">
                        <div class="card-body">
                            <div class="order-card-left-area">
                                <h5 class="card-title">商品列表</h5>
                                <p />
                                <hr class="dropdown-divider">
                                <p />
                                <table class="pure-table pure-table-horizontal">
                                    <tbody>
                                        <thead>
                                            <td>ID</td>
                                            <td style="width: 600px;">品名</td>
                                            <td style="width: 200px;">數量</td>
                                            <td style="width: 200px;">價格</td>
                                            <td>更新庫存</td>
                                            <td></td>
											<td></td>
                                        </thead>

                                        <!-- 單個商品列 -->
                                        <c:forEach var="product" items="${products}">
                                        <tr>
                                            <td>${ product.productId }</td>
                                            <td>${ product.productName }</td>
                                            <td>${ product.stockQty }</td>
                                            <td><input type="number" style="width: 80px;" id="price" name="price" value="${ product.price }"> /元</td>
											<td><input type="number" style="width: 50px;margin:0 10px;" class="newstockQty" name="newStockQty" value="1"></td>
											<td><button type="button" class="pure-button update-button" data-productid="${product.productId}" onclick="updateStock(this)">更新</button></td>
       										<td><button type="submit" class="pure-button">刪除</button></td>
                                        </tr>
                                        </c:forEach>
                                    </tbody>
                                </table>
                            </div>

                        </div>
                    </div>
                </div>
            
        </div>
        </div>
    </section>
</body>

</html>