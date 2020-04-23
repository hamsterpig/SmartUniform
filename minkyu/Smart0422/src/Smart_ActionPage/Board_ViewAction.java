package Smart_ActionPage;

import java.util.Vector;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Smart.SmartDAO;
import SmartDTO.BoardDTO;
import action.Action;
import action.ActionForward;

public class Board_ViewAction implements Action{

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String idx = request.getParameter("idx"); //게시글(i)번째의 값 
		
		ActionForward forward = new ActionForward();
		SmartDAO dao = new SmartDAO();
		Vector<BoardDTO> v = dao.viewList(idx);
		dao.hits(idx);
		request.setAttribute("view", v);
		
		
		forward.setRedirect(false);
		forward.setNextPage("board_view.jsp");
		
		return forward;
	}

}
