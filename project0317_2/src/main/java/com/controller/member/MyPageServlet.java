package com.controller.member;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dto.MemberDTO;
import com.service.MemberService;

@WebServlet("/MyPageServlet")
public class MyPageServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public MyPageServlet() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		
		// 로그인 dto에 저장되있는 회원정보를 session으로 불러오기
		HttpSession session = request.getSession();
		MemberDTO dto = (MemberDTO) session.getAttribute("login");

		String nextPage = null;
		
		

		if (dto != null) {

			nextPage = "mypage.jsp";
			String userid = dto.getUserid();

			MemberService service = new MemberService();
			MemberDTO x = service.mypage(userid);

			System.out.println("마이페이지 정보: " + x);

			if (x != null) {
				session.setAttribute("login", x); // 세션데이터 덮어쓰기
				System.out.println("mypage 이동");
			}

		} else {
			session.setAttribute("mesg", "회원인증이 필요한 작업입니다.");
			nextPage = "LoginUIServlet";
		}

		response.sendRedirect(nextPage);

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
