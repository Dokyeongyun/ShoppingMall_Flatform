<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
    <title>마이페이지</title>
</head>
<body>
<div class="mypage-area">
    <!-- mypage nav -->
    <nav class="mypage-nav">
        <dl class="menu">
            <dt>마이페이지</dt>
            <dd><a href="${pageContext.request.contextPath}/myPage/changeInfo">회원정보 수정</a></dd>
            <dd><a href="${pageContext.request.contextPath}/myPage/orderList">주문내역 조회</a></dd>
        </dl>
    </nav>
    <!-- //mypage nav -->