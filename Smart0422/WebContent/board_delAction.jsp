<%@page import="Smart.SmartDAO"%>
<%@page import="java.util.*,SmartDTO.*, java.io.*, action.*" %>
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
		 String board_idx = request.getParameter("board_idx");
		 String user_id = (String)session.getAttribute("id");
		 
		 System.out.println("�α��� ���̵� : "+session.getAttribute("id"));
		 System.out.println("�Խ��� ��ȣ : "+board_idx);	
		 Vector<BoardDTO> v = dao.SelectBoard_Del(board_idx);
		 
		for(int i=0;i<v.size();i++){
		 if(v.get(i).getId().equals(user_id)){ %>
			 <script>
			 alert('<%=v.get(i).getIdx()%>');
			 alert('�Խñ��� ���� �Ǿ����ϴ�.');		
			 
			 <%
			    
			 	dao.del_board(user_id,v.get(i).getIdx());
			 
			    //�Ѱܹ��� �Խ��� ��ȣ�� �����ؼ� ����ִ� �ý������ϳ��� ��������
		 	    String saveFolder = PublicValue.SAVEFOLDER;
				File file = new File(saveFolder+v.get(i).getSysname()); 
				System.out.println(saveFolder+v.get(i).getSysname()+"�����̸�");

			     if( file.exists() ){ 
					
					if(file.delete()){ 
						System.out.println("���ϻ��� ����"); 
					}
			    }
		 	  
			 %>		 
			 location.href="boardmain.do";		 
			 </script>
		<%}else{%>
			 <script>
			 alert('������ �����ϴ�.');
			 location.href="boardmain.do";
			 </script>
	<%}}%>
</body>
</html>