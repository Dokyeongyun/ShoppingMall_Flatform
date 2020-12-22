<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html>
<head>
    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <title>회원정보 수정</title>
</head>
<script type="text/javascript">
		$(document).ready(function(){
			$(".cancel").on("click", function(){
				location.href = "/";
			})
			$("#submit").on("click", function(){
				if($("#userPwd").val()==""){
					alert("비밀번호를 입력해주세요.");
					$("#userPwd").focus();
					return false;
				}
				if($("#userName").val()==""){
					alert("이름을 입력해주세요.");
					$("#userName").focus();
					return false;
				}
			});
		})
	</script>
<body>
<section id="container">
    <form action="${pageContext.request.contextPath}/member/changeInfo" method="post">
        <div>
            <label for="userId">아이디</label>
            <input type="text" id="userId" name="userId" value="${member.userId}" readonly="readonly"/>
        </div>
        <div>
            <label for="userPwd">패스워드</label>
            <input type="password" id="userPwd" name="userPwd" />
        </div>
        <div>
            <label for="userName">성명</label>
            <input type="text" id="userName" name="userName" value="${member.userName}"/>
        </div>
        <div>
            <button id="submit" type="submit">회원정보 수정</button>
            <button id="cancel" type="button">취소</button>
        </div>
    </form>
</section>
</body>
</html>