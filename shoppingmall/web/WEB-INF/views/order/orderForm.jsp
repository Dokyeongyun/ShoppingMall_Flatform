<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<jsp:include page="/WEB-INF/views/header.jsp"/>
<jsp:include page="/WEB-INF/views/leftMenu.jsp"/>

<!--right main menu-->
<div class="right_main_menu">
    <div class="pagenation">
        <div class="nav_sub">
            <a href="/">상품 목록</a>
            <span class="icon_entity">&gt;</span>
            <span>주문서</span>
        </div>
    </div>
    <div class="page_title">
        Order/Payment
    </div>
    <div class="order_info_wrap">
        <div class="order_info_title_wrap">
            <div>
                <span class="order_info_title_Eng">Recipient Info</span>
                <span class="order_info_title_Kor">수령자 정보</span>
            </div>
        </div>
        <div class="order_info_content_wrap">
            <div class="order_info_content">
                <table class="order_info_table">
                    <tbody>
                    <tr>
                        <td class="order_info_table_left">수령인</td>
                        <td><div>
                            <input type="text" style="width: 100px" class="order_input_box" name="recipientName" value="" maxlength="10">
                        </div></td>
                    </tr>
                    <tr>
                        <td class="order_info_table_left">휴대전화</td>
                        <td><div>
                            <select class="order_input_box" name="mobile1">
                                <option value="">선택하세요</option>
                                <option value="010">010</option>
                                <option value="011">011</option>
                                <option value="016">016</option>
                                <option value="017">017</option>
                                <option value="018">018</option>
                                <option value="019">019</option>
                            </select>
                            - <input type="text" class="order_input_box" name="mobile2" value="" maxlength="4">
                            - <input type="text" class="order_input_box" name="mobile3" value="" maxlength="4">
                        </div></td>
                    </tr>
                    <tr>
                        <td class="order_info_table_left">전화번호</td>
                        <td><div>
                            <select class="order_input_box" name="phone1">
                                <option value="">선택하세요</option>
                                <option value="02">02</option>
                                <option value="031">031</option>
                                <option value="032">032</option>
                                <option value="033">033</option>
                                <option value="041">041</option>
                                <option value="042">042</option>
                                <option value="043">043</option>
                                <option value="044">044</option>
                                <option value="051">051</option>
                                <option value="052">052</option>
                                <option value="053">053</option>
                                <option value="054">054</option>
                                <option value="055">055</option>
                                <option value="061">061</option>
                                <option value="062">062</option>
                                <option value="063">063</option>
                                <option value="064">064</option>
                                <option value="010">010</option>
                                <option value="011">011</option>
                                <option value="016">016</option>
                                <option value="017">017</option>
                                <option value="018">018</option>
                                <option value="019">019</option>
                                <option value="070">070</option>
                            </select>
                            - <input type="text" class="order_input_box" name="phone2" value="" maxlength="4">
                            - <input type="text" class="order_input_box" name="phone3" value="" maxlength="4">
                        </div></td>
                    </tr>
                    <tr>
                        <td class="order_info_table_left">배송지 주소</td>
                        <td><div>
                            <input type="text" style="width: 300px" class="order_input_box" name="recipientAddress" value="" maxlength="10">
                        </div></td>
                    </tr>
                    <tr>
                        <td class="order_info_table_left">배송 메모</td>
                        <td><div>
                            <select class="order_input_box" style="width: 300px;" name="recipientMemo" id="recipientMemo">
                                <option value="">배송 시 요청사항을 선택해주세요</option>
                                <option value="부재 시 경비실에 맡겨주세요">부재 시 경비실에 맡겨주세요</option>
                                <option value="부재 시 택배함에 넣어주세요">부재 시 택배함에 넣어주세요</option>
                                <option value="부재 시 집 앞에 놔주세요">부재 시 집 앞에 놔주세요</option>
                                <option value="배송 전 연락 바랍니다">배송 전 연락 바랍니다</option>
                                <option value="파손의 위험이 있는 상품입니다. 배송 시 주의해주세요">파손의 위험이 있는 상품입니다. 배송 시 주의해주세요</option>
                            </select>
                        </div></td>
                    </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </div>

    ${orderInfo}
</div>
<!--//right main menu-->
</div>
</body>
</html>


