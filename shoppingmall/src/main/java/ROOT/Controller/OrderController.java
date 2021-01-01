package ROOT.Controller;

import ROOT.VO.MemberVO;
import ROOT.VO.OrderVO;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.servlet.http.HttpSession;

@Controller
@RequestMapping("/order")
public class OrderController {

    @PostMapping("/directOrder")
    public String directOrder(HttpSession session, OrderVO orderVO, RedirectAttributes redirectAttributes){
        if(session.getAttribute("member")==null){
            return "/member/loginView";
        }
        MemberVO loginMember = (MemberVO) session.getAttribute("member");
        orderVO.setMemberId(loginMember.getUserId());

        redirectAttributes.addFlashAttribute("orderInfo", orderVO);
        return "redirect:/order/orderForm";
    }

    @GetMapping("/orderForm")
    public void orderForm(OrderVO orderVO){
        System.out.println(orderVO.getQuantity());
        System.out.println(orderVO.getPdtId());
        System.out.println(orderVO.getMemberId());
    }
}
