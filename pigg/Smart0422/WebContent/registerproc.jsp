<%@page import="java.io.IOException"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import = "java.util.*" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%
	// cos에있는 MultipartRequest 클래스 사용예정
	// 반드시 필요한 매개변수
	// request,저장할 폴더,최대 업로드 용량,인코딩 타입,rename정책
		String saveFolder=request.getRealPath("files");
		int maxSize =1024*1024*10;//10메가
		String encType = "euc-kr";
		
		try{
			MultipartRequest mrequest = new MultipartRequest(request,saveFolder,maxSize,encType, new DefaultFileRenamePolicy());//파일 업로드완료
			
			//파일정보 가져오는 부분~*------------------------------------
			String id = mrequest.getParameter("id");//아이디
			String pw = mrequest.getParameter("pw");//패스워드
			String name = mrequest.getParameter("name");//이름
			String oriname ="";
			String sysname = "";
			//파일이름을 가져옴
			Enumeration files = mrequest.getFileNames();
			while(files.hasMoreElements()){//값이 있따면,파일이없을수도있고 여러개 있을 숟 ㅗ있어서 while씀
				String fname= (String)files.nextElement(); // 타입이 Object라서 타입써줘야함
				//파일명을 알고있으면 바로 써도됨,업로드 할 때 원래 파일명
				oriname = mrequest.getOriginalFileName(fname);
				//실제로 저장된 파일명
				//이름이 중복되는 것을 방지하기 위해서 renamePolicy를 설정했다.
				//그런 이유로 만일 이름이 같은 파일을 저장하면 파일명+숫자 형태로 저장됨.
				sysname = mrequest.getFilesystemName(fname);
			}
			out.println("아이디"+id+"<br>");
			out.println("비밀번호"+pw+"<br>");
			out.println("이름"+name+"<br>");
			out.println("원래 파일명"+oriname+"<br>");
			out.println("저장된 파일명"+sysname+"<br>");
			
			
		}catch(IOException ioe){
			ioe.printStackTrace();
			System.out.println("입출력 에러");
			//response.sendRedirect("register.jsp");
		}catch(Exception e){
			e.printStackTrace();
		}
	%>
	<img src="<%=saveFolder%>\사과.jfif"> 
		//서버에있는걸 들거와서 볼 수 ㅣㅇㅆ음
	%>
</body>	
</html>