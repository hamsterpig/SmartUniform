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
	// cos���ִ� MultipartRequest Ŭ���� ��뿹��
	// �ݵ�� �ʿ��� �Ű�����
	// request,������ ����,�ִ� ���ε� �뷮,���ڵ� Ÿ��,rename��å
		String saveFolder=request.getRealPath("files");
		int maxSize =1024*1024*10;//10�ް�
		String encType = "euc-kr";
		
		try{
			MultipartRequest mrequest = new MultipartRequest(request,saveFolder,maxSize,encType, new DefaultFileRenamePolicy());//���� ���ε�Ϸ�
			
			//�������� �������� �κ�~*------------------------------------
			String id = mrequest.getParameter("id");//���̵�
			String pw = mrequest.getParameter("pw");//�н�����
			String name = mrequest.getParameter("name");//�̸�
			String oriname ="";
			String sysname = "";
			//�����̸��� ������
			Enumeration files = mrequest.getFileNames();
			while(files.hasMoreElements()){//���� �ֵ���,�����̾��������ְ� ������ ���� �� ���־ while��
				String fname= (String)files.nextElement(); // Ÿ���� Object�� Ÿ�Խ������
				//���ϸ��� �˰������� �ٷ� �ᵵ��,���ε� �� �� ���� ���ϸ�
				oriname = mrequest.getOriginalFileName(fname);
				//������ ����� ���ϸ�
				//�̸��� �ߺ��Ǵ� ���� �����ϱ� ���ؼ� renamePolicy�� �����ߴ�.
				//�׷� ������ ���� �̸��� ���� ������ �����ϸ� ���ϸ�+���� ���·� �����.
				sysname = mrequest.getFilesystemName(fname);
			}
			out.println("���̵�"+id+"<br>");
			out.println("��й�ȣ"+pw+"<br>");
			out.println("�̸�"+name+"<br>");
			out.println("���� ���ϸ�"+oriname+"<br>");
			out.println("����� ���ϸ�"+sysname+"<br>");
			
			
		}catch(IOException ioe){
			ioe.printStackTrace();
			System.out.println("����� ����");
			//response.sendRedirect("register.jsp");
		}catch(Exception e){
			e.printStackTrace();
		}
	%>
	<img src="<%=saveFolder%>\���.jfif"> 
		//�������ִ°� ��ſͼ� �� �� �Ӥ�����
	%>
</body>	
</html>