package Smart_ActionPage;

import javax.servlet.http.HttpServletRequest;

import javax.servlet.http.HttpServletResponse;
import action.Action;
import action.ActionForward;
import Smart.SmartDAO;

public class ManagerQueryAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("UTF-8");
		ActionForward forward = new ActionForward();
		String id = request.getParameter("hidden_id");
		String title = request.getParameter("reply_title");
		String content =request.getParameter("reply_ta");
		
	
		
		SmartDAO dao = new SmartDAO();
		dao.insertreply(id, title, content);

		
		forward.setRedirect(false);
		forward.setNextPage("manager_main.jsp");
		return forward;
	}

}
