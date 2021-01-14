<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<jsp:include page="/WEB-INF/views/header.jsp"/>

<html>
<head>
    <title>DKY's SHOP</title>
</head>
<body>
<h1> 환영합니다. DKY's SHOP 입니다.</h1>
<c:if test="${msg == true}">
    <script>
        alert('로그인 성공!');
    </script>
</c:if>
</body>
</html>
