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
		���̵�<input type="text" name="id"><br>
		��й�ȣ<input type="password" name="pw"><br>
		<input type="submit" value="Ȯ��">
	</form>
	<form action="register.do">
		<input type="submit" value="ȸ������">
	</form>
	
	<form action="Find_password.do" method="post">
		<input type="submit" value="��й�ȣ ã��"> 
	</form>
	
	
	<form action="main.jsp">
		<input type="submit" value="���">
	</form>
	
	<form action="managerlogin.do">
		<input type="submit" value="������">
	</form>
	
	
	<%
	
	%>
</body>
</html>