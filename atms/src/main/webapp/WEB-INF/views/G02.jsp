<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
<style type="text/css">
	*{
		margin: 0;
		padding: 0;
	}
	#main {
		width: 100%;
		text-align: left;
		height: 90%;
	}
	
	.content{
		width: 80%;
		height: 600px;
		margin: 10px 10%;
		border: 1px solid;
		overflow: auto;
	}
	
	.title{
		margin: 30px;
		text-align: center;
		font-size: 44px;
	}
	.signUp{
		width: 50%;
		margin-left: 30%;
		margin-top: 30px;
		font-size: 34px;
	}
	.field{
		margin-top:10px;
		font-size: 24px;
		font-weight: bold;
		
	}
	.explain{
		margin: 4px;
		font-size: 14px;
		color: gray;
	}
	
	input{
		width: 400px;
		height: 50px;
		margin-botton: 10px;
		padding-left: 4px;
		font-size: 24px;
		border: 1.4px #1E90FF solid;
	}
	input::-webkit-outer-spin-button,
	input::-webkit-inner-spin-button {
  		-webkit-appearance: none;
  		margin: 0;
	}

	.err{
		font-size: 14px;
		color: red;
		display: none;
	}
	
	select{
		width: 400px;
		height: 50px;
		margin-botton: 8px;
		padding-left: 4px;
		font-size: 24px;
		border: 1.4px #1E90FF solid;
	}
	select option{
		padding: 6px 4px;
	}

	/* 성별 선택지 */
	.selectGender{ /*label*/
		width: 20px;
		font-size: 24px;
		display: inline;
		margin-left: 16px;
		line-height: 12px;
	}
	.choiceGender{ /*input*/
		width: 24px;
		vertical-align: middle;
	}
	.choiceGender:hover{ /*input*/
		cursor: pointer;
	}
	.genderName{ /*span*/
		vertical-align: middle;
	}
	
	/* 버튼 */
	.button{
		margin: 60px auto;
		display: line-block;
		text-align: center;
	}
	#checkingId{
		margin: 0 10px;
		width: 80px;
		height: 52px;
	}
	.btn{
		width: 200px;
		height: 80px;
		margin-right: 10px;
		font-size: 30px;
		border: none;
		border-radius: 10px;	
	}
	.btn:hover{
		background-color: white;
		font-weight: bold;
		cursor: pointer;
	}
	.signup{
		background-color: #1E90FF;
		color: white;
	}
	.signup:hover{
		border: 2px #1E90FF solid;
		color: #1E90FF;
	}
	.cancle{
		background-color: gray;
		color: white;
	}
	.cancle:hover{
		border: 2px gray solid;
		color: gray;
	}
</style>
</head>
<body>
	<jsp:include page="/WEB-INF/common/header.jsp"></jsp:include>
	
	<div id="main">
		<div class="content">
			<h1 class="title">회원가입</h1>
			<hr>
			<form action="G02.submit" class="signUp" method="post">
				<!--아이디 -->
				<span class="field">아이디</span>
				<span class="explain">( 영문자/숫자, 8~12자 )</span>
				<div class="err errId"></div>
				<!-- oninput 이벤트는 input 태그 안의 값들이 변경 될때마다 이벤트가 발생한다. -->
				<!-- onchange 이벤트는 input 태그의 포커스를 벗어났을때 (즉, 입력이 끝났을때) 발생하는 이벤트이다. -->
				<input id="id" type="text" name="id" 
				 onchange="checkId()" maxlength="12"
				 placeholder="아이디를 입력하세요">
				<button type="button" id="checkingId">중복 확인</button><br>
				<br>
				
				<!--비밀번호 -->
				<span class="field">비밀번호</span>
				<span class="explain">( 영문자와 숫자,특수기호로  8~16자 )</span>
				<div class="err errPw1"></div>
				<input type="password" name="password" placeholder="비밀번호를 입력하세요"
				 onchange="checkPw1()" maxlength="16"><br>
				<div class="field">비밀번호 재확인</div>
				<div class="err errPw2">위의 비밀번호와 맞지 않습니다.</div>
				<input type="password" name="rePassword" 
				 onchange="checkPw2()" maxlength="16"><br>
				<br>
				
				<!-- 사원 이름 -->
				<div class="field">이름</div>
				<div class="err errName">이름을 입력해주세요.</div>
				<input type="text" name="emp_name" 
				 onchange="checkName()" placeholder="이름을 입력해주세요"><br>
				<br>
				
				<!--회사 선택 -->
				<div class="field">회사</div>
				<div class="err errCom">회사를 선택해주세요.</div>
				<select name="com_code"
				 onchange="checkCom()">
					<option value="">회사를 입력해주세요</option>
					<option value="GCS">GCS</option>
					<option value="CSS">CSS</option>
					<option value="NCB">NCB</option>
					<option value="PSS">PSS</option>
					<option value="FOS">FOS</option>
				</select><br>
				
				<!--부서 선택 -->
				<div class="field">부서</div>
				<div class="err errDep">부서를 선택해주세요.</div>
				<select name="dep_code"
				 onchange="checkDep()">
					<option value="">부서를 입력해주세요</option>
					<option value="program">개발부</option>
					<option value="sales">영업부</option>
					<option value="humanResource">인사부</option>
				</select><br>
				
				<!--직위 선택 -->
				<div class="field">직위</div>
				<div class="err errPos">직위를 선택해주세요.</div>
				<div class="err errPos">직위를 입력해주세요.</div>
				<select name="pos_code"
				 onchange="checkPos()">
					<option value="">직위를 입력해주세요</option>
					<option value="MB">MB</option>
					<option value="LD">LD</option>
					<option value="SLD">SLD</option>
					<option value="AWG">AWG</option>
					<option value="NG">NG</option>
				</select><br>
				<br>
				
				<!-- 사원 메일 -->
				<span class="field">메일</span>
				<span class="explain">( @를 넣은 형식으로 입력해주세요 )</span>
				<div class="err errMail">@를 이용한 형식을 사용해주세요.</div>
				<input type="text" name="mail" placeholder="메일을 입력해주세요"
				 onchange="checkMail()"><br>
				<br>
				
				<!--성별 -->
				<div class="field">성별</div>
				<label class="selectGender">
					<input class="choiceGender" type="radio" name="gender" value="woman" checked>
					<span class="genderName">여성</span>
				</label>
				<label class="selectGender">
					<input class="choiceGender" type="radio" name="gender" value="man">
					<span class="genderName">남성</span>
				</label><br>
				<br>

				<!-- 입사일 -->
				<div class="field">입사일</div>
				<div class="err errEntry">입사일을 선택해주세요.</div>
				<input type="date" name="entry_date"
				 onchange="checkDate()"><br>
				<br>
				
				<!-- 전화번호 -->
				<span class="field">전화번호</span>
				<span class="explain">(숫자만 입력됩니다.)</span>
				<div class="err errPhone">전화번호를 써주세요</div>
				<input type="number" name="cellphone" placeholder="전화번호를 입력해주세요"
				 onchange="checkPhone()"><br>
				<br>
				
				<!--주소 -->
				<span class="field">주소</span>
				<span class="explain">(선택)</span><br>
				<input type="text" name="address" placeholder="주소를 입력해주세요"><br>
				
				<div class="button">
					<!-- 취소 버튼 -->
					<button type="button" class="btn cancle" 
					 onclick="cancleSignup()">취소</button>

					<!-- 가입 버튼 -->
					<button type="submit" id="signupBtn" class="btn signup">가입</button>
				</div>
			</form>
		</div>
	</div>
	
	<jsp:include page="/WEB-INF/common/footer.jsp"></jsp:include>
	<script>
		let passId = false;
		let passPw = false;
		let passName = false;
		let passCom = false;
		let passDep = false;
		let passPos = false;
		let passEntry = false;
		let passMail = false;
		let passPhone = false;
		
		const idCheckBtn = document.querySelector("#idCheck");
		const signupBtn = document.querySelector("#signupBtn");
		
		const form = document.querySelector(".signUp");
		const cancleBtn = document.querySelector(".cancle");
		
		const errId = document.querySelector(".errId");
		const errPw1 = document.querySelector(".errPw1");
		const errPw2 = document.querySelector(".errPw2");
		const errCom = document.querySelector(".errCom");
		const errDep = document.querySelector(".errDep");
		const errPos = document.querySelector(".errPos");
		const errMail = document.querySelector(".errMail");
		
		function checkId(){
			let id = form.id.value;
			
			if(id.length<8 || id.length>12){
				errId.style.display = "block";
				errId.innerText= "8~12자 이내로 입력하세요."
			}else{
				errId.style.display = "none";
			}
		}
		
		function checkingId(){
			passId = true;
		}
		
		function checkPw1(){
			let pw = form.password.value;

			if(pw.length<8 || id.length>16){
				errPw1.style.display = "block";
				errPw1.innerText= "8~16자 이내로 입력하세요."
			}else{
				errPw1.style.display = "none";
			}
		}
		
		function checkPw2(){
			let pw1 = form.password.value;
			let pw2 = form.rePassword.value;
			
			if(pw1 != pw2){
				errPw2.style.display = "block";
			}else{
				errPw2.style.display = "none";
				passPw = true;
			}
		}
		
		function checkName(){
			let name = form.emp_name.value;
			
			if(id.length < 1){
				errId.style.display = "block";
			}else{
				passName = true;
			}
		}
		
		function checkCom(){
			let comCode = form.com_code.value;
			
			if(comCode == ""){
				errCom.style.display = "block";
			}else{
				errCom.style.display = "none";
				passCom = true;
			}
		}
		
		function checkDep(){
			let depCode = form.dep_code.value;
			
			if(depCode == ""){
				errDep.style.display = "block";
			}else{
				errDep.style.display = "none";
				passDep = true;
			}
		}
		
		function checkPos(){
			let posCode = form.pos_code.value;
			
			if(posCode == ""){
				errPos.style.display = "block";
			}else{
				errPos.style.display = "none";
				passPos = true;
			}
		}
		
		function checkMail(){
			let mail = form.mail.value;
			if(!mail.includes("@")){
				errMail.style.display = "block";
			}else{
				errMail.style.display = "none";
				passMail = true;
			}
		}
		
		function checkDate(){
			let entry = form.entry_date.value;
			if(entry==null){
				errEntry.style.display = "block";
			}else{
				errEntry.style.display = "none";
				passEntry = true;
			}
		}
		
		function checkPhone(){
			let phone = form.cellphone.value;
			if(phone==""){
				errPhone.style.display = "block";
			}else{
				errPhone.style.display = "none";
				passEntry = true;
			}
		}
		
		function cancleSignup(){
			if (confirm("회원가입을 취소하시겠습니까?")) {
				location.href="/";
			} else {}
		}
		
		signupBtn.addEventListener("click",function checkForm(){
			if(passId && passPw && passName && passCom && passDep
				&& passPos && passEntry && passMail&& passPhone){
				return 0;
			}
		})
		
	</script>
</body>
</html>