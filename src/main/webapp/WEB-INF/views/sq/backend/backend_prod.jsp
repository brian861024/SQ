<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/sq/fragements/backend_header.jspf"%>

<link rel="stylesheet" href="../include/css/backend_Prod.css">
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
            <!-- 上方搜索列 -->
            

            <div class="main-area" style="display: flex;margin-top:50px">
                <!-- 左方導覽列 -->
               <%@ include file="/WEB-INF/views/sq/fragements/backend_leftbar.jspf" %>

                <!--======================================
          右邊商品庫存清單
    ==========================================-->
                
                    <div class="card order-card">
                        <div class="card-body">
                            <div class="order-card-left-area">
                                <h5 class="card-title">威士忌</h5>
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
                                            <td>增加數量</td>
                                            <td></td>
                                            <td></td>
                                        </thead>
                                        <tr>
                                            <td>1</td>
                                            <td>雷伯五號 威士忌</td>
                                            <td><input type="number" style="width: 50px;" id="quantity"
                                                name="quantity" value="5"></td>
                                            <td><input type="number" style="width: 80px;" id="quantity"
                                                name="quantity" value="1280"> /元</td>
                                            <td><input type="number" style="width: 50px;margin:0 10px;" id="quantity"
                                                    name="quantity" value="1">
                                            </td>
                                            <td><button type="submit" class="pure-button">更新
                                            </button></td>
                                            <td><button type="submit" class="pure-button">刪除
                                                </button></td>
                                        </tr>
                                        <tr>
                                            <td>2</td>
                                            <td>帝王8年 龍舌蘭風味桶 750ml</td>
                                            <td><input type="number" style="width: 50px;" id="quantity"
                                                name="quantity" value="2"></td>
                                            <td><input type="number" style="width: 80px;" id="quantity"
                                                name="quantity" value="680"> /元</td>
                                            <td><input type="number" style="width: 50px;margin:0 10px;" id="quantity"
                                                    name="quantity" value="1">
                                            </td>
                                            <td><button type="submit" class="pure-button">更新
                                            </button></td>
                                            <td><button type="submit" class="pure-button">刪除</button></td>
                                        </tr>
                                        <tr>
                                            <td>3</td>
                                            <td>CHOYA 梅子風味氣泡酒 750ml</td>
                                            <td><input type="number" style="width: 50px;" id="quantity"
                                                name="quantity" value="3"></td>
                                            <td><input type="number" style="width: 80px;" id="quantity"
                                                name="quantity" value="760"> /元</td>
                                            <td><input type="number" style="width: 50px;margin:0 10px;" id="quantity"
                                                    name="quantity" value="1">
                                            </td>
                                            <td><button type="submit" class="pure-button">更新
                                            </button></td>
                                            <td><button type="submit" class="pure-button">刪除</button></td>
                                        </tr>
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