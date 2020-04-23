<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
 <%@ page import = "java.util.*,java.io.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	반갑습니다<br>
	<% if(session.getAttribute("loginid") ==null){ %>
	<a href="register.jsp">회원가입</a><br><br>
	로그인<br>
	<form action="login.jsp">
		아이디<input type="text" name="id"><br>
		패스워드<input type="text" name="pw"><br>
	</form>
	<%}else{ %>
		<%=session.getAttribute("loginid") %>님 반갑습니다
	<%} %>
	
	<%if(session.getAttribute("loginid").equals("admin")){ %>
	<a href="admin.jsp">관리자 모드</a>
	<%} %>
	
	
	<%
	
		//현재 실제 서버에 저장 되어있는 파일을 볼  있음
		File f = new File(request.getRealPath("files"));
		for(int i=0; i<f.listFiles().length; i++){
	%>
			<a href="<%= request.getRealPath("/")+"/"+f.listFiles()[i].getName()%>"><%=f.listFiles()[i].getName()%></a><br>//파일명
			<%= request.getRealPath("files")+"/"+f.listFiles()[i].getName()%>파일위치에있는 파일명
			

	<%		
		}
	
	%>
	
	<%
	//	<img src="request.getRealPath("files")\\사과.jfif">//실제저장한파일위치
		//내부서버에 파일을 올림
	//	getRealPath("/") &lt<= WebContents 폴더
	%>
	
	 
</body>
</html>