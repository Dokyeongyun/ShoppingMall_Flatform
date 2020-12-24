<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<jsp:include page="/WEB-INF/views/header.jsp"/>

<html>
<head>
    <title>회원탈퇴</title>
</head>
<script type="text/javascript">
		$(document).ready(function(){
			$("#cancel").on("click", function(){
				location.href = "/";
			})
			$("#withdraw").on("click", function(){
				if($("#userPwd").val()==""){
					alert("비밀번호를 입력해주세요.");
					$("#userPwd").focus();
					return false;
				}
			});
		})
	</script>
<body>
<section id="container">
    <form action="${pageContext.request.contextPath}/member/memberWithdraw" method="post">
        <div>
            <label for="userId">아이디</label>
            <input type="text" id="userId" name="userId" value="${member.userId}" readonly="readonly"/>
        </div>
        <div>
            <label for="userPwd">비밀번호</label>
            <input type="password" id="userPwd" name="userPwd" />
        </div>
        <div class="form-group has-feedback">
            <button id="withdraw"  type="submit">회원탈퇴</button>
            <button id="cancel" type="button">취소</button>
        </div>
    </form>
    <div>
        <c:if test="${msg == false}">
            <script>
               alert('비밀번호가 일치하지 않습니다.');
            </script>
        </c:if>
    </div>
</section>
</body>
</html>