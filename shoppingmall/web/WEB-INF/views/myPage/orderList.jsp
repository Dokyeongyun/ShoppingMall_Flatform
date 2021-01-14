<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<jsp:include page="/WEB-INF/views/header.jsp"/>
<jsp:include page="/WEB-INF/views/myPageHeader.jsp"/>

    <!-- contents -->
    <section class="mypage-cont">
        <div>
            <div class="page_title">주문내역</div>
        </div>
        <table class="order_info_table">
            <colgroup>
                <col>
                <col style="width: 150px">
                <col style="width: 150px">
                <col style="width: 150px">
                <col style="width: 150px">
            </colgroup>
            <tbody>
            <tr>
                <th>상품 정보</th>
                <th>주문일자</th>
                <th>주문번호</th>
                <th>주문금액(수량)</th>
                <th>주문상태</th>
            </tr>
            <c:forEach var="orderList" items="${orderList}">
                <tr>
                    <td class="product_info_td" style="text-align: left">
                        <div class="product_info_img">
                            <a href="/shop/productDetail/${orderList.productVO.pdtId}" target="_blank">
                                <img class="product_info_img" src="${orderList.productVO.pdtImageURL}" alt="상품이미지">
                            </a>
                        </div>
                        <div class="product_info_detail">
                            <div style="line-height: 20px">${orderList.productVO.pdtName}</div>
                            <div style="line-height: 20px">옵션 : M</div>
                        </div>
                    </td>
                    <td class="product_info_td">${orderList.orderDate}</td>
                    <td class="product_info_td">${orderList.orderNo}</td>
                    <td class="product_info_td">${orderList.totalAmount} 원 <br>(${orderList.quantity}개)</td>
                    <td class="product_info_td">${orderList.orderStatusType}</td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
    </section>
    <!-- //contents -->
</div>
</body>
</html>
