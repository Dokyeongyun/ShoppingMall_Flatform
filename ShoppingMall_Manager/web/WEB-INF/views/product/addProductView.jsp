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
            <form id="productForm" method="post" action="${pageContext.request.contextPath}/product/addProduct">
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
                                        <input type="radio" value="DELIVERY" name="pdtGroupType" id="groupType_1" class="{{class}}" checked="checked">
                                        <label for="groupType_1">배송상품군</label>
                                        <input type="radio" value="SERVICE" name="pdtGroupType" id="groupType_2" class="{{class}}">
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
                                        <input type="radio" value="REGULAR" name="pdtPeriodType" id="salePeriodType_1" class="{{class}}" checked="checked">
                                        <label for="salePeriodType_1">상시판매</label>
                                        <input type="radio" value="PERIOD" name="pdtPeriodType" id="salePeriodType_2" class="{{class}}">
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
                                            <input type="date" class="date_time_picker" name="pdtSaleStartDate" id="pdtSaleStartDate">
                                            <input type="time" class="date_time_picker" name="pdtSaleStartTime" id="pdtSaleStartTime">
                                        </span>
                                        <span> ~ </span>
                                        <span>
                                            <input type="date" class="date_time_picker" name="pdtSaleEndDate" id="pdtSaleEndDate">
                                            <input type="time" class="date_time_picker" name="pdtSaleEndTime" id="pdtSaleEndTime">
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
                                                   name="pdtPrice" placeholder="숫자만 입력" maxlength="11"
                                                   id="pdtPrice" data-cut-firstdigit="true" value="">
                                        <span class="td_txt">원</span>
                                    </span>
                                </td>
                            </tr>
                            <tr>
                                <th class="must">재고수량</th>
                                <td colspan="3">
                                    <span class="inputbox_wrap">
                                        <input type="text" class="small"
                                               data-type="stock" name="pdtStockCnt" id="pdtStockCnt"
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
                <div id="bottomConfirmBtnWrap" class="btn_wrap">
                    <button class="medium" id="save" type="submit">저장</button>
                    <button class="medium" id="cancelBtn" type="button">취소</button>
                </div>
            </form>
        </div>
    </div>
    <!--//right main menu-->

<script>
    var pdtSaleStartDate_obj = document.getElementById('pdtSaleStartDate');
    var pdtSaleStartTime_obj = document.getElementById('pdtSaleStartTime');
    var pdtSaleEndDate_obj = document.getElementById('pdtSaleEndDate');
    var pdtSaleEndTime_obj = document.getElementById('pdtSaleEndTime');

    var pdtPeriodType = "REGULAR";

    var tDate = new Date();
    tDate.setHours(tDate.getHours()+9);

    // 판매 시작기간에 현재 날짜, 시간 설정
    pdtSaleStartDate_obj.value = tDate.toISOString().slice(0, 10);
    pdtSaleStartTime_obj.value = tDate.toISOString().slice(11, 16);
    // 판매 종료시간 설정
    pdtSaleEndDate_obj.value = tDate.toISOString().slice(0, 10);
    pdtSaleEndTime_obj.value = "23:59";

    $(document).ready(function(){
        // 라디오버튼 클릭시 이벤트 발생
        $("input:radio[name=pdtPeriodType]").click(function(){
            pdtPeriodType = $("input[name=pdtPeriodType]:checked").val();
            if(pdtPeriodType === "REGULAR"){
                $(".date-picker_area").css("display","none");
            } else if(pdtPeriodType === "PERIOD"){
                $(".date-picker_area").css("display","block");
            }
        });
        $("#save").click(function(){
            tDate = new Date();
            tDate.setHours(tDate.getHours()+9);

            var pdtGroupType = $('input[name="pdtGroupType"]:checked').val();
            var pdtCategory = $('input[name="pdtCategory"]').val();
            var pdtName = $('input[name="pdtName"]').val();
            var pdtDetail = $('textarea[name="pdtDetail"]').val();
            var pdtPrice = $('input[name="pdtPrice"]').val();
            var pdtStockCnt = $('input[name="pdtStockCnt"]').val();

            if(pdtGroupType==="" || pdtCategory==="" || pdtName==="" ||
                pdtDetail==="" || pdtPrice==="" ||pdtStockCnt==="" ||
                pdtSaleStartDate_obj.value==="" || pdtSaleStartTime_obj.value==="" ||
                pdtSaleEndDate_obj.value==="" || pdtSaleEndTime_obj.value===""
            ){
                alert("필수 정보를 모두 입력해주세요.")
                return false;
            }

            // 판매기간 입력값 검사
            if(pdtSaleStartDate_obj.value > pdtSaleEndDate_obj.value){
                alert("판매 시작일자가 판매 종료일자보다 클 수 없습니다.")
                return false;
            } else if(pdtSaleStartDate_obj.value === pdtSaleEndDate_obj.value) {
                if(pdtSaleStartTime_obj.value > pdtSaleEndTime_obj.value){
                    alert("판매 시작시간이 판매 종료시간보다 클 수 없습니다.")
                    return false;
                }
            } else {
                $('#save').submit();
            }
        });

        $("#cancelBtn").click(function(){
            history.back();
        });
    });

    function fn_setPeriod(clicked_value) {
        tDate = new Date();
        tDate.setHours(tDate.getHours()+9);
        pdtSaleStartDate_obj.value = tDate.toISOString().slice(0, 10);
        pdtSaleStartTime_obj.value = tDate.toISOString().slice(11, 16);

        tDate.setHours(tDate.getHours() + (clicked_value*24));
        pdtSaleEndDate_obj.value = tDate.toISOString().slice(0,10);
        return false;
    }
</script>
</div>
</body>
</html>
