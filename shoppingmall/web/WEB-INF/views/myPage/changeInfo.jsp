<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<jsp:include page="/WEB-INF/views/header.jsp"/>
<jsp:include page="/WEB-INF/views/myPageHeader.jsp"/>

<script type="text/javascript">
    $(document).ready(function(){
        // 비밀번호 변경 창 toggle
        var change_password_area_obj = $("#change_password_area");
        var password_area_obj = $("#password_area");
        var password_obj = $("#password")
        var newPassword_obj = $("#newPassword")
        var confirmPassword_obj = $("#confirmPassword")
        // 비밀번호 변경 버튼 클릭
        $("#change_password_btn").on("click", function(){
            change_password_area_obj.show();
            password_area_obj.hide();
        });
        // 비밀번호 변경 취소
        $("#change_password_cancel_btn").on("click", function(){
            password_obj.val("");
            newPassword_obj.val("");
            confirmPassword_obj.val("");
            change_password_area_obj.hide();
            password_area_obj.show();
        });
        // 비밀번호 변경 작업 수행
        $("#change_password_finish_btn").on("click", function(){
            if(password_obj.val()!=${loginMember.userPwd}){
                alert("비밀번호가 일치하지 않습니다.");
                return false;
            }
            if(confirmPassword_obj.val()===newPassword_obj.val()){
                if (confirm("비밀번호를 변경하시겠습니까?")===true) {
                    fn_changePassword();
                } else {
                    return false;
                }
            }else{
                alert("신규 비밀번호와 비밀번호 확인이 같지 않습니다.");
                return false;
            }
        });
        $("#withdraw").on("click", function(){
            location.href = "/member/memberWithdrawView";
        })
        function fn_changePassword(){
            var memberVO = {
                userId : ${loginMember.userId},
                userPwd : newPassword_obj.val()
            };
            $.ajax({
                url : "/myPage/changeInfo",
                type : "post",
                dataType : "json",
                data : memberVO,
                success : function(data){
                    if(data==="success"){
                        alert("변경된 비밀번호로 다시 로그인해주세요.");
                        location.href="/member/login";
                    }else{
                        alert("비밀번호 변경에 실패했습니다. 잠시 후 다시 시도해주세요.");
                    }
                    console.log(data);
                }
            })
        }
    })
</script>

<section class="mypage-cont">
    <div>
        <div class="page_title">회원정보</div>
    </div>
    <form>
        <table class="userinfo_table">
            <colgroup>
                <col style="width:190px">
                <col style="">
                <col style="width:50%">
            </colgroup>
            <tbody>
            <tr>
                <th scope="row">아이디</th>
                <td colspan="2"><strong>${loginMember.userId}</strong></td>
            </tr>
            <tr id="password_area" style="">
                <th scope="row">비밀번호</th>
                <td><strong>********</strong></td>
                <td><button type="button" class="btn-sm btn-default" id="change_password_btn">비밀번호 변경</button></td>
            </tr>
            <!--비밀번호 변경-->
            <tr id="change_password_area" style="display: none;">
                <th scope="row">비밀번호</th>
                <td colspan="2">
                    <div class="info_modify">
                        <div class="input">
                            <label for="password">현재 비밀번호</label>
                            <input type="password" class="changeInfo_input_box" id="password">
                        </div>
                        <div class="input">
                            <label for="newPassword">신규 비밀번호</label>
                            <input type="password" class="changeInfo_input_box" id="newPassword"/>
                        </div>
                        <div class="input">
                            <label for="confirmPassword">신규 비밀번호 확인</label>
                            <input type="password" class="changeInfo_input_box" id="confirmPassword">
                        </div>
                        <div class="btn_group">
                            <button type="button" class="btn-sm btn-default" id="change_password_cancel_btn">취소</button>
                            <button type="button" class="btn-sm btn-default" id="change_password_finish_btn">완료</button>
                        </div>
                    </div>
                </td>
            </tr>
            <tr>
                <th scope="row">이름</th>
                <td><strong>${loginMember.userName}</strong></td>
            </tr>
            <tr id="email_area">
                <th scope="row">이메일</th>
                <td><strong id="currentEmail" value="${loginMember.email}">${loginMember.email}</strong></td>
                <td><button type="button" class="btn-sm btn-default" id="change_email_btn">이메일 변경</button></td>
            </tr>
            <!--이메일 인증-->
            <tr id="change_email_area" style="display: none">
                <th scope="row">이메일</th>
                <td colspan="2">
                    <div class="info_modify">
                        <div class="input">
                            <input type="text" class="changeInfo_input_box" placeholder="이메일 주소 입력" id="email" maxlength="50">
                            <button type="button" class="btn-sm" id="send_authentication_email" disabled="">인증</button>
                        </div>
                        <div class="input">
                            <input type="text" class="changeInfo_input_box" id="email_authTempKey" placeholder="인증번호 입력">
                        </div>
                        <div class="btn-group">
                            <button type="button" class="btn-sm btn-default" id="change_email_cancel_btn">취소</button>
                            <button type="button" class="btn-sm btn-default" id="change_email_finish_btn" disabled="">완료</button>
                        </div>
                    </div>
                </td>
            </tr>
            <tr id="mobile_area">
                <th scope="row">휴대전화</th>
                <td><strong>${loginMember.phone}</strong></td>
                <td><button type="button" class="btn-sm btn-default" id="change_mobile_btn">휴대전화 변경</button></td>
            </tr>
            </tbody>
        </table>
    </form>
</section>
</body>
</html>