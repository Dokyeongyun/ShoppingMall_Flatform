<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<jsp:include page="/WEB-INF/views/header.jsp"/>
<jsp:include page="/WEB-INF/views/myPageHeader.jsp"/>

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
    </formform:form>
</section>
</body>
</html>