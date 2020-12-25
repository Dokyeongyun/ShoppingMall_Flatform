<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<jsp:include page="/WEB-INF/views/header.jsp"/>

<html>
<head>
    <title>관리자 웹 애플리케이션</title>
</head>
<body>
<div style="clear: both; position: relative; width: 100%; min-height: 100%">
    <!--left drawer menu-->
    <div style="position: absolute; width: 100%">
        <a href="javascript:void(0)" id="left_menu_btn"
           style="position: absolute; top: -1px; left: 200px;; background: #fff; z-index: 99;"
           onclick="toggleLeftMenu(); return false;">
            <img src="${pageContext.request.contextPath}/resources/img/menu_handle.PNG" alt="메뉴"/>
        </a>
    </div>
    <!--//left drawer menu-->

    <!--좌측 네비게이션 드롭다운 메뉴 toggle-->
    <script>
        $(document).ready(function() {
            $(".main>li").on("click", function() {
                $(this).children(".sub").stop().slideDown();
            });
            $(".main>li").mouseleave(function() {
                $(this).children(".sub").stop().slideUp();
            });
        });
    </script>
    <!--//좌측 네비게이션 드롭다운 메뉴 toggle-->

    <!--left main menu-->
    <div class="left_main_menu">
        <div id="menu">
            <ul class="main">
                <li><a href="#">MENU1</a>
                    <ul class="sub">
                        <li><a href="#">SUB_MENU</a></li>
                        <li><a href="#">SUB_MENU2</a></li>
                        <li><a href="#">SUB_MENU3</a></li>
                    </ul>
                </li>
                <li><a href="#">MENU2</a>
                    <ul class="sub">
                        <li><a href="#">SUB_MENU</a></li>
                        <li><a href="#">SUB_MENU2</a></li>
                        <li><a href="#">SUB_MENU3</a></li>
                    </ul>
                </li>
                <li><a href="#">MENU3</a>
                    <ul class="sub">
                        <li><a href="#">SUB_MENU</a></li>
                        <li><a href="#">SUB_MENU2</a></li>
                        <li><a href="#">SUB_MENU3</a></li>
                    </ul>
                </li>
                <li><a href="#">MENU4</a>
                    <ul class="sub">
                        <li><a href="#">SUB_MENU</a></li>
                        <li><a href="#">SUB_MENU2</a></li>
                        <li><a href="#">SUB_MENU3</a></li>
                    </ul>
                </li>
                <li><a href="#">MENU5</a>
                    <ul class="sub">
                        <li><a href="#">SUB_MENU</a></li>
                        <li><a href="#">SUB_MENU2</a></li>
                        <li><a href="#">SUB_MENU3</a></li>
                    </ul>
                </li>
            </ul>
        </div>
    </div>
    <!--//left main menu-->

    <!--right main menu-->
    <div class="right_main_menu">

    </div>
    <!--//right main menu-->
</div>


</body>
</html>
