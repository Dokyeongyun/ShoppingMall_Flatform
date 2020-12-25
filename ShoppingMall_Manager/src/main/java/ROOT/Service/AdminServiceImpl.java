package ROOT.Service;

import ROOT.DAO.AdminDAO;
import ROOT.VO.AdminVO;
import org.springframework.stereotype.Service;

import javax.inject.Inject;

@Service
public class AdminServiceImpl implements AdminService {

    @Inject
    private AdminDAO adminDAO;

    /**
     * 회원가입
     * @param adminVO 회원가입 시 입력 정보
     */
    public void insertMember(AdminVO adminVO) {
        adminDAO.insertMember(adminVO);
    }

    /**
     * 로그인
     */
    public AdminVO login(AdminVO adminVO) {
        return adminDAO.login(adminVO);
    }

    /**
     * 회원정보 수정
     */
    public void changeInfo(AdminVO adminVO) {
        adminDAO.changeInfo(adminVO);
    }

    /**
     * 아이디 중복확인
     */
    public int idDoubleCheck(AdminVO adminVO){
        return adminDAO.idDoubleCheck(adminVO);
    }

    /**
     * 회원 탈퇴
     */
    public void memberWithdraw(AdminVO adminVO){
        adminDAO.memberWithdraw(adminVO);
    }
}
