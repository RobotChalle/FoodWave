package www.silver.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import www.silver.vo.CommentVO;
import www.silver.vo.TFVO;

@Repository
public class TFDAOImpl implements IF_TFDAO{
	
	private static String mapperQuery = "www.silver.dao.IF_TFDAO";
	@Inject
	private SqlSession sqlSession;
	
	@Override
	public void insert(TFVO tfvo) throws Exception {
		// TODO Auto-generated method stub
		sqlSession.insert(mapperQuery+".insert",tfvo);
	}

	@Override
	public List<TFVO> allList() throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.selectList(mapperQuery+".selectall",null);
	}

	@Override
	public void delete(TFVO tfvo) throws Exception {
		// TODO Auto-generated method stub
		sqlSession.delete(mapperQuery+".delete",tfvo);
	}

	@Override
	public void deletecomment(TFVO tfvo)throws Exception {
		// TODO Auto-generated method stub
		sqlSession.delete(mapperQuery+".deletecomment",tfvo);
		
	}

	@Override
	public void update(TFVO tfvo) throws Exception {
		// TODO Auto-generated method stub
		sqlSession.update(mapperQuery+".update",tfvo);
		
	}

	@Override
	public void insertComment(CommentVO cvo) throws Exception {
		// TODO Auto-generated method stub
		sqlSession.insert(mapperQuery+".insertComment",cvo);
	}

	@Override
	public List<CommentVO> commentList(int no) throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.selectList(mapperQuery+".selectComment",no);
	}

	@Override
	public List<TFVO> search(TFVO tfvo) throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.selectList(mapperQuery+".search",tfvo);
	}
}
