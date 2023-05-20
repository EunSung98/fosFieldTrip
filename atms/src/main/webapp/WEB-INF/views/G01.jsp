<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>
<style type="text/css">
	#main {
		text-align: left;
		width: 100%;
		height: 90%;
		border: 1px red solid;
	}
	.content{
		width: 80%;
		height: 600px;
		margin: 10px 10%;
		border: 1px solid;
	}
	
	h1 {
	text-align:left;
	font-size: 65px;
	font-family: 'Noto Serif JP', serif;
	}
	
	form {
	text-align:center;
	line-height: 20px;
	margin-top: 100px;
	font-size: 35px;
	font-family: 'Shippori Mincho', serif;
	
	}
	
	input {
	width: 300px;
	height: 30px;
	}
	
	button {
	width: 150px;
	height: 55px;
	font-size: 25px;
	font-family: 'Shippori Mincho', serif;
	font-color: black;
	background-color: gray;
	border-radius: 10px;
	opacity: 0.6;
	border: none;
	}
	
	.return {
	width: 150px;
	height: 55px;
	font-size: 25px;
	font-family: 'Shippori Mincho', serif;
	font-color: black;
	background-color: gray;
	border-radius: 10px;
	opacity: 0.8;
	border: none;
	text-align:left;
	margin-top: 130px; 
	
	}
	
</style>
</head>
<body>
	<jsp:include page="/WEB-INF/common/header.jsp"></jsp:include>
	<div id="main">
		<div class="content">
		<h1>ログイン</h1>
			<form id="loginForm" action="/G00-1" method="post" onsubmit="return validateForm();">
		
		  		<label for="fname">ID &emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&ensp;:</label>
		  		<input type="text" id="id" name="id"><br><br>
		
				<label for="lname">パスワード&emsp;&emsp;&emsp;:</label>
		  		<input type="password" id="password" name="서버로 보낼 이름" value=""><br><br>
		  		
		
				<button type="submit" id="login" name="buttonType" value="login" >ログイン</button>
				<button type="button" name="buttonType" value="singUp" onclick="aa()">新規登録</button>
				
				<link rel="preconnect" href="https://fonts.googleapis.com">
				<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
				<link href="https://fonts.googleapis.com/css2?family=Shippori+Mincho&display=swap" rel="stylesheet">
				
				<div class="return">
				<button type="button" name="buttonType" value="return" onclick="back()">戻る</button></div>
			</form>	
		</div>
		
	</div>
	<jsp:include page="/WEB-INF/common/footer.jsp"></jsp:include>	
	<script>
		let form = document.querySelector("#loginForm");

		let loginBtn = document.querySelector("#login");
		
		//loginBtn.addEventListener("onsubmit",()=>{
		function validateForm() {
			let id = document.querySelector("#id");
			let password = document.querySelector("#password");
			
			if(id.value === ""){
				alert("IDを入力してください。");
				return false
			}else if(password.value === ""){
				alert("Passwordを入力してください。");
				return false
			}else{
				return true
			}
		}

		function back(){
			location.href="/";
			
		}
		
		function aa(){
			location.href="/G02";
		}
	</script>
</body>
</html>

