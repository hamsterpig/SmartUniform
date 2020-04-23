package Smart_ActionPage;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Smart.SmartDAO;
import action.Action;
import action.ActionForward;

public class InsertAction implements Action{

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) {
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String nicname = request.getParameter("nicname");
		String email = request.getParameter("email");
		
		SmartDAO dao = new SmartDAO();
		dao.insert(id, pw, nicname, email);
		ActionForward forward = new ActionForward();
		forward.setRedirect(false);
		forward.setNextPage("main.do");
		
		return forward;
	}
	
}
