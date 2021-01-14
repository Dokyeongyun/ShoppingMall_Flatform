package ROOT.Service;

import ROOT.DAO.MemberDAO;
import ROOT.VO.MemberVO;
import org.springframework.stereotype.Service;

import javax.inject.Inject;

@Service
public class MemberServiceImpl implements MemberService {

    @Inject
    private MemberDAO memberDAO;

    /**
     * 회원가입
     * @param memberVO 회원가입 시 입력 정보
     */
    public void insertMember(MemberVO memberVO) {
        memberDAO.insertMember(memberVO);
    }

    /**
     * 로그인
     */
    public MemberVO login(MemberVO memberVO) {
        return memberDAO.login(memberVO);
    }

    /**
     * 회원정보 수정
     */
    public int changeInfo(MemberVO memberVO) {
        return memberDAO.changeInfo(memberVO);
    }

    /**
     * 아이디 중복확인
     */
    public int idDoubleCheck(MemberVO memberVO){
        return memberDAO.idDoubleCheck(memberVO);
    }

    /**
     * 회원 탈퇴
     */
    public void memberWithdraw(MemberVO memberVO){
        memberDAO.memberWithdraw(memberVO);
    }

    /**
     * 회원정보 가져오기
     */
    public MemberVO getMemberInfo(MemberVO memberVO){
        return memberDAO.getMemberInfo(memberVO);
    }
}
