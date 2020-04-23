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
		 
		 System.out.println("로그인 아이디 : "+session.getAttribute("id"));
		 System.out.println("게시판 번호 : "+board_idx);	
		 Vector<BoardDTO> v = dao.SelectBoard_Del(board_idx);
		 
		for(int i=0;i<v.size();i++){
		 if(v.get(i).getId().equals(user_id)){ %>
			 <script>
			 alert('<%=v.get(i).getIdx()%>');
			 alert('게시글이 삭제 되었습니다.');		
			 
			 <%
			    
			 	dao.del_board(user_id,v.get(i).getIdx());
			 
			    //넘겨받은 게시판 번호로 셀렉해서 디비에있는 시스템파일네임 가져오기
		 	    String saveFolder = PublicValue.SAVEFOLDER;
				File file = new File(saveFolder+v.get(i).getSysname()); 
				System.out.println(saveFolder+v.get(i).getSysname()+"파일이름");

			     if( file.exists() ){ 
					
					if(file.delete()){ 
						System.out.println("파일삭제 성공"); 
					}
			    }
		 	  
			 %>		 
			 location.href="boardmain.do";		 
			 </script>
		<%}else{%>
			 <script>
			 alert('권한이 없습니다.');
			 location.href="boardmain.do";
			 </script>
	<%}}%>
</body>
</html>