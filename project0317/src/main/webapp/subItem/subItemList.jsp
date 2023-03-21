<%@ page import="com.dto.SubItemDTO"%>
<%@page import="java.util.List"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
String category = "스낵/팝콘";
if (request.getParameter("gCategory").equals("drink"))
	category = "음료";
if (request.getParameter("gCategory").equals("goods")) 
	category="영화 굿즈";
%>
<h1><%=category%></h1>
<hr>
<table>

	<tr>
		<%
		List<SubItemDTO> list = (List<SubItemDTO>) request.getAttribute("subItemList");
		for (int i = 0; i < list.size(); i++) {
			SubItemDTO dto = list.get(i);
			String gCode = dto.getgCode();
			String gName = dto.getgName();
			String gCategory = dto.getgCategory();
			int gPrice = dto.getgPrice();
			String gImage = dto.getgImage();
		%>
		<td>
			<div id="subItem<%=gCode%>">
				<a href="SItemInfoServlet?gCode=<%=gCode%>">
				<img src="img/<%=gCategory%>/<%=gImage%>.jpg" width="350" height="500"><br> 
					<%=gName%> <br>
				<br> <%=gPrice%>
				</a>
			</div>
			<br>
		</td>



		<%
		if (i % 3 == 2) {
		%>

	</tr>
	<tr>
		<%
		} //end if
		%>
		<%
		} //end for
		%>
	</tr>
</table>