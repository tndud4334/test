package com.controller.subItem;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dto.SubItemDTO;
import com.service.SubItemService;

@WebServlet("/SubItemListServlet")
public class SubItemListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public SubItemListServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String gCategory = request.getParameter("gCategory");
		SubItemService service = new SubItemService();
		List<SubItemDTO> list = service.subItemList(gCategory);
		request.setAttribute("subItemList", list);
		System.out.println(list);
		RequestDispatcher dis = request.getRequestDispatcher("subItem.jsp");
		dis.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
