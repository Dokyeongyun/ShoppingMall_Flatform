package ROOT.Controller;

import ROOT.Service.MemberService;
import ROOT.Service.OrderService;
import ROOT.Service.ProductService;
import ROOT.Service.RecipientService;
import ROOT.VO.MemberVO;
import ROOT.VO.OrderVO;
import ROOT.VO.ProductVO;
import ROOT.VO.RecipientVO;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

@Controller
@RequestMapping("/order")
public class OrderController {

    @Inject
    ProductService productService;
    @Inject
    MemberService memberService;
    @Inject
    RecipientService recipientService;
    @Inject
    OrderService orderService;

    @ModelAttribute
    public MemberVO setMemberForm(){ return new MemberVO(); }

    @PostMapping("/directOrder")
    public String directOrder(HttpSession session, ProductVO productVO, OrderVO orderVO, RedirectAttributes redirectAttributes){
        if(session.getAttribute("loginMember")==null){
            return "redirect:/member/login";
        }
        productVO = productService.getProductDetail(productVO);
        MemberVO loginMember = (MemberVO) session.getAttribute("member");
        loginMember = memberService.getMemberInfo(loginMember);

        orderVO.setProductVO(productVO);
        orderVO.setMemberVO(loginMember);
        System.out.println(orderVO);

        redirectAttributes.addFlashAttribute("orderInfo", orderVO);
        return "redirect:/order/orderForm";
    }

    @GetMapping("/orderForm")
    public void orderForm(){ }

    @ResponseBody
    @PostMapping("/payment")
    public String payment(OrderVO orderVO, RecipientVO recipientVO, ProductVO productVO, MemberVO memberVO){
        orderVO.setProductVO(productVO);
        orderVO.setMemberVO(memberVO);
        orderVO.setRecipientVO(recipientVO);

        System.out.println(orderVO);
        System.out.println(recipientVO);
        recipientVO.setUserId(memberVO.getUserId());

        // 수령자 정보 등록
        recipientService.addRecipient(recipientVO);
        // 주문 정보 등록
        orderService.addOrder(orderVO);


        return recipientVO.toString();
    }
}
