package ROOT.Service;

import ROOT.VO.MemberVO;

public interface MemberService {

    /**
     * 회원가입
     */
    void insertMember(MemberVO memberVO);

    /**
     * 로그인
     */
    MemberVO login(MemberVO memberVO);

    /**
     * 회원정보 수정
     */
    void changeInfo(MemberVO memberVO);

    /**
     * 아이디 중복확인
     */
    int idDoubleCheck(MemberVO memberVO);

    /**
     * 회원 탈퇴
     */
    void memberWithdraw(MemberVO memberVO);
}
