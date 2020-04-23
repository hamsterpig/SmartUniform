package Smart_ActionPage;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import action.Action;
import action.ActionForward;
public class ManagerReplyAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		// TODO Auto-generated method stub
		
		ActionForward forward = new ActionForward();
		
		String id = request.getParameter("hidden_id");
		request.setAttribute("id", id);
		forward.setRedirect(false);
		forward.setNextPage("managerReply.jsp");
		return forward;
	}

}
