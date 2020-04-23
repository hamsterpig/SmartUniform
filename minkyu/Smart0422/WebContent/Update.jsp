<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<form action="UpdateAction.do">
		<input type="text" name="id"><br>
		<input type="text" name="pw"><br>
		<input type="text" name="nicname"><br>
		<input type="text" name="email"><br>
		<input type="submit" value="확인">
	</form>
	<form Action="Login.do">
		<input type="submit" value="취소">
	</form>
	
</body>
</html>