package Smart_ActionPage;

import java.util.Vector;

import Smart.SmartDAO;
import SmartDTO.Inquiry_CustomerDTO;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import action.Action;
import action.ActionForward;
public class ManagerAgencyAction implements Action{

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		// TODO Auto-generated method stub
		ActionForward forward = new ActionForward();
		SmartDAO dao = new SmartDAO();
		Vector<Inquiry_CustomerDTO> ve = dao.selectAgencyView();
		request.setAttribute("inquiry_c",ve);
		
		forward.setRedirect(false);
		forward.setNextPage("manager_agency.jsp");
		return forward;
	}

}
