<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<jsp:include page="/WEB-INF/views/header.jsp"/>

<html>
<head>
    <title>게시판</title>
</head>

<script type="text/javascript">
		$(document).ready(function(){
			// 취소
			$("#cancel").on("click", function(){
				location.href = "/";
			})

			$("#signUp").on("click", function(){
				if($("#userId").val()==""){
					alert("아이디를 입력해주세요.");
					$("#userId").focus();
					return false;
				}
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
				if($("#email").val()==""){
					alert("이메일을 입력해주세요.");
					$("#email").focus();
					return false;
				}
				if($("#phone").val()==""){
					alert("휴대폰번호를 입력해주세요.");
					$("#phone").focus();
					return false;
				}
				if($("#dateOfBirth").val()==""){
					alert("생년월일을 입력해주세요.");
					$("#dateOfBirth").focus();
					return false;
				}

				var idCheck = $("#idDoubleCheck").val();
				if(idCheck == "N"){
					alert("중복확인 버튼을 눌러주세요.");
					return false;
				}else if(idCheck == "Y"){
					$("#signUp").submit();
				}
			});
		})

		function fn_idDoubleCheck(){
			$.ajax({
				url : "/member/idDoubleCheck",
				type : "post",
				dataType : "json",
				data : {"userId" : $("#userId").val()},
				success : function(data){
					if(data == 1){
						alert("중복된 아이디입니다.");
					}else if(data == 0){
						$("#idDoubleCheck").attr("value", "Y");
						alert("사용가능한 아이디입니다.");
					}
				}
			})
		}
</script>

<body>

<div id="root">
    <header>
        <h1> 회원가입 </h1>
    </header>
    <section id="container">
        <form role="form" method="post" action="${pageContext.request.contextPath}/member/signUp">
            <div class="form-group has-feedback">
                <label class="control-label" for="userId">아이디</label>
                <input class="form-control" type="text" id="userId" name="userId" />
                <button class ="idDoubleCheck" type="button" id="idDoubleCheck" onclick="fn_idDoubleCheck();" value="N">중복확인</button>
            </div>
            <div class="form-group has-feedback">
                <label class="control-label" for="userPwd">패스워드</label>
                <input class="form-control" type="password" id="userPwd" name="userPwd" />
            </div>
            <div class="form-group has-feedback">
                <label class="control-label" for="userName">이름</label>
                <input class="form-control" type="text" id="userName" name="userName" />
            </div>
            <div class="form-group has-feedback">
                <label class="control-label" for="email">이메일</label>
                <input class="form-control" type="email" id="email" name="email" />
            </div>
            <div class="form-group has-feedback">
                <label class="control-label" for="phone">휴대폰 번호</label>
                <input class="form-control" type="tel" id="phone" name="phone" />
            </div>
            <div class="form-group has-feedback">
                <label class="control-label" for="dateOfBirth">생년월일</label>
                <input class="form-control" type="date" id="dateOfBirth" name="dateOfBirth" />
            </div>
            <div class="form-group has-feedback">
                <button class="btn btn-success" type="submit" id="signUp">회원가입</button>
                <button class="cencle btn btn-danger" type="button" id="cancel">취소</button>
            </div>
        </form>
    </section>
</div>
</body>
</html>