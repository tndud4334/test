<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="com.dto.MovieDTO"%>
<%@page import="java.util.List"%>

<% 
	MovieDTO dto =  (MovieDTO)request.getAttribute("movieList");

	 String mcode = dto.getMcode();
	 String mname = dto.getMname();
	 String mename = dto.getMename();
	 String mdirector = dto.getMdirector();
	 String mactor = dto.getMactor();
	 String mgenre = dto.getMgenre();
	 int mtime = dto.getMtime();
	 String mgrade = dto.getMgrade();
	 String mdate = dto.getMdate();
	 String mcontent = dto.getMcontent();
	 String cmcontent = mcontent.replace("\n", "<br>");
	 String mimage = dto.getMimage();
	 String mpreview = dto.getMpreview();
%>

<script type="text/javascript">
	function preview() {
		location.href="https://youtu.be/<%=mpreview%>";
	}
</script>
<form method="GET" action="#">

<table border="0">
  <tr>
  	<td rowspan="12" width="500px"><img src="img/movie/<%=mimage %>.jpg"></td>
  	<td colspan="2"><h3><%=mname %></h3></td>
  </tr>
  <tr><td><%=mename %></td></tr>
  <tr><td colspan="2"><hr></td></tr>
  <tr><td>감독 : </td><td><%=mdirector %></td> </tr>
  <tr><td>배우 : </td><td><%=mactor %></td></tr>
  <tr><td>장르 : </td><td><%=mgenre %></td></tr>
  <tr><td>상영시간 : </td><td><%=mtime %>분 </td></tr>
  <tr><td>등급 : </td><td><%=mgrade %></td></tr>
  <tr><td>개봉일 : </td><td><%=mdate %></td></tr>
  <tr><td colspan="2"><br></td>
  <tr>
  	<td></td>
  	<td>
  		<input type="submit" class="reserve" value="예매하기">
  	</td>
  </tr>
  <tr><td colspan="2"><br></td>
  <tr><td colspan="3"><br></td>
  <tr><td colspan="3">
  	<div class="d-grid gap-2 col-3 d-md-block mx-auto">
  		<button type="button" class="btn btn-primary">주요 정보</button>
	  	<button type="button" class="btn btn-primary" onclick="preview()">예고편</button>
	  	<button type="button" class="btn btn-primary">리뷰</button>
	</div>
  	
  </td></tr>
  <tr><td><br></td></tr>
  <tr><td><br></td></tr>
  <tr><td colspan="3">
  	<%=cmcontent %>
  </td></tr>
</table>

</form>
