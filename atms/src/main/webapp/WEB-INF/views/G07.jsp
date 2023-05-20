<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>근태 정보 조회</title>
<style>
.elbat {
	border:solid 1px black;
	border-collapse:collapse;
	margin-left:auto;
	margin-right:auto;
	text-align:center;
}
.rt {
	background-color:#4472C4;
	padding:35px 100px;
	font-size:55px;
}
.rt1 {
	background-color:#CDD4EA;
	padding:35px 100px;
	font-size:55px;
}
.rt2 {
	background-color:#E8EBF5;
	padding:35px 100px;
	font-size:55px;
}
.dt {
	border:solid 1px black;
	border-collapse:collapse;
	padding:0px 0px 30px 0px;
	font-size:70px;
}
.dt1 {
	border:solid 1px black;
	border-collapse:collapse;
	padding:35px 100px;
	font-size:55px;
}
.dt1:active {
	background-color:white;
}
.semol {
  	border-right:50px solid #000000;
  	border-top:35px solid transparent;
  	border-bottom:35px solid transparent;
  	float:left;
  	margin:0px 0px 0px 180px;
  	margin-top:20px;
}
.semol:active {
	background-color:white;
}
.semor {
  	border-left:50px solid #000000;
  	border-top:35px solid transparent;
  	border-bottom:35px solid transparent;
  	float:right;
  	margin:0px 130px 0px 0px;
  	margin-top:20px;
}
.semor:active {
	background-color:white;
}
</style>
</head>
<body>
	<jsp:include page="/WEB-INF/common/header.jsp"></jsp:include>
	<table class="elbat" style="width:42%; table-layout:fixed;">
			<tr class="rt">
				<td class="dt" colspan="3">
				<div class="semol"></div>
				<input type="text" style=" width:30%; height: 70px; border-style:solid; border-color:#000000; border-width:3px;
				text-align:center; font-size: 60px; margin:0px 0px 0px 20px; background:transparent;">年
				<div class="semor"></div>
				</td>
			</tr>
			<tr class="rt1">
				<td class="dt1">1</td>
				<td class="dt1">2</td>
				<td class="dt1">3</td>
			</tr>
			<tr class="rt2">
				<td class="dt1">4</td>
				<td class="dt1">5</td>
				<td class="dt1">6</td>
			</tr>
			<tr class="rt1">
				<td class="dt1">7</td>
				<td class="dt1">8</td>
				<td class="dt1">9</td>
			</tr>
			<tr class="rt2">
				<td class="dt1">10</td>
				<td class="dt1">11</td>
				<td class="dt1">12</td>
			</tr>
		</table>
	<jsp:include page="/WEB-INF/common/footer.jsp"></jsp:include>
</body>
</html>