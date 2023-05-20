<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>근태 정보 관리</title>
<style type="text/css">
#main {
	text-align: left;
	height: 90%;
}

p {
	border: 1px solid black;
	width:10px; 
	height:10%; 
	text-align:center; 
	font-size:25px;
}

div {
	font-family: verdana;
	border: 1px solid red;
	font-size: 10px;
	text-align: left;
	height: 100%;
}
.rl {
	text-align:center;
}

#mbody {
	border: 2px solid black;
	text-align:center;
	font-size:15px;
	margin:auto;
	height: 400px;
	width: 80%;
	overflow:auto;
}

span {
	text-align:center;
	display: inline-block;
	font-size:25px;
	}

select {
	margin:0 25px 2px 0px;
}

.s {
	margin:0 2px 2px 10px;
}
.m {
	margin:0 10px 2px 2px;
}

input {
	margin:0 10px 2px 10px;
}

.ti {
	font-size:17px;
	padding:0 30px 5px 30px;
}
</style>
</head>
<body>
	<jsp:include page="/WEB-INF/common/header.jsp"></jsp:include>
	<div id="main">
		<div class="rl">
		<form style="display: inline-block;">
		<span><a href="">◀</a></span>
		<input style="font-size: 30px;" type='month' id='currnetMonth'></form>
		<script>document.getElementById('currnetMonth').value= new Date().toISOString().slice(0, 7);</script>
		<span><a href="">▶</a></span>
		</div>
		<br><br>
		<div id="mbody">
		<table style="margin:auto;"><tr><td class="ti">일자</td><td class="ti">시작시간</td><td class="ti">종료시간</td><td class="ti">가동시간</td>
		<td class="ti">근태</td>
		<td class="ti">휴식시간</td>
		<td class="ti">작업내용</td>
		<td class="ti">비고</td>
		<td class="ti">입력수정</td>
		</tr>
		</table>
		<%
		for(int i = 1; i < 32; i++) {
		%>
			<form action="Workform">
			<%=String.format("%02d", i)%>일 
			<select name=s_time onchange="handleOnChange(this);" class="s">
				<option value="sh01">01</option>
				<option value="sh02">02</option>
				<option value="sh03">03</option>
				<option value="sh04">04</option>
				<option value="sh05">05</option>
				<option value="sh06">06</option>
				<option value="sh07">07</option>
				<option value="sh08">08</option>
				<option value="sh09">09</option>
				<option value="sh10">10</option>
				<option value="sh11">11</option>
				<option value="sh12">12</option>
				<option value="sh13">13</option>
				<option value="sh14">14</option>
				<option value="sh15">15</option>
				<option value="sh16">16</option>
				<option value="sh17">17</option>
				<option value="sh18">18</option>
				<option value="sh19">19</option>
				<option value="sh20">20</option>
				<option value="sh21">21</option>
				<option value="sh22">22</option>
				<option value="sh23">23</option>
				<option value="sh24">24</option>
			</select>:
			<select name=smtime class="m">
				<option value="sm">00</option>
				<option value="sm">15</option>
				<option value="sm">30</option>
				<option value="sm">45</option>
			</select>
			<select name=e_time class="s" onchange="handleOnChange2(this);">
				<option value="eh">01</option>
				<option value="eh">02</option>
				<option value="eh">03</option>
				<option value="eh">04</option>
				<option value="eh">05</option>
				<option value="eh">06</option>
				<option value="eh">07</option>
				<option value="eh">08</option>
				<option value="eh">09</option>
				<option value="eh">10</option>
				<option value="eh">11</option>
				<option value="eh">12</option>
				<option value="eh">13</option>
				<option value="eh">14</option>
				<option value="eh">15</option>
				<option value="eh">16</option>
				<option value="eh">17</option>
				<option value="eh">18</option>
				<option value="eh">19</option>
				<option value="eh">20</option>
				<option value="eh">21</option>
				<option value="eh">22</option>
				<option value="eh">23</option>
				<option value="eh">24</option>
			</select>:
			<select name=emtime class="m">
				<option value="em">00</option>
				<option value="em">15</option>
				<option value="em">30</option>
				<option value="em">45</option>
			</select>
		<a id='result2'></a> &emsp; <a id='result'></a>	
			<select name=work>
				<option value="w0">= 근태 =</option>
				<option value="w1">정상출근</option>
				<option value="w2">휴일</option>
				<option value="w3">지각</option>
				<option value="w4">조퇴</option>
				<option value="w5">반차</option>
				<option value="w6">결근</option>
			</select>
			<select name=br_time>
				<option value="b0">0.00</option>
				<option value="b1">0.25</option>
				<option value="b2">0.50</option>
				<option value="b3">0.75</option>
				<option value="b4">1.00</option>
				<option value="b5">1.25</option>
				<option value="b6">1.50</option>
				<option value="b7">1.75</option>
				<option value="b8">2.00</option>				
				<option value="b9">그 이상</option>
			</select>		
			<input type="text" name=notice size="30" placeholder="작업 내용 필수 입력">	
			<input type="text" name=remarks size="10">
			<input type="submit" class="btn" value="입력" onclick="doAction()">	
			</form>
			
		<%
		}
		%>
		</div>
		<br><br>
	</div>
</body>
<script>
function doAction() {
	  alert("입력되었습니다.");
	  }
let buttons = document.getElementsByClassName('btn');
for (var i=0; i < buttons.length; i++){
	  buttons[i].addEventListener('click', function(e){
		  e.preventDefault();
		  let button = this;
		  button.value = '수정';
		  button.style.backgroundColor = '#6BEC62';
	  });
}

function handleOnChange(e) {
	  // 선택된 데이터의 텍스트값 가져오기
	  const text = e.options[e.selectedIndex].text;
	  
	  // 선택한 텍스트 출력
	  document.getElementById('result').innerText
	    = text;
	}
	
	function handleOnChange2(e) {
		  // 선택된 데이터의 텍스트값 가져오기
		const text = e.options[e.selectedIndex].text;
		  
		  // 선택한 텍스트 출력
		  document.getElementById('result2').innerText
		    = text;
		}
</script>
<jsp:include page="/WEB-INF/common/footer.jsp"></jsp:include>
</html>

