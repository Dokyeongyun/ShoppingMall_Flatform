<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<jsp:include page="/WEB-INF/views/header.jsp"/>

<html>
<head>
    <title>로그인</title>
</head>

<script type="text/javascript">
	$(document).ready(function(){
		$("#logoutBtn").on("click", function(){
			location.href="/member/logout";
		})
		$("#signUp").on("click", function(){
			location.href="/member/signUpView";
		})
	})
</script>

<body>
<form name='homeForm' method="post" action="${pageContext.request.contextPath}/member/login">
    <c:if test="${member == null}">
        <div>
            <label for="userId"></label>
            <input type="text" id="userId" name="userId">
        </div>
        <div>
            <label for="userPwd"></label>
            <input type="password" id="userPwd" name="userPwd">
        </div>
        <div>
            <button type="submit">로그인</button>
            <button id="signUp" type="button">회원가입</button>
        </div>
    </c:if>
    <c:if test="${msg == false}">
        <script>
            alert('로그인 실패! 아이디와 비밀번호 확인해주세요.');
        </script>
    </c:if>
</form>
</body>
</html>
