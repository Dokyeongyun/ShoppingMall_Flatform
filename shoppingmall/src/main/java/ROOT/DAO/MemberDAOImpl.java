package ROOT.DAO;

import ROOT.VO.MemberVO;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import javax.inject.Inject;

@Repository
public class MemberDAOImpl implements MemberDAO {

    @Inject
    private SqlSession sqlSession;

    /**
     * 회원가입
     * @param memberVO 회원가입 시 입력 정보
     */
    public void insertMember(MemberVO memberVO) {
        sqlSession.insert("memberMapper.insertMember", memberVO);
    }

    /**
     * 로그인
     */
    public MemberVO login(MemberVO memberVO) {
        return sqlSession.selectOne("memberMapper.login", memberVO);
    }

    /**
     * 회원정보 변경
     */
    public void changeInfo(MemberVO memberVO){
        sqlSession.update("memberMapper.changeInfo", memberVO);
    }

    /**
     * 아이디 중복확인
     */
    public int idDoubleCheck(MemberVO memberVO){
        return sqlSession.selectOne("memberMapper.idDoubleCheck", memberVO);
    }

    /**
     * 회원 탈퇴
     */
    public void memberWithdraw(MemberVO memberVO){
        sqlSession.delete("memberMapper.memberWithdraw", memberVO);
    }
}
