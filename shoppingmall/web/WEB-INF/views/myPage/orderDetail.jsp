<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<jsp:include page="/WEB-INF/views/header.jsp"/>
<jsp:include page="/WEB-INF/views/myPageHeader.jsp"/>

    <!-- contents -->
    <section class="mypage-cont">
        <div class="page_title">주문 상세내역</div>
        <div style="padding: 10px 20px; line-height: 25px; font-weight: bolder;">
            <div>주문번호: ${orderDetail[0].orderId}</div>
            <div>주문일자: ${orderDetail[0].orderDate}</div>
        </div>
        <table class="order_info_table">
            <colgroup>
                <col>
                <col style="width: 150px">
                <col style="width: 150px">
                <col style="width: 150px">
            </colgroup>
            <tbody>
            <tr>
                <th>상품 정보</th>
                <th>주문금액</th>
                <th>수량</th>
                <th>주문상태</th>
            </tr>
            <c:forEach var="orderDetail" items="${orderDetail}">
                <tr>
                    <td class="product_info_td" style="text-align: left">
                        <div class="product_info_img">
                            <a href="/shop/productDetail/${orderDetail.productVO.pdtId}" target="_blank">
                                <img class="product_info_img" src="${orderDetail.productVO.pdtImageURL}" alt="상품이미지">
                            </a>
                        </div>
                        <div class="product_info_detail">
                            <div style="line-height: 20px">${orderDetail.productVO.pdtName}</div>
                            <div style="line-height: 20px">옵션 : M</div>
                        </div>
                    </td>
                    <td class="product_info_td">${orderDetail.totalAmount} 원</td>
                    <td class="product_info_td">${orderDetail.quantity} 개</td>
                    <td class="product_info_td">${orderDetail.orderStatusType}</td>
                </tr>
            </c:forEach>
            </tbody>
        </table>

        <div class="title_second">수령인 정보</div>
        <table class="order_info_table" style="width: 50%">
            <colgroup>
                <col style="width: 200px">
                <col>
            </colgroup>
            <tbody>
            <tr>
                <th>이름</th>
                <td>${orderDetail[0].recipientVO.recipientName}</td>
            </tr>
            <tr>
                <th>전화번호</th>
                <td>${orderDetail[0].recipientVO.recipientPhone}</td>
            </tr>
            <tr>
                <th>주소</th>
                <td>${orderDetail[0].recipientVO.recipientAddress}</td>
            </tr>
            <tr>
                <th>배송메모</th>
                <td>${orderDetail[0].recipientVO.recipientMemo}</td>
            </tr>
            </tbody>
        </table>

        <div class="title_second">결제 정보</div>
        <table class="order_info_table" style="width: 50%">
            <colgroup>
                <col style="width: 200px">
                <col>
            </colgroup>
            <tbody>
            <tr>
                <th>상품 합계</th>
                <td>${orderDetail[0].totalAmount} 원</td>
            </tr>
            <tr>
                <th>할인 합계</th>
                <td>-- 원</td>
            </tr>
            <tr>
                <th>최종 결제금액</th>
                <td>${orderDetail[0].totalAmount} 원</td>
            </tr>
            <tr>
                <th>결제수단</th>
                <td>${orderDetail[0].paymentType}</td>
            </tr>
            </tbody>
        </table>
    </section>
    <!-- //contents -->
</div>
</body>
</html>
