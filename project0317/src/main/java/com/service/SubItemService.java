package com.service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.config.MySqlSessionFactory;
import com.dao.SubItemDAO;
import com.dto.SubItemDTO;

public class SubItemService {
SubItemDAO dao;
	
	public SubItemService(){
		dao=new SubItemDAO();
	}

	public List<SubItemDTO> subItemList(String gCategory) {
		SqlSession session=MySqlSessionFactory.getSqlSession();
		 List<SubItemDTO> list=null;
		try {
			list=dao.subItemList(session,gCategory);
		}finally {session.close();}
		return list;
	}



	public SubItemDTO sItemInfo(String gCode) {
		SqlSession session=MySqlSessionFactory.getSqlSession();
		SubItemDTO dto=null;
		try {
			dto=dao.sItemInfo(session,gCode);
		}finally {session.close();}
		return dto;
	}
}
