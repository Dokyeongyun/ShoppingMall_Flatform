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

    void changeInfo(MemberVO memberVO);
}
