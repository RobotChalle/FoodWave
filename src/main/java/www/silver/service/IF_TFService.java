package www.silver.service;

import java.util.Collection;
import java.util.List;

import www.silver.vo.CommentVO;
import www.silver.vo.TFVO;

public interface IF_TFService {
	public void insert(TFVO tfvo) throws Exception;
	public List<TFVO> allList() throws Exception;
	public void delete(TFVO tfvo) throws Exception;
	public void deletecomment(TFVO tfvo) throws Exception;
	public void update(TFVO tfvo) throws Exception;
	public void insertComment(CommentVO cvo) throws Exception;
	public List<CommentVO> commentList(int no) throws Exception;
	public List<TFVO> search(TFVO tfvo)throws Exception;
}
