package Smart_ActionPage;

import java.util.Vector; 

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Smart.SmartDAO;
import SmartDTO.*;
import action.Action;
import action.ActionForward;

public class CommentUpAction implements Action{

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String idx = request.getParameter("idx");
		String content = request.getParameter("content");
		String id = request.getParameter("id");
		SmartDAO dao = new SmartDAO();
		dao.up_comment(idx, content,id);
		
		
		ActionForward forward = new ActionForward();	
		forward.setRedirect(false);
		forward.setNextPage("boardmain.do");
		
		return forward;
	}
}
