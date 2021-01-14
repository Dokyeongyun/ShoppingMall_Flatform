<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<jsp:include page="/WEB-INF/views/header.jsp"/>

<html>
<head>
    <title>로그인</title>
</head>

<body>
<c:if test="${msg == false}">
    <script>
        alert('로그인 실패! 아이디와 비밀번호 확인해주세요.');
    </script>
</c:if>

<form:form modelAttribute="memberVO">
    <form:label path="userId" cssStyle="margin: 10px">아이디: </form:label>
    <form:input path="userId" cssStyle="margin: 10px"/><br>

    <form:label path="userPwd" cssStyle="margin: 10px">비밀번호: </form:label>
    <form:password path="userPwd" cssStyle="margin: 10px"/><br>
    <form:button style="width: 300px">로그인</form:button>
</form:form>
</body>
</html>
