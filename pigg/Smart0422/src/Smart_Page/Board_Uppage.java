package Smart_Page;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import action.Action;
import action.ActionForward;

public class Board_Uppage implements Action{
	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		ActionForward forward = new ActionForward();	
		String board_idx = request.getParameter("board_idx");
		forward.setRedirect(false);
		forward.setNextPage("board_up.jsp?board_idx="+board_idx);
		return forward;

	}
}
