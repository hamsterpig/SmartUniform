package Smart_ActionPage;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import action.Action;
import action.ActionForward;

public class Main_ShopAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		// TODO Auto-generated method stub
		System.out.println("----------------------------");
		System.out.println("메인샵 페이지");
		System.out.println("----------------------------");
		
		ActionForward forward = new ActionForward();
		forward.setRedirect(false);
		forward.setNextPage("main_shop.jsp");
		
		return forward;
	}

}
