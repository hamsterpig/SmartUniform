<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@page import="Smart.* , java.util.*  , SmartDTO.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<% 
		String user_id =  (String)session.getAttribute("id");
		String board_idx = request.getParameter("board_idx");

		
		SmartDAO dao = new SmartDAO();
		Vector<BoardDTO> v = dao.SelectBoard_update(board_idx);
		for(int i=0 ; i<v.size() ; i++){
	
		
		if(user_id.equals(v.get(i).getId())){
	%>
	<!-- method="post" enctype="multipart/form-data" -->
<form action="Board_UpAction.do" >
	���� : <input type="text" name="title"><br><br><br>
	���� : <input type="text" name="content">
	<input type="hidden" name="id" value="<%=v.get(i).getId()%>">
	<input type="hidden" name="idx" value="<%=v.get(i).getIdx()%>">
	<input type="submit" value="�����ϱ�">
	</form>
	
	<%}else { %>
	
		<script>
		alert('������ �����ϴ�.');
		location.href="boardmain.do";
		</script>

	<%} }%>
</body>
</html>