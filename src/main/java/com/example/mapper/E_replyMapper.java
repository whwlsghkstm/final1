package com.example.mapper;

import java.util.List;
import com.example.domain.E_replyVO;


public interface E_replyMapper {

	public List<E_replyVO> list(int e_no);
	public void insert(E_replyVO vo);
	public void delete(int r_no);
}
