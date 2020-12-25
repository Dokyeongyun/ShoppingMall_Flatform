package ROOT.DAO;

import ROOT.VO.AdminVO;

public interface AdminDAO {

    /**
     * 회원가입
     */
    void insertMember(AdminVO adminVO);

    /**
     * 로그인
     */
    AdminVO login(AdminVO adminVO);

    /**
     * 회원정보 변경
     */
    void changeInfo(AdminVO adminVO);

    /**
     * 아이디 중복확인
     */
    int idDoubleCheck(AdminVO adminVO);

    /**
     * 회원 탈퇴
     */
    void memberWithdraw(AdminVO adminVO);
}
