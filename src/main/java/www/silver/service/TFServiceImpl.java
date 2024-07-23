package www.silver.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import www.silver.dao.IF_TFDAO;
import www.silver.vo.CommentVO;
import www.silver.vo.TFVO;

@Service
public class TFServiceImpl implements IF_TFService{

	@Inject
	IF_TFDAO tfdao;
	@Override
	public void insert(TFVO tfvo) throws Exception {
		tfdao.insert(tfvo);
	}
	@Override
	public List<TFVO> allList() throws Exception {
		// TODO Auto-generated method stub
		return tfdao.allList();
	}
	@Override
	public void delete(TFVO tfvo) throws Exception {
		// TODO Auto-generated method stub
		tfdao.delete(tfvo);
	}
	@Override
	public void deletecomment(TFVO tfvo) throws Exception {
		// TODO Auto-generated method stub
		tfdao.deletecomment(tfvo);
	}
	@Override
	public void update(TFVO tfvo) throws Exception {
		// TODO Auto-generated method stub
		tfdao.update(tfvo);
		
	}
	@Override
	public void insertComment(CommentVO cvo) throws Exception {
		// TODO Auto-generated method stub
		tfdao.insertComment(cvo);
		
	}
	@Override
	public List<CommentVO> commentList(int no) throws Exception {
		// TODO Auto-generated method stub
		return tfdao.commentList(no);
	}
	@Override
	public List<TFVO> search(TFVO tfvo) throws Exception {
		// TODO Auto-generated method stub
		return tfdao.search(tfvo);
	}
}
