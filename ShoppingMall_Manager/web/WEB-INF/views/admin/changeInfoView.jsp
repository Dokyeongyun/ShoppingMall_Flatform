<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<jsp:include page="/WEB-INF/views/header.jsp"/>

<html>
<head>
    <title>회원정보 수정</title>
</head>
<script type="text/javascript">
		$(document).ready(function(){
			$("#cancel").on("click", function(){
				location.href = "/";
			});
			$("#submit").on("click", function(){
				if($("#admPwd").val()===""){
					alert("비밀번호를 입력해주세요.");
					$("#admPwd").focus();
					return false;
				}
				if($("#admName").val()===""){
					alert("이름을 입력해주세요.");
					$("#admName").focus();
					return false;
				}
			});
			$("#withdraw").on("click", function(){
				location.href = "/admin/memberWithdrawView";
			})
		})
	</script>
<body>
<section id="container">
    <form action="${pageContext.request.contextPath}/admin/changeInfo" method="post">
        <div>
            <label for="admId">아이디</label>
            <input type="text" id="admId" name="admId" value="${sessionScope.admin.admId}" readonly="readonly"/>
        </div>
        <div>
            <label for="userPwd">패스워드</label>
            <input type="password" id="userPwd" name="userPwd" />
        </div>
        <div>
            <label for="admName">성명</label>
            <input type="text" id="admName" name="admName" value="${sessionScope.admin.admName}"/>
        </div>
        <div>
            <button id="submit" type="submit">회원정보 수정</button>
            <button id="withdraw" type="button">회원탈퇴</button>
            <button id="cancel" type="button">취소</button>
        </div>
    </form>
</section>
</body>
</html>