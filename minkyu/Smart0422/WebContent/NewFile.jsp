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
	�ݰ����ϴ�<br>
	<% if(session.getAttribute("loginid") ==null){ %>
	<a href="register.jsp">ȸ������</a><br><br>
	�α���<br>
	<form action="login.jsp">
		���̵�<input type="text" name="id"><br>
		�н�����<input type="text" name="pw"><br>
	</form>
	<%}else{ %>
		<%=session.getAttribute("loginid") %>�� �ݰ����ϴ�
	<%} %>
	
	<%if(session.getAttribute("loginid").equals("admin")){ %>
	<a href="admin.jsp">������ ���</a>
	<%} %>
	
	
	<%
	
		//���� ���� ������ ���� �Ǿ��ִ� ������ ��  ����
		File f = new File(request.getRealPath("files"));
		for(int i=0; i<f.listFiles().length; i++){
	%>
			<a href="<%= request.getRealPath("/")+"/"+f.listFiles()[i].getName()%>"><%=f.listFiles()[i].getName()%></a><br>//���ϸ�
			<%= request.getRealPath("files")+"/"+f.listFiles()[i].getName()%>������ġ���ִ� ���ϸ�
			

	<%		
		}
	
	%>
	
	<%
	//	<img src="request.getRealPath("files")\\���.jfif">//����������������ġ
		//���μ����� ������ �ø�
	//	getRealPath("/") &lt<= WebContents ����
	%>
	
	 
</body>
</html>