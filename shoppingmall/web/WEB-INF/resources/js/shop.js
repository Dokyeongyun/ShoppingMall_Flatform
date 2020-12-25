// 좌메뉴 토글
function toggleLeftMenu() {
    if($(".left_main_menu").css("display") == "none") {
        openLeftMenu();
    } else {
        closeLeftMenu();
    }
}

// 좌메뉴 열기
function openLeftMenu() {
    var left_area_obj = $(".left_main_menu");
    var left_menu_btn_obj = $("#left_menu_btn");
    var right_main_menu_obj = $(".right_main_menu");

    left_area_obj.show();
    left_menu_btn_obj.css("left", "20%");
    right_main_menu_obj.css({"left":"20%", "width":"80%"});
}

// 좌메뉴 닫기
function closeLeftMenu() {
    var left_area_obj = $(".left_main_menu");
    var left_menu_btn_obj = $("#left_menu_btn");
    var right_main_menu_obj = $(".right_main_menu");

    left_area_obj.hide();
    left_menu_btn_obj.css("left", "0px");
    right_main_menu_obj.css({"left":"0px", "width":"100%"});
}
