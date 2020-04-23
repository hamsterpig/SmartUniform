package Smart_ActionPage;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Smart.SmartDAO;
import action.Action;
import action.ActionForward;

public class Delete_Action implements Action{

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) {
		
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		
		SmartDAO dao = new SmartDAO();
		dao.delete(id,pw);
		ActionForward forward = new ActionForward();
		forward.setRedirect(false);
		forward.setNextPage("Login.jsp");
		
		return forward;
	}
	
	
}
