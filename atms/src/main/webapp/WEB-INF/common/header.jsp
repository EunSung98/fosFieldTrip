<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style type="text/css">
header {
	height: 10%;
	border: 1px solid red;
	margin-bottom:1%;
}
.mainImg:hover{
	cursor: pointer;
}
</style>
<script type="text/javascript">

var a= window.location.protocol + "//" + window.location.host + "/" + window.location.pathname;


function back() {
	location.href = "/";
}


</script>
</head>
<body>
	<header>
		<table style="width: 100%; height: 100%; text-align:center;">
			<tr>
				
				<td style="width: 60%; text-align:left;"><img class="mainImg" onclick="back()" src="resources/images/logo.png" width="10%"></td>
				
				<c:if test="${Logininfo.id eq null}">
				<td style="width: 5%"><a href="G02?com_name=PSS">社員登録</a></td>
				<td style="width: 5%"><a href="G01">ログイン</a></td>
				</c:if>
				<c:if test="${Logininfo.id ne null}">
				<td>${Logininfo.comName_ryak}</td>
				<td>${Logininfo.dep_name}</td>
				<td>${Logininfo.pos_name}</td>
				<td>${Logininfo.emp_name}</td>
				<td>${Logininfo.id}</td>
				<td><form action="/logout" method="GET"><input type="submit" value="ログアウト"/></form></td>
				</c:if>
			</tr>
		</table>
	</header>
</body>
</html>