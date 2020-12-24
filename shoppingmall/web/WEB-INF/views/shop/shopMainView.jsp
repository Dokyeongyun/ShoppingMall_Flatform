<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<jsp:include page="/WEB-INF/views/header.jsp"/>

<html>
<head>
    <title>DKY's SHOP 상품보기</title>
</head>
<body>
<div style="clear: both; position: relative; width: 100%;">

    <!--left drawer menu-->
    <div style="position: absolute">
        <a href="javascript:void(0)" id="left_menu_btn"
           style="position: absolute; top: -1px; left: 270px; background: #fff; z-index: 99;"
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
    <div class="left_main_menu" style="padding-top: 20px; float: left; width: 270px; height: 100%; border-right: 1px solid #dddddd; display: block;">
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
    <div class="right_main_menu" style="position: absolute; left: 270px;">
        <div style="margin-left: 50px">
            <strong>상품 진열하기!</strong>
        </div>
    </div>
    <!--//right main menu-->
</div>
</body>
</html>

