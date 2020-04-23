package Smart_ActionPage;

import java.util.Vector;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Smart.SmartDAO;
import SmartDTO.*;
import action.Action;
import action.ActionForward;

public class Board_Action implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		ActionForward forward = new ActionForward();
		SmartDAO dao = new SmartDAO();
		Vector<BoardDTO> v = dao.SelectBoard();
		request.setAttribute("board", v);
		
		String id = request.getParameter("userid");
		/*System.out.println(id+"++++++++");*/
		
		HttpSession session = request.getSession();
		/*System.out.println(session.getId() + " in board");*/
		
		forward.setRedirect(false);
		forward.setNextPage("smart_board.jsp");
		
		return forward;
	}
}
