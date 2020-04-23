package Smart_Page;

import java.util.Vector;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Smart.SmartDAO;
import SmartDTO.BoardDTO;
import action.Action;
import action.ActionForward;

public class CommentUp_page implements Action{

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String idx = request.getParameter("idx");
		
		
		ActionForward forward = new ActionForward();
		forward.setRedirect(false);
		forward.setNextPage("CommentUp.jsp?idx="+idx);	
		return forward;
	}

}
