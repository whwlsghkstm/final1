<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<script src="http://code.jquery.com/jquery-1.9.1.js"></script>
<script src="https://developers.kakao.com/sdk/js/kakao.min.js"></script>
<script type = "text/javascript" src = "https://static.nid.naver.com/js/naverLogin_implicit-1.0.3.js" charset="utf-8"></script>
<style>
#bg {
	position: fixed;
	top: 0;
	left: 0;
	position: absolute;
	z-index: -1; /* Preserve aspet ratio */
	min-width: 100%;
	min-height: 100%;
}
</style>

<style>
* {
	margin: 0;
	padding: 0;
	box-sizing: border-box;
}

body {
	font-family: 'Noto Sans KR', sans-serif;
	display: flex;
	justify-content: center;
	align-items: center;
	height: 100vh;
	background-size:cover;
}

body::before {
	content: "";
	position: absolute;
	z-index: 1;
	top: 0;
	right: 0;
	buttom: 0;
	left: 0;
}

#tlqkf{
	position: relative;
	z-index: 2;
	padding:40px;
	height:750px;
	margin:30px;
	border-radius: 20px;
}

.login-form h1 {
	font-size: 50px;
	color: white;
	text-align: left;
	margin-bottom: 80px;
}

.int-area {
	width: 400px;
	position: relative;
	margin-top: 20px;
}

.int-area:first-child {
	margin-top: 0;
}

.int-area input {
	width: 100%;
	padding: 20px 10px 10px;
	border-radius: 10px;
	border: none;
	border-bottom: 1px solid #999;
	font-size: 20px;
	color: black;
	outline: none;
}

.int-area label {
	position: absolute;
	left: 10px;
	top: 15px;
	font-size: 18px;
	color: #999;
	transition: all .5s ease;
}

.int-area label.warning {
	color: red !important;
	animation: warning .3s ease;
	animation-iteration-count: 3;
}

@keyframes warning { 
	0% {transform:: translateX(-8px);}
	25%{transform: translateX(8px);}
	50%{transform: translateX(-8px);}
	75%{transform: translateX(8px);}
}
.int-area input:focus+label,
.int-area input:valid+label {
	top: -2px;
	font-size: 13px;
	color: #166cea;
}

.btn-area {
	margin-top: 30px;
}

.btn-area button {
	width: 100%;
	height: 50px;
	background: #166cea;
	color: #fff;
	font-size: 20px;
	border: none;
	border-radius: 8px;
	cursor: pointer;
	margin-left:2px;
	margin-bottom:6px;
}

.caption {
	margin-top: 30px;
	text-align: left;

}

.caption a {
	font-size: 15px;
	color:red;
	text-decoration: none;
}
</style>
</head>
<body>
<img src="../display?fileName=loginback.png" id="bg" alt="">
	<section class="login-form">
		<div id=tlqkf>
		<h1 style="height:10px;">회 원 가 입</h1>
		<br><br><br><br>
		<form name="frm" action="login" method="post">
			<div class="int-area">
				<input type="text" name="id" id="id" autocomplete="off" required>
				<label for="id">USER ID</label>
			</div>

			<div class="int-area">
				<input type="password" name="pass" id="pass" autocomplete="off"	required>
				<label for="pass">PASSWORD</label>
			</div>

			<div class="int-area">
				<input type="text" name="id" id="id" autocomplete="off" required>
				<label for="id">NAME</label>
			</div>

			<div class="int-area">
				<input type="text" name="id" id="id" autocomplete="off" required>
				<label for="id">닉네임</label>
			</div>

			<div class="int-area">
				<input type="text" name="id" id="id" autocomplete="off" required>
				<label for="id">PHONE</label>
			</div>

			<div class="int-area">
				<input type="text" name="id" id="id" autocomplete="off" required>
				<label for="id">INTRODUCE</label>
			</div>

			<div class="int-area">
				<input type="text" name="id" id="id" autocomplete="off" required>
				<label for="id">이미지</label>
			</div>
			
			<br><br>
			<div class="btn-area" style="text-align:center;">
				<button id="btn" type="submit">회원가입</button>
				<br>
			</div>
		</form>
		</div>
	</section>
</body>
<script>
	$(frm).submit(function(e){
		alert("!");
		e.preventDeafult();
		location.href="home.jsp";
		window.close();
	});
</script>
</html>