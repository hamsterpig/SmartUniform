<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<style>
    .wrap{
        height: 90vh;
        width: 100%;
        display: flex;
        justify-content: center;
        align-items: center;
    }
    .btn{
        width: 100%;
        margin: 10px;
    }
    .btnok{
        margin-top: 10px;
    }
</style>
</head>
<body>
    <div class="wrap">
      <div>
          <form class="idpw" action="Login_Action.do">
            ���̵�<input type="text" name="id"><br>
            ��й�ȣ<input type="password" name="pw"><br>
            <input class="btn btnok" type="submit" value="Ȯ��">
            </form>
            <form action="register.do">
                <input class="btn" type="submit" value="ȸ������">
            </form>

            <form action="Find_password.do" method="post">
                <input class="btn" type="submit" value="��й�ȣ ã��"> 
            </form>


            <form action="main.jsp">
                <input class="btn" type="submit" value="���">
            </form>

            <form action="managerlogin.do">
                <input class="btn" type="submit" value="������">
            </form> 
      </div>
       
    </div>

</body>
</html>