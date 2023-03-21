package com.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.dto.SubItemDTO;

public class SubItemDAO {

	public SubItemDTO sItemInfo(SqlSession session, String gCode) {
		SubItemDTO dto=session.selectOne("SubItemMapper.sItemInfo", gCode);
		return dto;
	}

	public List<SubItemDTO> subItemList(SqlSession session, String gCategory) {
		List<SubItemDTO> list=session.selectList("SubItemMapper.subItemList", gCategory);
		return list;
	}

}
