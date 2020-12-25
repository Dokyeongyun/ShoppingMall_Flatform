package ROOT.Controller;

import ROOT.Service.AdminService;
import ROOT.VO.AdminVO;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

@Controller
@RequestMapping(value = "/admin")
public class AdminController {

    @Inject
    AdminService service;

    /**
     * 회원가입 화면
     */
    @GetMapping("/signUpView")
    public void signUpView() { }

    /**
     * 회원가입 작업 수행
     */
    @PostMapping("/signUp")
    public String signUp(AdminVO adminVO) {
        int result = service.idDoubleCheck(adminVO);
        try {
            if(result == 1) { // 아이디 중복!
                return "/admin/signUp";
            }else if(result == 0) { // 사용가능
                service.insertMember(adminVO);
            }
        } catch (Exception e) {
            throw new RuntimeException();
        }
        return "redirect:/";
    }

    /**
     * 아이디 중복확인
     */
    @PostMapping("/idDoubleCheck")
    public @ResponseBody int idDoubleCheck(AdminVO adminVO){
        return service.idDoubleCheck(adminVO);
    }

    /**
     * 로그인 화면
     */
    @GetMapping("/loginView")
    public void loginView() { }

    /**
     * 로그인 작업 수행
     */
    @PostMapping("/login")
    public String login(AdminVO vo, HttpServletRequest req, RedirectAttributes rttr) {
        HttpSession session = req.getSession();
        AdminVO loginAdmin = service.login(vo);

        if(loginAdmin == null) {
            session.setAttribute("admin", null);
            rttr.addFlashAttribute("msg", false);
            return "redirect:/admin/loginView";
        }else {
            session.setAttribute("admin", loginAdmin);
        }

        return "redirect:/";
    }

    /**
     * 로그아웃
     */
    @GetMapping("/logout")
    public String logout(HttpSession session) {
        session.invalidate();
        return "redirect:/";
    }

    /**
     * 회원정보 수정 화면
     */
    @GetMapping("/changeInfoView")
    public void changeInfoView() { }

    /**
     * 회원정보 수정 작업 수행
     */
    @PostMapping("/changeInfo")
    public String changeInfo(AdminVO vo, HttpSession session) {
        service.changeInfo(vo);
        session.invalidate();
        return "redirect:/";
    }

    /**
     * 회원 탈퇴 화면
     */
    @GetMapping("/memberWithdrawView")
    public void memberWithdrawView() { }

    /**
     * 회원 탈퇴
     */
    @PostMapping("/memberWithdraw")
    public String memberWithdraw(AdminVO adminVO, HttpSession session, RedirectAttributes rttr) {
        AdminVO sessionUser = (AdminVO) session.getAttribute("admin");
        String sessionUserPwd = sessionUser.getAdmPwd();
        String inputPwd = adminVO.getAdmPwd();

        if(!(sessionUserPwd.equals(inputPwd))) {
            rttr.addFlashAttribute("msg", false);
            return "redirect:/admin/memberWithdrawView";
        }
        service.memberWithdraw(adminVO);
        session.invalidate();
        rttr.addFlashAttribute("msg", true);
        return "redirect:/admin/memberWithdrawView";
    }
}
