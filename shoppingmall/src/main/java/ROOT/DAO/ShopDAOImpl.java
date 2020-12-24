package ROOT.DAO;

import ROOT.VO.MemberVO;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import javax.inject.Inject;

@Repository
public class ShopDAOImpl implements ShopDAO {

    @Inject
    private SqlSession sqlSession;
}
