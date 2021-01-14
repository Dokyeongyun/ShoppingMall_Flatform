package ROOT.Controller;

import ROOT.Service.MemberService;
import ROOT.VO.MemberVO;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

@Controller
@RequestMapping("/member")
public class MemberController {

    @Inject
    MemberService service;

    /**
     * 회원가입 화면
     */
    @RequestMapping(value = "/signUpView", method = RequestMethod.GET)
    public void signUpView() { }

    /**
     * 회원가입 작업 수행
     */
    @RequestMapping(value = "/signUp", method = RequestMethod.POST)
    public String signUp(MemberVO memberVO) {
        int result = service.idDoubleCheck(memberVO);
        try {
            if(result == 1) { // 아이디 중복!
                return "/member/signUp";
            }else if(result == 0) { // 사용가능
                service.insertMember(memberVO);
            }
        } catch (Exception e) {
            throw new RuntimeException();
        }
        return "redirect:/";
    }



    /**
     * 로그아웃
     */
    @RequestMapping(value = "/logout", method = RequestMethod.GET)
    public String logout(HttpSession session) {
        session.invalidate();
        return "redirect:/";
    }

    @ModelAttribute
    public MemberVO setMemberForm(){ return new MemberVO(); }

    /**
     * 로그인 화면
     */
    @GetMapping("/login")
    public String loginView(Model model){ return "/member/login"; }

    /**
     * 로그인 작업 수행
     */
    @PostMapping("/login")
    public String login(MemberVO vo, HttpSession session, RedirectAttributes rttr) {
        MemberVO loginMember = service.login(vo);

        if(loginMember == null) {
            session.setAttribute("member", null);
            rttr.addFlashAttribute("msg", false);
            return "redirect:/member/login";
        }

        rttr.addFlashAttribute("msg", true);
        session.setAttribute("loginMember", loginMember);

        return "redirect:/";
    }



    /**
     * 아이디 중복확인
     */
    @ResponseBody
    @RequestMapping(value="/idDoubleCheck", method = RequestMethod.POST)
    public int idDoubleCheck(MemberVO memberVO){
        return service.idDoubleCheck(memberVO);
    }

    /**
     * 회원 탈퇴 화면
     */
    @RequestMapping(value="/memberWithdrawView", method = RequestMethod.GET)
    public void memberWithdrawView() { }

    /**
     * 회원 탈퇴
     */
    @RequestMapping(value="/memberWithdraw", method = RequestMethod.POST)
    public String memberWithdraw(MemberVO memberVO, HttpSession session, RedirectAttributes rttr) {
        MemberVO sessionUser = (MemberVO) session.getAttribute("member");
        String sessionUserPwd = sessionUser.getUserPwd();
        String inputPwd = memberVO.getUserPwd();

        if(!(sessionUserPwd.equals(inputPwd))) {
            rttr.addFlashAttribute("msg", false);
            return "redirect:/member/memberWithdrawView";
        }
        service.memberWithdraw(memberVO);
        session.invalidate();
        rttr.addFlashAttribute("msg", true);
        return "redirect:/member/memberWithdrawView";
    }

    @ResponseBody
    @PostMapping("/getMemberInfo")
    public MemberVO getMemberInfo(MemberVO memberVO){
        return service.getMemberInfo(memberVO);
    }

    /**
     * 마이페이지
     */
    @GetMapping("/myPage")
    public void myPageView(){}
}
