<%@page import="Smart.SmartDAO"%>
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
		 SmartDAO dao = new SmartDAO();
		 String board_id = request.getParameter("board_id");
		 String user_id = (String)session.getAttribute("id");
		 
		 System.out.println("�α��� ���̵� : "+session.getAttribute("id"));
		 System.out.println("�Խ��� ���̵� : "+board_id);	

		 if(board_id.equals(user_id)){ %>
			 <script>
			 alert('�Խñ��� ���� �Ǿ����ϴ�.');		 
			 <%dao.del_board(user_id);%>
			 location.href="boardmain.do";
			 </script>
		<%}else{%>
			 <script>
			 alert('������ �����ϴ�.');
			 location.href="boardmain.do";
			 </script>
	<%}%>
</body>
</html>