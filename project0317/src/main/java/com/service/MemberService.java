package com.service;

import java.util.HashMap;

import org.apache.ibatis.session.SqlSession;

import com.config.MySqlSessionFactory;
import com.dao.MemberDAO;
import com.dto.MemberDTO;

public class MemberService {
		
	MemberDAO dao;

	public MemberService() {
		super();
		dao = new MemberDAO();
	}

	public int memberAdd(MemberDTO dto) {
		SqlSession session = MySqlSessionFactory.getSqlSession();
		int n = 0;
		
		try {
			n = dao.memberAdd(session, dto);
			session.commit();
		} finally {
			// TODO: handle finally clause
			session.close();
		}
		
		return n;
	}
	
	public int idCheck(String id) {
		SqlSession session = MySqlSessionFactory.getSqlSession();
		int n = 0;

		try {

			MemberDAO dao = new MemberDAO();
			n = dao.idCheck(session, id);
		} finally {
			session.close();
		}

		return n;
	}

	public MemberDTO login(HashMap<String, String> map) {
		SqlSession session = MySqlSessionFactory.getSqlSession();
		MemberDTO dto = null;

		try {
			dao = new MemberDAO();
			dto = dao.login(session, map);
		} finally {
			session.close();
		}

		return dto;
	}
	
	public MemberDTO mypage(String userid) {
		// TODO Auto-generated method stub
		SqlSession session = MySqlSessionFactory.getSqlSession();
		MemberDTO dto = null;
		
		try {
			dao = new MemberDAO();
			dto = dao.mypage(session, userid);
		} finally {
			// TODO: handle finally clause
			session.close();

		}
		
		return dto;
	}

	public int memberUpdate(MemberDTO dto2) {
		
		SqlSession session = MySqlSessionFactory.getSqlSession();
		int n = 0;
		
		try {
			dao = new MemberDAO();
			n = dao.memberUpdate(session, dto2);
			session.commit();
		} finally {
			// TODO: handle finally clause
			session.close();
		}
		
		return n;
	}

}
