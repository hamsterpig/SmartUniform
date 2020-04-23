package Smart_ActionPage;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Smart.SmartDAO;
import action.Action;
import action.ActionForward;

public class Board_UpAction implements Action{
	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		ActionForward forward = new ActionForward();	
		String title = request.getParameter("title");
		String content = request.getParameter("content");
		String id = request.getParameter("id");	
		String idx = request.getParameter("idx");
		SmartDAO dao = new SmartDAO();
		
		dao.up_board(idx,id, title, content);
		
		
		
		
		forward.setRedirect(false);
		forward.setNextPage("boardmain.do");
		return forward;
	}
}
