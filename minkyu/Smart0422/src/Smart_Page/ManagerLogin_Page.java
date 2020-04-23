package Smart_Page;

import javax.servlet.http.HttpServletRequest;

import javax.servlet.http.HttpServletResponse;

import action.Action;
import action.ActionForward;

public class ManagerLogin_Page implements Action{

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		// TODO Auto-generated method stub
		ActionForward forward =new ActionForward();
		forward.setRedirect(false);
		forward.setNextPage("managerlogin.jsp");
		return forward;
	}

}
