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

	$("#toCartList").click(function(){
		$("#sItemCartForm").attr("action","SubItemCartServlet?rep=y").submit();
	});
	$("#nottoCartList").click(function(){
		$("#sItemCartForm").attr("action","SubItemCartServlet?rep=n").submit();
	});

	$("#totalPrice").text(parseInt($("#gAmount").val())*parseInt($("#gPrice").val()));
	$("#staticBackdropLabel").text($("#gAmount").val()+"개의 상품 등록 시도");
	$("#gAmount").change(function(){
	$("#totalPrice").text(parseInt($("#gAmount").val())*parseInt($("#gPrice").val()));
	$("#staticBackdropLabel").text($("#gAmount").val()+"개의 상품 등록 시도");
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
	<input id="gAmount" type="number" name="gAmount" value="1">
	</td>
	</tr>
	<tr>
	<td>합계</td>	
	<td><span id="totalPrice"></span></td>
	</tr>
	<tr>
	<td colspan="2">
	<button type="button" id="sItemCart" class="btn btn-dark" data-bs-toggle="modal" data-bs-target="#staticBackdrop" >장바구니</button>&nbsp;
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

<!-- Modal -->
<div class="modal fade" id="staticBackdrop" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered">
    <div class="modal-content">
      <div class="modal-header">
        <h1 class="modal-title fs-5" id="staticBackdropLabel"></h1>
      </div>
      <div class="modal-body">
       <% if (session.getAttribute("login")==null){ %>장바구니 기능은 로그인 후 이용할 수 있습니다.
       <%} else{%>장바구니에 등록됩니다. 장바구니 페이지로 이동하시겠습니까<% }%>
      </div>
      <div class="modal-footer">
      
       <button type="button" 
        <% if (session.getAttribute("login")!=null){ %>id="toCartList" <%} %>
       class="btn btn-primary" data-bs-dismiss="modal">예</button>
       
       <% if (session.getAttribute("login")!=null){ %>
       <button type="button" id="#nottoCartList" class="btn btn-secondary" data-bs-dismiss="modal">아니오</button> <%} %>
        </div>
    </div>
  </div>
</div>

