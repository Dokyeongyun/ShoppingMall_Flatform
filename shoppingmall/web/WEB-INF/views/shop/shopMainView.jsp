<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<jsp:include page="/WEB-INF/views/header.jsp"/>

<html>
<head>
    <title>DKY's SHOP 상품보기</title>
</head>
<body>
<div style="clear: both; position: relative; width: 100%; min-height: 100%">

    <!--left drawer menu-->
    <div style="position: absolute; width: 100%">
        <a href="javascript:void(0)" id="left_menu_btn"
           style="position: absolute; top: -1px; left: 20%; background: #fff; z-index: 99;"
           onclick="toggleLeftMenu(); return false;">
            <img src="${pageContext.request.contextPath}/resources/img/menu_handle.PNG" alt="메뉴"/>
        </a>
    </div>
    <!--//left drawer menu-->

    <script>
        $(document).ready(function() {
		    $("#hotProduct").on("click", function(){
                $('#productListContent').addClass('hidden');
                $('#hotProductContent').removeClass('hidden');

                $('#hotProduct').addClass('active');
                $('#productList').removeClass('active');
		    })
            $("#productList").on("click", function(){
                $('#hotProductContent').addClass('hidden');
                $('#productListContent').removeClass('hidden');

                $('#hotProduct').removeClass('active');
                $('#productList').addClass('active');
            })
        });
    </script>

    <!--left main menu-->
    <div class="left_main_menu">
        <!--Tab Menu List-->
        <div>
            <ul>
                <li class="btn active" id="hotProduct">인기상품</li>
                <li class="btn" id="productList">상품목록</li>
            </ul>
            <div id="hotProductContent">
                <nav style="margin: 8px 15px 0 15px">
                    <!--for문 적용하기-->
                    <div>
                        <div>
                            <a href="javascript:void(0)" onclick="return false;">
                                <strong>인기상품</strong>
                                <span>Best</span>
                            </a>
                        </div>
                    </div>
                </nav>
            </div>
            <div id="productListContent" class="hidden">
                <nav style="margin: 8px 15px 0 15px">
                    <!--for문 적용하기-->
                    <div>
                        <div>
                            <a href="javascript:void(0)" onclick="return false;">
                                <strong>상품목록</strong>
                            </a>
                        </div>
                    </div>
                </nav>
            </div>
        </div>
        <!--//Tab Menu List-->
    </div>
    <!--//left main menu-->

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
                                <a href="/">
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

<style>
    .ul_horizontal {
        list-style: none;
        display: flex;
        background: white;
        padding-left: 0;
        margin-left: 20px;
        margin-bottom: 0;
        border: 1px solid #ddd;
    }
    .li_horizontal {
        float: left;
        background-color: white;
        width: 200px;
        padding: 20px;
        border-right: 1px solid #ddd;
    }
    .right_main_menu {
        position: absolute;
        left: 20%;
        width: 80%;
        min-width: max-content;
        min-height: 100%;
        background-color: white;
    }
    .left_main_menu {
        padding-top: 20px;
        float: left;
        width: 20%;
        min-height: 100%;
        border-right: 1px solid #dddddd;
        display: block;
    }
    .product_img {
        max-width: 100%;
        object-fit: cover;
        height: 300px;
    }
    .product_img_wrap {
        height: 300px;
    }
    .product_Info {
        margin-top: 10px;
    }
</style>
