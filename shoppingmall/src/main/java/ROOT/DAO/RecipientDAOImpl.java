package ROOT.DAO;

import ROOT.VO.ProductVO;
import ROOT.VO.RecipientVO;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import javax.inject.Inject;
import java.util.List;

@Repository
public class RecipientDAOImpl implements RecipientDAO {

    @Inject
    private SqlSession sqlSession;

    /**
     * 수령자 정보 등록
     */
    public void addRecipient(RecipientVO recipientVO) {
        sqlSession.insert("recipientMapper.addRecipient", recipientVO);
    }
}
