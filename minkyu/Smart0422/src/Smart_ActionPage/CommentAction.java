package Smart_ActionPage;

import java.util.Vector;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Smart.SmartDAO;
import SmartDTO.MemberDTO;
import action.Action;
import action.ActionForward;

public class CommentAction implements Action{

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String board_idx = request.getParameter("board_idx");
		String id = request.getParameter("id");
		String content = request.getParameter("content");
		
		SmartDAO dao = new SmartDAO();
		Vector<MemberDTO> v = dao.SelectMember_nickname(id);
	
		for(int i=0;i<v.size();i++){
			dao.addComment(board_idx,v.get(i).getId(),id, content);
		}

		ActionForward forward = new ActionForward();
		
		forward.setRedirect(false);
		forward.setNextPage("Board_ViewAction.do?idx="+board_idx);
		
		return forward;
	}

}
