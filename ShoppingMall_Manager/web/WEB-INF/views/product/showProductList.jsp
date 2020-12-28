<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<jsp:include page="/WEB-INF/views/mainHeader.jsp"/>

    <!--right main menu-->
    <div class="right_main_menu">
        <div class="page_title_wrap">
            <div class="page_title">상품 리스트</div>
        </div>
        <div class="content_top">
        </div>
        <div class="content_bottom">
            <div class="content_bottom_item">
                <div class="table_title_area">
                    <div class="table_title">상품 리스트</div>
                </div>
                <div class="table_content_area">
                    <div class="table_content" style="overflow: scroll">
                        <table class="tg" style="table-layout: fixed; width: 1072px">
                            <colgroup>
                                <col style="width: 113px">
                                <col style="width: 78px">
                                <col style="width: 119px">
                                <col style="width: 175px">
                                <col style="width: 71px">
                                <col style="width: 71px">
                                <col style="width: 91px">
                                <col style="width: 71px">
                                <col style="width: 71px">
                                <col style="width: 102px">
                                <col style="width: 110px">
                            </colgroup>
                            <thead>
                            <tr>
                                <th class="tg-77c1">상품 이미지</th>
                                <th class="tg-77c1">상품번호</th>
                                <th class="tg-77c1">상품명</th>
                                <th class="tg-77c1">판매기간</th>
                                <th class="tg-77c1">판매상태</th>
                                <th class="tg-77c1">전시상태</th>
                                <th class="tg-77c1">판매가</th>
                                <th class="tg-77c1">재고수량</th>
                                <th class="tg-77c1">판매수량</th>
                                <th class="tg-77c1">카테고리</th>
                                <th class="tg-77c1">상품군</th>
                            </tr>
                            </thead>
                            <tbody>
                            <tr>
                                <td class="tg-nrix"></td>
                                <td class="tg-nrix">1</td>
                                <td class="tg-nrix">니트</td>
                                <td class="tg-nrix">2020-12-28 ~ 2020-12-30</td>
                                <td class="tg-nrix">판매중</td>
                                <td class="tg-nrix">전시중</td>
                                <td class="tg-nrix">15,000 원</td>
                                <td class="tg-nrix">7개</td>
                                <td class="tg-nrix">7개</td>
                                <td class="tg-nrix">상의</td>
                                <td class="tg-nrix">배송상품</td>
                            </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--//right main menu-->

<style type="text/css">
    .tg  {border-collapse:collapse;border-color:#ccc;border-spacing:0;}
    .tg td{background-color:#fff;border-color:#ccc;border-style:solid;border-width:1px;color:#333;
        font-family:Arial, sans-serif;font-size:14px;overflow:hidden;padding:10px 5px;word-break:normal;}
    .tg th{background-color:#f0f0f0;border-color:#ccc;border-style:solid;border-width:1px;color:#333;
        font-family:Arial, sans-serif;font-size:14px;font-weight:normal;overflow:hidden;padding:10px 5px;word-break:normal;}
    .tg .tg-77c1{font-family:Arial, Helvetica, sans-serif !important;;font-weight:bold;text-align:center;vertical-align:middle}
    .tg .tg-nrix{text-align:center;vertical-align:middle}
</style>
</div>
</body>
</html>
