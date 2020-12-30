<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<jsp:include page="/WEB-INF/views/header.jsp"/>
<jsp:include page="/WEB-INF/views/leftMenu.jsp"/>

    <!--right main menu-->
    <div class="right_main_menu">
        <div style="margin-bottom: 20px; width: 100%; min-height: 100px; background-color: white; border-bottom: 2px solid #2e6da4"></div>
        <div>
            <c:set var="listSize" value="${products.size()}"/>
            <c:set var="numPerLine" value="6"/>
            <c:forEach var="i" items="${products}" begin="0" end="${listSize}" step="${numPerLine}" varStatus="status">
                <ul class="ul_horizontal">
                    <c:forEach var="list" items="${products}" begin="${status.index}" end="${status.index+numPerLine-1}">
                        <li class="li_horizontal">
                            <div>
                                <a href="/shop/productDetail/${list.pdtId}">
                                    <div class="product_img_wrap">
                                        <img class="product_img" src="${list.pdtImageURL}" alt="상품이미지"/>
                                    </div>
                                </a>
                                <div class="product_Info">
                                    <p>${list.pdtName}</p>
                                    <p><strong>${list.pdtPrice} 원</strong></p>
                                </div>
                            </div>
                        </li>
                    </c:forEach>
                </ul>
            </c:forEach>
        </div>
    </div>
    <!--//right main menu-->
</div>
</body>
</html>

