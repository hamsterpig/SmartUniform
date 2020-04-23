package Smart_ActionPage;

import java.util.Vector;

import Smart.SmartDAO;
import SmartDTO.ManagerInquiryDTO;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import action.Action;
import action.ActionForward;
public class ManagerPartnerShipAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		// TODO Auto-generated method stub
		ActionForward forward = new ActionForward();
		SmartDAO dao = new SmartDAO();
		Vector<ManagerInquiryDTO> ve = dao.selectPartnerView();
		request.setAttribute("inquiry", ve);
		
		forward.setRedirect(false);
		forward.setNextPage("manager_partnership.jsp");
		
		return forward;
	}

}
