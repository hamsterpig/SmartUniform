package Smart_ActionPage;

import java.util.Vector;

import Smart.SmartDAO;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import action.Action;
import action.ActionForward;
public class ManagerInquiryViewAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		// TODO Auto-generated method stub
		String idx = request.getParameter("idx");
		
		ActionForward forward = new ActionForward();
		forward.setRedirect(false);
		forward.setNextPage("managerinquiry_view.jsp?idx="+idx);
		return forward;
	}

}
