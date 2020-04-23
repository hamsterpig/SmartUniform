package Smart_Page;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Smart.SmartDAO;
import SmartDTO.BoardDTO;
import action.*;

public class Board_AddPage implements Action{

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
	
		ActionForward forward = new ActionForward();
		forward.setRedirect(false);
		forward.setNextPage("board_add.jsp");
		
		return forward;
	}

}
