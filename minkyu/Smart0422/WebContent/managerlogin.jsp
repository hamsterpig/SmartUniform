<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script  src="http://code.jquery.com/jquery-latest.min.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<link rel="stylesheet" href="../../css/manager_login.css">
<title>Insert title here</title>
    
</head>
<body>
            
               <form action="managerloginA.do" method="post">
                    ���̵� :  <input type=text name="manager_id" ><br>
                    �н����� : <input type="text" name="manager_pw"  "><br>
                        <input type="submit" value="�α���">
                        <input type="button" value=" ���">
         
                </form>
         	<%

         		System.out.println(session.getAttribute("id"));
         	%>
    </script>
</body>
</html>