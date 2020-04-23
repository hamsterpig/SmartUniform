<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
 <%@ page import ="Smart.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
		<%
				request.setCharacterEncoding("EUC-KR");
				String id = (String)request.getAttribute("id");
		
		%>
		<form action ="ManagerQueryAction.do" metod="post">
		<%=session.getAttribute("id") %>
			아이디: <%=id %><br>
			<input type="hidden" value="<%=id %>" name="hidden_id">
			제목:<input type="text" name ="reply_title"><br>
			<textarea name="reply_ta"></textarea><br>
			<input type="submit">
		</form>	
</body>
</html>