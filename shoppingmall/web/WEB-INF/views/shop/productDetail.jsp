<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<jsp:include page="/WEB-INF/views/header.jsp"/>
<jsp:include page="/WEB-INF/views/leftMenu.jsp"/>

    <!--right main menu-->
    <div class="right_main_menu">
        <div class="product_detail_wrap">
            <div class="product_detail_left">
                <div>
                    <img class="product_detail_img" src="${productDetail.pdtImageURL}" alt="상품이미지"/>
                </div>
            </div>
            <div class="product_detail_right">
                <div class="product_Info">
                    <div class="product_detail_pdtName">${productDetail.pdtName}</div>
                    <table class="product_detail_table">
                        <tbody>
                        <tr>
                            <td class="product_detail_table_left">상품번호</td>
                            <td>${productDetail.pdtId}</td>
                        </tr>
                        <tr>
                            <td class="product_detail_table_left">상세설명</td>
                            <td>${productDetail.pdtDetail}</td>
                        </tr>
                        <tr>
                            <td class="product_detail_table_left">판매기간</td>
                            <td>${productDetail.pdtSaleStartDate} ~ ${productDetail.pdtSaleEndDate}</td>
                        </tr>
                        <tr>
                            <td class="product_detail_table_left">판매가</td>
                            <td>${productDetail.pdtPrice} 원</td>
                        </tr>
                        <tr>
                            <td class="product_detail_table_left">재고수량</td>
                            <td>${productDetail.pdtStockCnt} 개</td>
                        </tr>
                        </tbody>
                    </table>
                    <div class="product_detail_btn_wrap">
                        <button class="product_detail_btn" id="buyNow" type="submit">BUY IT NOW</button>
                        <button class="product_detail_btn" id="addToCart" type="submit">ADD TO CART</button>
                        <button class="product_detail_btn" id="wishList" type="submit">WISH LIST</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--//right main menu-->
</div>
</body>
</html>


