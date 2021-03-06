package ROOT.DAO;

import ROOT.VO.MemberVO;

public interface MemberDAO {

    /**
     * 회원가입
     */
    void insertMember(MemberVO memberVO);

    /**
     * 로그인
     */
    MemberVO login(MemberVO memberVO);

    /**
     * 회원정보 변경
     */
    int changeInfo(MemberVO memberVO);

    /**
     * 아이디 중복확인
     */
    int idDoubleCheck(MemberVO memberVO);

    /**
     * 회원 탈퇴
     */
    void memberWithdraw(MemberVO memberVO);

    /**
     * 회원정보 가져오기
     */
    MemberVO getMemberInfo(MemberVO memberVO);
}