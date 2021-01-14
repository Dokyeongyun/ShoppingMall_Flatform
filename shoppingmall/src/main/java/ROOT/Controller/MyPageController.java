package ROOT.Controller;

import ROOT.Service.MemberService;
import ROOT.Service.OrderService;
import ROOT.Service.ProductService;
import ROOT.VO.MemberVO;
import ROOT.VO.OrderVO;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
@RequestMapping("/myPage")
public class MyPageController {

    @Inject
    MemberService memberService;
    @Inject
    ProductService productService;
    @Inject
    OrderService orderService;

    /**
     * 주문내역 조회 화면
     */
    @GetMapping("/orderList")
    public Model orderListView(HttpSession session, Model model){
        if(session.getAttribute("loginMember") == null){
            return model;
        }
        List<OrderVO> orderList = orderService.getOrderList((MemberVO)session.getAttribute("loginMember"));
        System.out.println(orderList);

        model.addAttribute("orderList", orderList);
        return model;
    }

    /**
     * 회원정보 수정 화면
     */
    @GetMapping("/changeInfo")
    public String changeInfoView(Model model) { return "myPage/changeInfo"; }

    /**
     * 회원정보 수정 작업 수행
     */
    @ResponseBody
    @PostMapping("/changeInfo")
    public String changeInfo(MemberVO vo, HttpSession session) {
        if(memberService.changeInfo(vo) == 1){
            session.invalidate();
            return "success";
        }
        return "false";
    }
}
