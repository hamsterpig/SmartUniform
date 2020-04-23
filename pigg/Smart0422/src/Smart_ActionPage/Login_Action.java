package Smart_ActionPage;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Smart.SmartDAO;
import action.Action;
import action.ActionForward;

public class Login_Action implements Action{
	HttpSession session;
	
	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) {
		
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		
		SmartDAO dao = new SmartDAO();
		String temp = dao.isLogin(id, pw);
		System.out.println(temp);
		
		if(temp!=null){
			session = request.getSession();
			session.setAttribute("id", temp);
		}
		
		System.out.println(session.getId() + " Login_action");
		
		ActionForward forward = new ActionForward();
		forward.setRedirect(false);
		forward.setNextPage("main.do");
		
		return forward;
	}

}
