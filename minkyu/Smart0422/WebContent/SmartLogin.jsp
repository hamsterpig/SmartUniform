<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<form action="Login_Action.do">
		아이디<input type="text" name="id"><br>
		비밀번호<input type="password" name="pw"><br>
		<input type="submit" value="확인">
	</form>
	<form action="register.do">
		<input type="submit" value="회원가입">
	</form>
	
	<form action="Find_password.do" method="post">
		<input type="submit" value="비밀번호 찾기"> 
	</form>
	
	
	<form action="main.jsp">
		<input type="submit" value="취소">
	</form>
	
	<form action="managerlogin.do">
		<input type="submit" value="관리자">
	</form>
	
	
	<%
	
	%>
</body>
</html>