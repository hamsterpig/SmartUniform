package Smart_ActionPage;

import java.util.Random;
import java.util.Vector;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Smart.*;
import SmartDTO.MemberDTO;
import action.Action;
import action.ActionForward;
import java.lang.*; 
import Smart_ActionPage.TestMail;
public class Find_PasswordAction implements Action{
	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String email = request.getParameter("email");
		System.out.println(email);
		Random ran = new Random();
		SmartDAO dao = new SmartDAO();
		TestMail send = new TestMail();	
		
		String pw1 = (char)((int)(Math.random()*26)+65)+"";
		int pw2 = (int)(Math.random() * 99999 +100000);
		
		Vector<MemberDTO> v = dao.f_assword(email);
		String id = "aowlrsnfk1@gmail.com"; // ����ID
		String pw = "qaz124578"; // ���� PW
		String sendMail = "aowlrsnfk1@gmail.com";
		String title ="[����Ʈ ����] ��й�ȣ �缳�� ���� �ȳ�.";
		String contents = "�ӽ÷� ���� �� ��й�ȣ��"+pw1+pw2+"�Դϴ�.";
		
		
		dao.up_Password(pw1+pw2+"", email); //���� �������� ��й�ȣ ����
		
		send.sendMail(id, pw, sendMail,email, title, contents);
		ActionForward forward = new ActionForward();
		forward.setRedirect(false);
		forward.setNextPage("main.do");
		return forward;
	}
}
