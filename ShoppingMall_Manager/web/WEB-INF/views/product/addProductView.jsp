<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<jsp:include page="/WEB-INF/views/mainHeader.jsp"/>

    <!--right main menu-->
    <div class="right_main_menu">
        <div class="page_title_wrap">
            <div class="page_title">상품등록</div>
        </div>
        <div class="content_top">
            <div class="notice_box">
                <ul class="notice_ul">
                    <li class="notice_li">
                        * 표시된 항목은 필수 입력 요소입니다.
                    </li>
                </ul>
            </div>
        </div>
        <div class="content_bottom">
            <form id="productForm">
                <div class="content_bottom_item">
                    <div class="table_title_area">
                        <div class="table_title">기본정보</div>
                    </div>
                    <div class="table_content_area">
                        <table class="table_content">
                            <colgroup>
                                <col width="161px">
                                <col>
                                <col width="161px">
                                <col>
                            </colgroup>
                            <tbody>
                            <tr>
                                <th class="must">상품군</th>
                                <td colspan="3">
                                    <div class="radio_wrap">
                                        <input type="radio" value="DELIVERY" name="groupType" id="groupType_1" class="{{class}}" checked="checked">
                                        <label for="groupType_1">배송상품군</label>
                                        <input type="radio" value="SERVICE" name="groupType" id="groupType_2" class="{{class}}">
                                        <label for="groupType_2">서비스상품군</label>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <th class="must">카테고리</th>
                                <td colspan="3">
                                    <label class="td_txt" for="pdtCategory"></label><br>
                                    <input class="medium" type="text" id="pdtCategory" name="pdtCategory" placeholder="카테고리 입력" maxlength="20" value=""/>
                                    <span class="description">카테고리를 입력해주세요. ex) 상의, 하의, 아우터 등</span>
                                </td>
                            </tr>
                            <tr>
                                <th class="must">상품명</th>
                                <td colspan="3">
                                    <label class="td_txt" for="pdtName"></label><br>
                                    <input class="medium" type="text" id="pdtName" name="pdtName" placeholder="상품명 입력" maxlength="100" value=""/>
                                    <span class="description">상품명에 \, &amp;, &lt;, &gt;, ', " 문자는 입력할 수 없습니다.</span>
                                </td>
                            </tr>
                            <tr>
                                <th class="must">상품설명</th>
                                <td colspan="3">
                                    <label class="td_txt" for="pdtDetail"></label><br>
                                    <textarea cols="80" rows="10" id="pdtDetail" name="pdtDetail" placeholder="상품에 대한 설명을 작성해주세요."></textarea>
                                    <span class="description">상품설명에 \, &amp;, &lt;, &gt;, ', " 문자는 입력할 수 없습니다.</span>
                                </td>
                            </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
                <div class="content_bottom_item">
                    <div class="table_title_area">
                        <div class="table_title">판매정보</div>
                    </div>
                    <div class="table_content_area">
                        <table class="table_content">
                            <colgroup>
                                <col width="161px">
                                <col>
                                <col width="161px">
                                <col>
                            </colgroup>
                            <tbody>
                            <tr>
                                <th class="must">판매기간</th>
                                <td colspan="3">
                                    <div class="radio_wrap">
                                        <input type="radio" value="REGULAR" name="salePeriodType" id="salePeriodType_1" class="{{class}}" checked="checked">
                                        <label for="salePeriodType_1">상시판매</label>
                                        <input type="radio" value="PERIOD" name="salePeriodType" id="salePeriodType_2" class="{{class}}">
                                        <label for="salePeriodType_2">기간판매</label>
                                    </div>
                                    <div class="date-picker_area" data-period-standard="start" id="salePeriodArea" style="padding-top: 10px">
                                        <span class="period_wrap">
                                            <button type="button" onclick="fn_setPeriod(this.value)" value="0">오늘</button>
                                            <button type="button" onclick="fn_setPeriod(this.value)" value="7">7일</button>
                                            <button type="button" onclick="fn_setPeriod(this.value)" value="30">30일</button>
                                            <button type="button" onclick="fn_setPeriod(this.value)" value="60">60일</button>
                                            <button type="button" onclick="fn_setPeriod(this.value)" value="90">90일</button>
                                        </span>
                                    </div>
                                    <div class="date-picker_area" style="margin-top: 10px">
                                        <span>
                                            <input type="date" class="date_time_picker" id="period_start_date">
                                            <input type="time" class="date_time_picker" id="period_start_time">
                                        </span>
                                        <span> ~ </span>
                                        <span>
                                            <input type="date" class="date_time_picker" id="period_end_date">
                                            <input type="time" class="date_time_picker" id="period_end_time">
                                        </span>
                                    </div>
                                    <span class="description">기간 판매 설정 시, 판매 예정인 상품을 미리 등록 가능하되 지정한 날짜 외에는 구매 불가 상태로 노출됩니다.</span>
                                </td>
                            </tr>
                            <tr>
                                <th class="must">판매가</th>
                                <td colspan="3">
                                    <span class="input_area">
                                        <input type="text" class="small" data-type="price"
                                                   name="salePrice" placeholder="숫자만 입력" maxlength="11"
                                                   id="salePrice" data-cut-firstdigit="true" value="">
                                        <span class="td_txt">원</span>
                                    </span>
                                </td>
                            </tr>
                            <tr>
                                <th class="must">재고수량</th>
                                <td colspan="3">
                                    <span class="inputbox_wrap">
                                        <input type="text" class="ncp_input comma inputValueCheck small"
                                               data-type="stock" name="productStockCnt" id="productStockCnt"
                                               placeholder="숫자만 입력" maxlength="10" value="">
                                        <span class="td_txt">개</span>
                                    </span>
                                    <span class="description">옵션 설정 시, 옵션 별 재고수량이 자동으로 합산됩니다.</span>
                                </td>
                            </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </form>
            <div id="bottomConfirmBtnWrap" class="btn_wrap">
                <button class="medium" id="save" type="button">저장</button>
                <button class="medium" id="cancelBtn" type="button">취소</button>
            </div>
        </div>
    </div>
    <!--//right main menu-->

<script>
    var period_start_date_obj = document.getElementById('period_start_date');
    var period_start_time_obj = document.getElementById('period_start_time');
    var period_end_date_obj = document.getElementById('period_end_date');
    var period_end_time_obj = document.getElementById('period_end_time');

    var tDate = new Date();
    tDate.setHours(tDate.getHours()+9);

    period_start_date_obj.value = tDate.toISOString().slice(0, 10);
    period_start_time_obj.value = tDate.toISOString().slice(11, 16);
    period_end_time_obj.value = "23:59";

    $(document).ready(function(){
        // 라디오버튼 클릭시 이벤트 발생
        $("input:radio[name=salePeriodType]").click(function(){
            var value = $("input[name=salePeriodType]:checked").val();
            if(value === "REGULAR"){
                $(".date-picker_area").css("display","none");
            } else if(value === "PERIOD"){
                $(".date-picker_area").css("display","block");
            }
        });
        $("#save").click(function(){
            // 입력값 검사
            // DB insert
            // 상품 리스트 화면으로 이동
        });
        $("#cancelBtn").click(function(){
            history.back();
        });
    });

    function fn_setPeriod(clicked_value) {
        var cDate = new Date();
        cDate.setHours(cDate.getHours() + (clicked_value*24) + 9);
        period_end_date_obj.value = cDate.toISOString().slice(0,10);
        return false;
    }
</script>
</div>
</body>
</html>
