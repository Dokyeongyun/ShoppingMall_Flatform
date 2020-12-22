<%@ page import="ROOT.DAO.MemberDAO" %>
<%@ page import="ROOT.DAO.MemberDAOImpl" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<html>
<head>
    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
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
			});
		})
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