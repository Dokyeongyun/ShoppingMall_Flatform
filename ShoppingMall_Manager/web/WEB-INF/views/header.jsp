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
