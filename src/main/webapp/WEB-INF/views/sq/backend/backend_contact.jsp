<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/sq/fragements/backend_header.jspf" %>

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
                                <h5 class="card-title">客戶聯絡單</h5>
                                <p />
                                <hr class="dropdown-divider">
                                <p />
                                <table class="pure-table pure-table-horizontal">
                                    <tbody>
                                        <thead>
                                            <td>ID</td>
                                            <td style="width: 100px;">姓名</td>
                                            <td style="width: 100px;">聯絡方式</td>
                                            <td style="width: 100px;">主旨</td>
                                            <td>內容</td>
                                        </thead>
                                        <!-- 單個商品列 -->
                                        <c:forEach var="contact" items="${contacts}">
                                        <tr>
                                            <td>${contact.contactId}</td>
                                            <td>${contact.customerName}</td>
                                            <td>${contact.customerEmail}</td>
                                            <td>${contact.contactTitle}</td>
                                            <td>${contact.contactContext}</td>
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