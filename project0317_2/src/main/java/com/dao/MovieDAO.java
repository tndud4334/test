package com.dao;

import org.apache.ibatis.session.SqlSession;

import com.dto.MovieDTO;

public class MovieDAO {

	public MovieDTO movieList(SqlSession session, String string) {
		MovieDTO dto = session.selectOne("movieList",string);
		return dto;
	}

}
