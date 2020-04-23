<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
 <%@ page import = "SmartDTO.*" %>
 <%@ page import = "Smart.*" %>
 <%@ page import ="java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
		<div>
		<%
				String saveFolder=request.getRealPath("files");
				String idx = request.getParameter("idx");				
				SmartDAO dao = new SmartDAO();
				Vector<ManagerInquiryDTO> ve = dao.selectInquiryIDView(idx);				
		%>
		<form action="managerReply.do" method="post">
			글번호:<%=ve.get(0).getIdx() %>
			글쓴이:<%=ve.get(0).getId() %> &nbsp;제목:<%=ve.get(0).getTitle() %><br>
			이미지:<img src="<%=saveFolder+ve.get(0).getOriginimg() %>">
			<input type="hidden" value="<%= ve.get(0).getId()%>" name="hidden_id">
			<textarea style="width:200px;height:100px"><%=ve.get(0).getContent() %></textarea><br>			
			<input type="submit">
			<input type="button" value="취소">
			</form>
		</div>
</body>
</html>