<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>메인</title>
<style type="text/css">
	#main {
		text-align: center;
		width: 100%;
		height: 90%;
		border: 1px red solid;
	}
	.font {
		text-align: center;
		font-size: 40px;
		margin: 80px;
		padding: 50px;
	}
	
</style>
</head>
<body>
	<jsp:include page="/WEB-INF/common/header.jsp"></jsp:include>
	<div id="main">
		<div class="font"><a href="/G06">勤怠情報入力</a></div> <br>
		<div class="font"><a href="/G07">勤怠情報照会</a></div> <br>
	</div>
	<jsp:include page="/WEB-INF/common/footer.jsp"></jsp:include>
</body>
</html>