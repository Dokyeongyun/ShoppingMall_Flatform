<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="../resources/js/bootstrap.js"></script>
<script src="../resources/js/shop.js?ver=2"></script>
<link rel="stylesheet" href="../resources/css/bootstrap.min.css">
<link rel="stylesheet" href="../resources/css/shop.css?ver=1">

<%--내비게이션 바--%>
<nav class="navbar navbar-default" style="margin-bottom: 0">
    <div class="navbar-header">
        <button type="button" class="navbar-toggle collapsed"
                data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
                aria-expanded="false">
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
        </button>
        <a class="navbar-brand" href="${pageContext.request.contextPath}/">DKY's SHOP 관리자모드</a>
    </div>
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
        <ul class="nav navbar-nav">
            <li><a href="${pageContext.request.contextPath}/">메인</a> </li>
        </ul>
        <ul class="nav navbar-nav navbar-right">
            <c:if test="${sessionScope.admin ne null}">
                <li><a href="#">${sessionScope.admin.admId} 님</a></li>
            </c:if>
            <li class="dropdown">
                <a href="#" class="dropdown-toggle"
                   data-toggle="dropdown" role="button" aria-haspopup="true"
                   aria-expanded="false">접속하기<span class="caret"></span> </a>
                <ul class="dropdown-menu">
                    <c:if test="${sessionScope.admin eq null}">
                        <li class="active"><a href="${pageContext.request.contextPath}/admin/loginView">로그인</a> </li>
                        <li><a href="${pageContext.request.contextPath}/admin/signUpView">회원가입</a> </li>
                    </c:if>
                    <c:if test="${sessionScope.admin ne null}">
                        <li class="active"><a href="${pageContext.request.contextPath}/admin/changeInfoView">회원정보 수정</a> </li>
                        <li><a href="${pageContext.request.contextPath}/admin/logout">로그아웃</a> </li>
                    </c:if>
                </ul>
            </li>
        </ul>
    </div>
</nav>

<html>
<head>
    <title>관리자 웹 애플리케이션</title>
</head>
<body>
<div style="clear: both; position: relative; width: 100%; min-height: 100%">
    <!--left drawer menu-->
    <div style="position: absolute; width: 100%">
        <a href="javascript:void(0)" id="left_menu_btn"
           style="position: absolute; top: -1px; left: 200px;; background: #fff; z-index: 99;"
           onclick="toggleLeftMenu(); return false;">
            <img src="${pageContext.request.contextPath}/resources/img/menu_handle.PNG" alt="메뉴"/>
        </a>
    </div>
    <!--//left drawer menu-->

    <!--좌측 네비게이션 드롭다운 메뉴 toggle-->
    <script>
        $(document).ready(function() {
            $(".main>li").on("click", function() {
                $(this).children(".sub").stop().slideDown();
            });
            $(".main>li").mouseleave(function() {
                $(this).children(".sub").stop().slideUp();
            });
        });
    </script>
    <!--//좌측 네비게이션 드롭다운 메뉴 toggle-->

    <!--left main menu-->
    <div class="left_main_menu">
        <div id="menu">
            <ul class="main">
                <li><a href="#">상품관리</a>
                    <ul class="sub">
                        <li><a href="${pageContext.request.contextPath}/product/addProductView">상품등록</a></li>
                        <li><a href="#">SUB_MENU2</a></li>
                        <li><a href="#">SUB_MENU3</a></li>
                    </ul>
                </li>
                <li><a href="#">MENU2</a>
                    <ul class="sub">
                        <li><a href="#">SUB_MENU</a></li>
                        <li><a href="#">SUB_MENU2</a></li>
                        <li><a href="#">SUB_MENU3</a></li>
                    </ul>
                </li>
                <li><a href="#">MENU3</a>
                    <ul class="sub">
                        <li><a href="#">SUB_MENU</a></li>
                        <li><a href="#">SUB_MENU2</a></li>
                        <li><a href="#">SUB_MENU3</a></li>
                    </ul>
                </li>
                <li><a href="#">MENU4</a>
                    <ul class="sub">
                        <li><a href="#">SUB_MENU</a></li>
                        <li><a href="#">SUB_MENU2</a></li>
                        <li><a href="#">SUB_MENU3</a></li>
                    </ul>
                </li>
                <li><a href="#">MENU5</a>
                    <ul class="sub">
                        <li><a href="#">SUB_MENU</a></li>
                        <li><a href="#">SUB_MENU2</a></li>
                        <li><a href="#">SUB_MENU3</a></li>
                    </ul>
                </li>
            </ul>
        </div>
    </div>
    <!--//left main menu-->