package ROOT.Controller;

import ROOT.Service.MemberService;
import ROOT.VO.MemberVO;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
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

    @RequestMapping(value = "/loginView", method = RequestMethod.GET)
    public void loginView(){ }

    /**
     * 로그아웃
     */
    @RequestMapping(value = "/logout", method = RequestMethod.GET)
    public String logout(HttpSession session) {
        session.invalidate();
        return "redirect:/";
    }

    /**
     * 로그인 작업 수행
     */
    @RequestMapping(value = "/login", method = RequestMethod.POST)
    public String login(MemberVO vo, HttpServletRequest req, RedirectAttributes rttr) {
        HttpSession session = req.getSession();
        MemberVO loginMember = service.login(vo);

        if(loginMember == null) {
            session.setAttribute("member", null);
            rttr.addFlashAttribute("msg", false);
            return "redirect:/member/loginView";
        }else {
            session.setAttribute("member", loginMember);
        }

        return "redirect:/";
    }

    /**
     * 회원정보 수정 화면
     */
    @RequestMapping(value="/changeInfoView", method = RequestMethod.GET)
    public void changeInfoView() { }

    /**
     * 회원정보 수정 작업 수행
     */
    @RequestMapping(value="/changeInfo", method = RequestMethod.POST)
    public String changeInfo(MemberVO vo, HttpSession session) {
        service.changeInfo(vo);
        session.invalidate();
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
        return "redirect:/";
    }
}
