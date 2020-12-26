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
				if($("#admId").val()==""){
					alert("아이디를 입력해주세요.");
					$("#admId").focus();
					return false;
				}
				if($("#admPwd").val()==""){
					alert("비밀번호를 입력해주세요.");
					$("#admPwd").focus();
					return false;
				}
				if($("#admName").val()==""){
					alert("이름을 입력해주세요.");
					$("#admName").focus();
					return false;
				}
				if($("#admEmail").val()==""){
					alert("이메일을 입력해주세요.");
					$("#admEmail").focus();
					return false;
				}
				if($("#admPhone").val()==""){
					alert("휴대폰번호를 입력해주세요.");
					$("#admPhone").focus();
					return false;
				}
				if($("#admDateOfBirth").val()==""){
					alert("생년월일을 입력해주세요.");
					$("#admDateOfBirth").focus();
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
				url : "/admin/idDoubleCheck",
				type : "post",
				dataType : "json",
				data : {"admId" : $("#admId").val()},
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
        <form role="form" method="post" action="${pageContext.request.contextPath}/admin/signUp">
            <div class="form-group has-feedback">
                <label class="control-label" for="admId">아이디</label>
                <input class="form-control" type="text" id="admId" name="admId" />
                <button class ="idDoubleCheck" type="button" id="idDoubleCheck" onclick="fn_idDoubleCheck();" value="N">중복확인</button>
            </div>
            <div class="form-group has-feedback">
                <label class="control-label" for="admPwd">패스워드</label>
                <input class="form-control" type="password" id="admPwd" name="admPwd" />
            </div>
            <div class="form-group has-feedback">
                <label class="control-label" for="admName">이름</label>
                <input class="form-control" type="text" id="admName" name="admName" />
            </div>
            <div class="form-group has-feedback">
                <label class="control-label" for="admEmail">이메일</label>
                <input class="form-control" type="email" id="admEmail" name="admEmail" />
            </div>
            <div class="form-group has-feedback">
                <label class="control-label" for="admPhone">휴대폰 번호</label>
                <input class="form-control" type="tel" id="admPhone" name="admPhone" />
            </div>
            <div class="form-group has-feedback">
                <label class="control-label" for="admDateOfBirth">생년월일</label>
                <input class="form-control" type="date" id="admDateOfBirth" name="admDateOfBirth" />
            </div>
            <div class="form-group has-feedback">
                <button class="btn btn-success" type="submit" id="signUp">회원가입</button>
                <button class="cancel btn btn-danger" type="button" id="cancel">취소</button>
            </div>
        </form>
    </section>
</div>
</body>
</html>