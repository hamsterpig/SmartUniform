<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%
	if(session.getAttribute("loginid") !=null){//�α����� ������ 
%>
	<script>
		alert("�α����� �� �̤����� ������ �� �� ���� ������ �Դϴ�.");
		location.href="NewFile.jsp";
	</script>
<%} %>
	ȸ������<br>
	<form action="registerproc.jsp" method="post" enctype="multipart/form-data">
		���̵�<input type="text" name="id">
		��й�ȣ<input type="text" name="pw">
		�̸�<input type="text" name="name">
		������ ����<input type="file" name="pic">
		<input type="submit">
	</form>
	
</body>
</html>