<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>

<!-- 스타일 시트(stylesheet)로 사용할 외부 리소스를 불러옴. -->
<link rel="stylesheet" href="css/signup.css">


</head>
<body>
	<!-- <h1>Acorn Cinema</h1> -->
	<div id="header">
		<h1>Acorn Cinema</h1>
	</div>

	<hr>


	<div id="wrapper">

		<div id="content">

			<!-- NAME -->
			<div>
				<h3>
					<label for="name">이름</label>
				</h3>
				<span class="box int_name"> <input type="text" id="name"
					class="int" maxlength="20">
				</span>
			</div>

			<!-- ID -->
			<div>
				<h3>
					<label id="label">아이디</label>
				</h3>
				<!-- 				<span class="box_int_id"> <input type="text" id="userid"
					class="int" maxlength="20"> <input type="button"
					value="중복확인">
				</span> -->
				<input type="text" id="userid" maxlength="20"
					style="height: 29px; font-size: 15px; border: none; padding-right: 110px;">
				<input type="button" value="중복확인">

			</div>

			<!-- PW1 -->
			<div>
				<h3>
					<label for="pswd1">비밀번호</label>
				</h3>
				<span class="box int_pass"> <input type="text" id="pswd1"
					class="int" maxlength="20">
					<img src="m_icon_pass.png" id="pswd1_img1" class="pswdImg">
				</span>
			</div>

			<!-- PW2 -->
			<div>
				<h3 class="join_title">
					<label for="pswd2">비밀번호 재확인</label>
				</h3>
				<span class="box int_pass_check"> <input type="text"
					id="pswd2" class="int" maxlength="20"> 
					<img src="m_icon_check_disable.png" id="pswd2_img1" class="pswdImg">
				</span>
			</div>


			<!-- BIRTH -->
			<div>
				<h3>
					<label for="yy">생년월일</label>
				</h3>

				<div id="bir_wrap">

					<!-- BIRTH_YY -->
					<div id="bir_yy">
						<span class="box"> <input type="text" id="yy" class="int"
							maxlength="4" placeholder="년(4자)">
						</span>
					</div>

					<!-- BIRTH_MM -->
					<div id="bir_mm">
						<span class="box"> <select id="mm" class="sel">
								<option>월</option>
								<option value="01">1</option>
								<option value="02">2</option>
								<option value="03">3</option>
								<option value="04">4</option>
								<option value="05">5</option>
								<option value="06">6</option>
								<option value="07">7</option>
								<option value="08">8</option>
								<option value="09">9</option>
								<option value="10">10</option>
								<option value="11">11</option>
								<option value="12">12</option>
						</select>
						</span>
					</div>

					<!-- BIRTH_DD -->
					<div id="bir_dd">
						<span class="box"> <input type="text" id="dd" class="int"
							maxlength="2" placeholder="일">
						</span>
					</div>

				</div>
			</div>


			<!-- GENDER -->
			<div>
				<h3>
					<label for="gender">성별</label>
				</h3>
				<table width="100%" cellspacing="0" cellpadding="0" border="1"
					style="border-collapse: collapse" bordercolor="#CCCCCC">
					<tr>
						<td width="125" height="35" class="td_default"><input
							type="radio" name="gender" value="남" checked>남</input> <input
							type="radio" name="gender" value="여">여</input></td>
					</tr>

				</table>
			</div>

			<!-- EMAIL -->
			<div>
				<h3>
					<label for="email">본인확인 이메일<span class="optional">(선택)</span></label>
				</h3>
				<span class="box int_email"> <input type="text" id="email"
					class="int" maxlength="100" placeholder="선택입력">
				</span>
			</div>


			<!-- MOBILE -->
			<div>
				<h3>
					<label for="phoneNo">휴대전화</label>
				</h3>
				<span class="box int_mobile"> <input type="tel" id="mobile"
					class="int" maxlength="16" placeholder="전화번호 입력">
				</span>
			</div>


			<!-- JOIN BTN-->
			<div class="btn_area">
				<button type="button" id="btnJoin">
					<span>가입하기</span>
				</button>
			</div>


		</div>
		<!-- content -->

	</div>
	<!-- wrapper -->

</body>
</html>