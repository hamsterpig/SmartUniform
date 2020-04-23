package Smart_ActionPage;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Smart.SmartDAO;
import action.Action;
import action.ActionForward;

public class DelComment implements Action{

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		String idx = request.getParameter("idx");
		String board_idx = request.getParameter("board_idx");
		SmartDAO dao = new SmartDAO();
	
		dao.del_Comment(idx);

		
		ActionForward forward = new ActionForward();			
		forward.setRedirect(false);
		forward.setNextPage("Board_ViewAction.do?idx="+board_idx);
		return forward;
	}
	
}
