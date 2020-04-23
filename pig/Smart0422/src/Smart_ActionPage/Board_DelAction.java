package Smart_ActionPage;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.websocket.Session;

import action.Action;
import action.ActionForward;

public class Board_DelAction implements Action{

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		ActionForward forward = new ActionForward();	
		String board_id = request.getParameter("board_id");
	
		forward.setRedirect(false);
		forward.setNextPage("board_delAction.jsp?board_id="+board_id);
		return forward;
	}

}
