package com.controller.subItem;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dto.CartDTO;
import com.dto.MemberDTO;
import com.service.CartService;

/**
 * Servlet implementation class SubItemCartServlet
 */
@WebServlet("/SubItemCartServlet")
public class SubItemCartServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SubItemCartServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	HttpSession session = request.getSession();
	MemberDTO dto = (MemberDTO)session.getAttribute("login");
	String gCode = request.getParameter("gCode");
	String nextPage="SItemInfoServlet?gCode="+gCode;
	String rep=request.getParameter("rep");
	if(dto==null)request.setAttribute("mesg", "장바구니 저장은 로그인 후 이용하실 수 있습니다.");
	else{
		String userid=dto.getUserid();
		String gName = request.getParameter("gName");
  		int gPrice = Integer.parseInt(request.getParameter("gPrice"));
  		String mName=request.getParameter("mName");
  		String gCategory=request.getParameter("gCategory");
  		String gImage=request.getParameter("gImage");
  		String gContent=request.getParameter("gContent");
  		int gAmount = Integer.parseInt(request.getParameter("gAmount"));
  		
  		CartDTO cart= new CartDTO();
  		cart.setgAmount(gAmount);
  		cart.setgCategory(gCategory);
  		cart.setgCode(gCode);
  		cart.setgContent(gContent);
  		cart.setgImage(gImage);
  		cart.setgName(gName);
  		cart.setgPrice(gPrice);
  		cart.setmName(mName);
  		cart.setUserid(userid);
  		
  		CartService service = new CartService();
  		int n=service.cartAdd(cart);
  		System.out.println(n);
		session.setAttribute("mesg",gAmount + " 개의 물품이 등록되었습니다.");
		if (rep.equals("y"))nextPage="CartListServlet";
  		
	}
	response.sendRedirect(nextPage);
	
	
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
