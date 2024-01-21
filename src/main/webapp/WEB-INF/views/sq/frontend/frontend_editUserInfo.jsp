<%@ page language="java" contentType="text/html; charset=BIG5"pageEncoding="BIG5"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="zh-Hant-TW">

<head>
    <!-- Head �ϰ� -->
    <meta name="viewport"
        content="width=device-width, user-scalable=yes, initial-scale=1.0, maximum-scale=3.0, minimum-scale=1.0">
    <meta charset="UTF-8">
    <link rel="icon" href=<c:url value="/resources/img/icon/logo.png"/> type="image/x-icon" />
    <link rel="shortcut icon" href="" type="image/x-icon" />
    <title>SpiritQuest</title>
    <!-- jQuery���J -->
    <script src="js/jquery-3.4.1.min.js"></script>
    <!-- w3.css���J -->
    <link rel="stylesheet" href="css/w3.css">
    <!-- Bootstrap���J -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-F3w7mX95PdgyTmZZMECAngseQB83DfGTowi0iMjiWaeVhAn4FJkqJByhZMI3AhiU" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.1/dist/umd/popper.min.js"
        integrity="sha384-W8fXfP3gkOKtndU4JGtKDvXbO53Wy8SZCQHczT5FMiiqmQfUpWbYdTil/SxwZgAN"
        crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/js/bootstrap.min.js"
        integrity="sha384-skAcpIdS7UcVUC05LJ9Dxay8AXcDYfBJqt1CJ85S/CFujBsIzCIv+l9liuYLaMQ/"
        crossorigin="anonymous"></script>
    <!-- �o�O�Ҧ������ݭn�������˦�, �ҥH�b��head�ϸ��J -->
    <link rel="stylesheet" href=https://cdn.jsdelivr.net/npm/purecss@3.0.0/build/pure-min.css>
    <link rel="stylesheet" href="../include/css/frontend_UserEditInfo.css">
</head>

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
          Header
    ==========================================-->
    <header>
        <!-- Header����logo�Ϥ� -->
        <div class="logo">
            <a href="/SpiritQuest/mvc/sq/index"><img src=<c:url value="/resources/img/icon/logo.png"/> alt="" class="logoimg"></a>
        </div>
        <!-- Header�k������ -->
        <nav class="navbar navbar-expand-lg navbar-light bg-opacity fs-5">
            <div class="container-fluid">
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                    data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
                    aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                        <li class="nav-item" style="margin-right: 10px;">
                            <a class="nav-link active" aria-current="page"
                                href="/SpiritQuest/mvc/sq/index">SpiritQuest</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" aria-current="page" href="/SpiritQuest/mvc/sq/cart">�ʪ���</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" aria-current="page" href="/SpiritQuest/mvc/sq/order">�q��d��</a>
                        </li>
                        <li class="nav-item dropdown ">
                            <a class="nav-link dropdown-toggle" href="/SpiritQuest/mvc/sq/liquor" id="navbarDropdown" role="button"
                                data-bs-toggle="dropdown" aria-expanded="false">
                                �s���Ϯ��]<img src=<c:url value="/icon/list.svg"/> alt="">
                            </a>
                            <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                                <li><a class="dropdown-item" href="/SpiritQuest/mvc/sq/whiskey">Whiskey</a></li>
                                <li><a class="dropdown-item" href="/SpiritQuest/mvc/sq/rum">Rum</a></li>
                                <li><a class="dropdown-item" href="/SpiritQuest/mvc/sq/gin">Gin</a></li>
                                <li><a class="dropdown-item" href="/SpiritQuest/mvc/sq/tequila">Tequila</a></li>
                                <li><a class="dropdown-item" href="/SpiritQuest/mvc/sq/vodka">Vodka</a></li>
                                <li><a class="dropdown-item" href="/SpiritQuest/mvc/sq/liqueur">Liqueur</a></li>
                                <hr class="dropdown-divider">
                                <li><a class="dropdown-item" href="/SpiritQuest/mvc/sq/liquor">Liquor</a></li>
                            </ul>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="/SpiritQuest/mvc/sq/login">login</a>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>
    </header>

    <!--======================================
          login
    ==========================================-->

    <div class="Event_Section">
        <section>
            <div class="container">
                <!-- �W��j���C -->
                <div class="search">
                    <select class="category">
                        <option value="0" class="select1">�п�ܤ���</option>
                        <option>�¤h��</option>
                        <option>�M�s</option>
                        <option>�G��s</option>
                        <option>����s</option>
                        <option>�հs</option>
                        <option>�s��</option>
                    </select>
                    <select class="category">
                        <option value="0" class="select1">�п�ܻ���</option>
                        <option>&nbsp&nbsp&nbsp0&nbsp&nbsp&nbsp ~ 1000</option>
                        <option>1000 ~ 2000</option>
                        <option>2000 ~ 3000</option>
                        <option>3000 ~ 4000</option>
                        <option>4000 ~ 5000</option>
                        <option>5000 �H�W</option>
                    </select>
                    <form class="d-flex" style="width: 50%;margin: 10px">
                        <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
                        <button class="btn btn-outline-light" type="submit">Search</button>
                    </form>
                </div>

                <!-- �U��ϰ� -->

                <div class="main-area" style="display: flex;">
                    <!-- ��������C -->
                    <div class="left-prod-class-area">
                        <p class="w3-padding-large" style="margin: 10px;margin-top: 20px;">
                        <h5>�|���޲z</h5>
                        </p>

                        <hr class="dropdown-divider">
                        <!-- �����C���s �ʪ��� -->

                        <a class="prod-class-link" href="/frontend/frontend_Cart.html">�ʪ���</a>

                        <hr class="dropdown-divider">
                        <!-- �����C���s ���v�q�� -->

                        <a class="prod-class-link" href="/frontend/frontend_Order.html">�q��d��</a>

                        <hr class="dropdown-divider">
                        <!-- �����C���s ���ðӫ~ -->

                        <a class="prod-class-link" href="#">���ðӫ~</a>

                        <hr class="dropdown-divider">
                        <!-- �����C���s ����s -->

                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button"
                            data-bs-toggle="dropdown" aria-expanded="false">
                            �ק�|�����<img src="./icon/list.svg" alt="">
                        </a>
                        <ul class="dropdown-menu left-prod-class-dropdown-menu" aria-labelledby="navbarDropdown">
                            <li><a class="dropdown-item" href="">�ק�򥻸��</a></li>
                            <hr class="dropdown-divider">
                            <li><a class="dropdown-item" href="#">�d�߱K�X</a></li>
                            <li><a class="dropdown-item" href="#">�ק�{�ҫH�c</a></li>
                        </ul>

                        <hr class="dropdown-divider">
                        <!-- �����C���s �հs -->

                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button"
                            data-bs-toggle="dropdown" aria-expanded="false">
                            ��e�|���u�f<img src="./icon/list.svg" alt="">
                        </a>
                        <ul class="dropdown-menu left-prod-class-dropdown-menu" aria-labelledby="navbarDropdown">
                            <li><a class="dropdown-item" href="">Whiskey</a></li>
                            <li><a class="dropdown-item" href="">Rum</a></li>
                            <li><a class="dropdown-item" href="">Gin</a></li>
                            <li><a class="dropdown-item" href="">Tequila</a></li>
                            <li><a class="dropdown-item" href="">Vodka</a></li>
                            <li><a class="dropdown-item" href="">Liqueur</a></li>
                            <hr class="dropdown-divider">
                            <li><a class="dropdown-item" href="#">Cocktail</a></li>
                            <li><a class="dropdown-item" href="#">Plum Wine</a></li>
                        </ul>

                        <hr class="dropdown-divider">
                        <!-- �����C���s �s�� -->

                        <a class="prod-class-link" href="#">�p���ȪA</a>

                        <hr class="dropdown-divider">
                    </div>

                    <!-- �k��n�J��� -->
                    <div class="right-login-area">
                        <div class="login-area-title">
                            <div class="login-area-title-color-bar"> </div>
                            <h2 style="margin: 0;"> �|����ƭק� </h2>
                        </div >
                        <div class="login-register-form-area">
                            <div class="login-form-area">
                                <form class="pure-form pure-form-stacked">
                                    <fieldset>
                                        <label for="stacked-email" style="color: rgb(255, 255, 255);">Email(�n�J�b��)</label>
                                        <input type="email" id="stacked-email" placeholder="Email"
                                            class="pure-input-1" />
                                        <hr>
                                        <hr>
                                        <hr>
                                        <label for="stacked-name" style="color: rgb(255, 255, 255);">�©m�W</label>
                                        <input id="stacked-name" placeholder="Name"
                                            class="pure-input-1" />
                                        <label for="stacked-name" style="color: rgb(255, 255, 255);">�ק��m�W</label>
                                        <input id="stacked-name" placeholder="Name"
                                            class="pure-input-1" />
                                        <hr>
                                        <label for="stacked-PhoneNuber" style="color: rgb(255, 255, 255);">�¹q�ܸ��X</label>
                                        <input  id="stacked-PhoneNuber" placeholder="PhoneNuber"
                                            class="pure-input-1" />
                                            <label for="stacked-PhoneNuber" style="color: rgb(255, 255, 255);">�ק��q�ܸ��X</label>
                                        <input  id="stacked-PhoneNuber" placeholder="PhoneNuber"
                                            class="pure-input-1" />
                                        <hr>
                                        <hr>
                                        <button type="submit" class="pure-button">����</button>                                    
                                        <a href="" style="text-decoration: none;"><h5 class="forget-password-label">�ѰO�K�X?</h5></a>
                                    </fieldset>
                                </form>
                            </div>

                            <div class="register-form-area">
                                <div class="forget-password" style="color: rgba(253, 253, 253, 0.788);">
                                    �ק�H�c?<button type="submit" class="pure-button" style="margin: 20px;">�I��</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
    </div>
    </div>

    <!--======================================
          Footer
    ==========================================-->

    <div class="footer">
        <a href="https://reurl.cc/Ny4OOn" target="_blank" class="footer"><img src="../img/icon/warning.png" alt=""
                class="footer-banner"></a>
    </div>
    <footer>
        <div class="footer-icon-area">
            <div class="footer-icon-block">
                <a href="https://reurl.cc/9R70vx" target="_blank"><img src="../img/icon/telephone.svg" alt=""
                        class="footer-icon"></a>
            </div>
            <div class="footer-icon-block">
                <a href="https://reurl.cc/m0rzyV" target="_blank"><img src="../img/icon/line.svg" alt=""
                        class="footer-icon">
                </a>
            </div>
            <div class="footer-icon-block">
                <a href="https://reurl.cc/edLQMR" target="_blank"><img src="../img/icon/facebook.svg" alt=""
                        class="footer-icon"></a>
            </div>
            <div class="footer-icon-block">
                <a href="https://reurl.cc/L64e29" target="_blank"><img src="../img/icon/instagram.svg" alt=""
                        class="footer-icon"></a>
            </div>
        </div>
        <div class="footer-text" style="text-align: end;">
            <h3 style="margin: 0 4rem;color: #a0a0a09d;">@ 2023 </h3>
        </div>

    </footer>


</body>

</html>