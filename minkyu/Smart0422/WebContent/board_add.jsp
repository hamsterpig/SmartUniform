<%@page import="Smart.SmartDAO"%>
<%@page import="SmartDTO.* , java.util.*" %>
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
	String id="";
	id = (String)session.getAttribute("id");
	
	SmartDAO dao = new SmartDAO();
	Vector<MemberDTO> v = dao.selMembertbl(id);
	
	
	for(int i=0 ; i<v.size();  i++){
%>
	<form action="Board_AddAction.do" method="post" enctype="multipart/form-data">
	제목:<input type="text" name="title"><br>
	작성자:<input type="text" name="nickname" value="<%=v.get(i).getNickname() %>">
	내용:<textarea rows="10" cols="10" name="content"></textarea>
	<input type="hidden" name="id" value="<%=v.get(i).getId() %>">
	<input type="file" name="pic">
	<input type="submit">

<%} %>
</form>
</body>
</html>