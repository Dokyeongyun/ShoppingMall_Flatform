package ROOT.DAO;

import ROOT.VO.AdminVO;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import javax.inject.Inject;

@Repository
public class AdminDAOImpl implements AdminDAO {

    @Inject
    private SqlSession sqlSession;

    /**
     * 회원가입
     * @param adminVO 회원가입 시 입력 정보
     */
    public void insertMember(AdminVO adminVO) {
        sqlSession.insert("adminMapper.insertMember", adminVO);
    }

    /**
     * 로그인
     */
    public AdminVO login(AdminVO adminVO) {
        return sqlSession.selectOne("adminMapper.login", adminVO);
    }

    /**
     * 회원정보 변경
     */
    public void changeInfo(AdminVO adminVO){
        sqlSession.update("adminMapper.changeInfo", adminVO);
    }

    /**
     * 아이디 중복확인
     */
    public int idDoubleCheck(AdminVO adminVO){
        return sqlSession.selectOne("adminMapper.idDoubleCheck", adminVO);
    }

    /**
     * 회원 탈퇴
     */
    public void memberWithdraw(AdminVO adminVO){
        sqlSession.delete("adminMapper.memberWithdraw", adminVO);
    }
}
