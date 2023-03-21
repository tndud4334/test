package com.service;

import org.apache.ibatis.session.SqlSession;

import com.config.MySqlSessionFactory;
import com.dao.MovieDAO;
import com.dto.MovieDTO;

public class MovieService {

	public MovieDTO movieList(String string) {
		SqlSession session = MySqlSessionFactory.getSqlSession();
		MovieDAO dao = new MovieDAO();
		
		MovieDTO dto = null;
		dto = dao.movieList(session, string);
		session.close();
		
		return dto;
	}

}
