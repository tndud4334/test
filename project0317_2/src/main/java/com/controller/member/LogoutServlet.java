package com.controller.member;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dto.MemberDTO;

@WebServlet("/LogoutServlet")
public class LogoutServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public LogoutServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//로그아웃기능
		HttpSession session = request.getSession();
		MemberDTO dto = (MemberDTO) session.getAttribute("login");	//session에 담겨있던 로그인 정보
		if (dto != null) {
			session.invalidate();	//t세션의 모든 속성 제거
			response.sendRedirect("main.jsp");	//속성 제거 성공시 main 화면으로
			System.out.println("로그아웃 정보: " + dto);
		}else {
			response.sendRedirect("LoginUIServlet");	//속성 제거 실패시 로그인 화면으로
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
