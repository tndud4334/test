<%@ page import="com.dto.SubItemDTO"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
  SubItemDTO dto = (SubItemDTO)request.getAttribute("sItemInfo");
  String gCode = dto.getgCode();
  String gName = dto.getgName();
  int gPrice = dto.getgPrice();
  String gImage = dto.getgImage();
  String gCategory=dto.getgCategory();
  String gContent=dto.getgContent();
  String mName=dto.getmName();
%>    

<script type="text/javascript">
$(document).ready(function(){
	$("#sItemCart").click(function(){
		$("#sItemCartForm").attr("action","SubItemCartServlet").submit();
		var conf=confirm("장바구니에 담겼습니다. 장바구니로 이동하시겠습니까?");
		if(conf) location.href="CartListServlet";
		
	});
	$("#sItemOrder").click(function(){
		$("#sItemCartForm").attr("action","SubItemOrderConfirmServlet").submit();
	});

	$("#totalPrice").text(parseInt($("#gAmount").val())*parseInt($("#gPrice").val()));
	$("#gAmount").change(function(){
	$("#totalPrice").text(parseInt($("#gAmount").val())*parseInt($("#gPrice").val()));
	});
	
	
	
})
</script>
<form id="sItemCartForm" name="sItemCartForm" method="GET" >
<h1><input type="hidden" name="gName" value="<%=gName%>"><%=gName%></h1>
<input type="hidden" name="mName" value="<%=mName%>">
<input type="hidden" name="gCode" value="<%=gCode%>">
<input type="hidden" name="gCategory" value="<%=gCategory%>">
<hr>

<table>

	<tr>
	<td rowspan="100%"><input type="hidden" name="gImage" value="<%=gImage%>">
	<img src="img/<%=gCategory%>/<%=gImage%>.jpg">	</td>
	</tr>
	<%if(gCategory.equals("goods")){ %>
	<tr>
	<td>모델명</td>
	<td>
	<%=gName %></td>
	</tr>
	<tr><td>영화명</td><td><%=mName %></td></tr>
	
	<%} %>
	<tr>
	<td>가격(KRW)</td>
	<td><input type="hidden" id="gPrice" name="gPrice" value="<%=gPrice%>"><%=gPrice %> 원</td>
	</tr>
	<tr>
	<td>수량</td>
	<td>
	<input type="button" id="plus" class="btn btn-light" value="+">
	<input id="gAmount" type="number" name="gAmount" value="1">
	<input type="button"id="minus" class="btn btn-light" value="-">
	</td>
	</tr>
	<tr>
	<td>합계</td>	
	<td><span id="totalPrice"></span></td>
	</tr>
	<tr>
	<td colspan="2">
	<button id="sItemCart" class="btn btn-dark">장바구니</button>&nbsp;
	<button id="sItemOrder" class="btn btn-dark">구매하기</button>
	</td>
	</tr>

	
</table>
<h5>
<input type="hidden" name="gContent" value="<%=gContent%>">
<%if (gCategory.equals("goods")){ %><img src="img/<%=gCategory%>/<%=gContent%>.jpg">
<%}else{%><%=gContent%>
<%}%>
</h5>
</form>
