<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

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
