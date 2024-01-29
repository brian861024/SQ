<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/sq/fragements/backend_header.jspf" %>


<link rel="stylesheet" href="../include/css/frontend_index.css">
<style>
body {
    background-image: url(<c:url value="/resources/img/bg/bg.jpg"/>);
    background-repeat: no-repeat;
    background-attachment: fixed;
    background-position: top;
    background-size: cover;
}

 a {
    text-decoration: none; /* 去除下划线 */
    color: black; /* 设置字体颜色为黑色 */
}

</style>

<body>

                <!-- 右方後臺管理列表 -->
                <div style="display: block; text-align: center; margin: 250px auto">
                    <!-- 後臺管理功能卡片 -->
                    <div class="card-area">

                        <a href="/SpiritQuest/mvc/sq/backend/plusProd"><div class="card" style="width:auto; max-width: 18rem;background: #ffffffb7;">
                            <div class="card-body">
                                <h5 class="card-title">商品新增</h5>
                                <p class="card-text">
                                    商品新增包括新增商品圖片、庫存、價格以及描述等等。
                                </p>
                            </div>
                        </div></a>

						<a href="/SpiritQuest/mvc/sq/backend/prodList"><div class="card" style="width:auto; max-width: 18rem;background: #ffffffb7;">
                            <div class="card-body">
                                <h5 class="card-title">商品列表</h5>
                                <p class="card-text">
                                   總攬您的商品列表，並且得以刪除商品。
                                </p>
                            </div>
                        </div></a>

                        <a href="/SpiritQuest/mvc/sq/backend/order"><div class="card" style="width:auto; max-width: 18rem;background: #ffffffb7;">
                            <div class="card-body">
                                <h5 class="card-title">客戶訂單管理</h5>
                                <p class="card-text">
                                    用以查看客戶全部之訂單，包含歷史訂單，以及運送狀態之更改。
                                </p>
                            </div>
                        </div></a>

                        <a href="/SpiritQuest/mvc/sq/backend/contact"><div class="card" style="width:auto; max-width: 18rem;background: #ffffffb7;">
                            <div class="card-body">
                                <h5 class="card-title">客戶聯絡單</h5>
                                <p class="card-text">
                                	客戶聯絡單是用戶留言信箱，點此可以查看聯絡單並確認客戶之聯絡資訊。
                                </p>
                            </div>
                        </div></a>

                        <a href="/SpiritQuest/mvc/sq/backend/notice"><div class="card" style="width:auto; max-width: 18rem;background: #ffffffb7;">
                            <div class="card-body">
                                <h5 class="card-title">新增公告</h5>
                                <p class="card-text">
                                	用以新增前台佈告欄的公告。
                                </p>                                
                            </div>
                        </div></a>

                        <a href="/SpiritQuest/mvc/sq/backend/addEmp"><div class="card" style="width:auto; max-width: 18rem;background: #ffffffb7;">
                            <div class="card-body">
                                <h5 class="card-title">新增管理員</h5>
                                <p class="card-text">
                                	可以新增後臺之管理員。    
                                </p>
                            </div>
                        </div></a>

                    </div>
                </div>
            </div>
        </div>
        </div>
        </div>
        </div>
    </section>


</body>

</html>