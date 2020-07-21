package com.example.mapper;

import java.util.List;

import com.example.domain.ExhibitionVO;

public interface ExhibitionMapper {

	public List<ExhibitionVO> list();
	public ExhibitionVO read(int e_no);
	public int replyCount(int e_no);
}
