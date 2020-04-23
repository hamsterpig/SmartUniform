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
	if(session.getAttribute("loginid") !=null){//로그인이 됫을때 
%>
	<script>
		alert("로그인을 한 ㅜㅎ에는 접속을 할 수 없는 페이지 입니다.");
		location.href="NewFile.jsp";
	</script>
<%} %>
	회원가입<br>
	<form action="registerproc.jsp" method="post" enctype="multipart/form-data">
		아이디<input type="text" name="id">
		비밀번호<input type="text" name="pw">
		이름<input type="text" name="name">
		프로필 사진<input type="file" name="pic">
		<input type="submit">
	</form>
	
</body>
</html>