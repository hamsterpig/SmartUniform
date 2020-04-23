package Smart_ActionPage;

import java.sql.ResultSet;

import java.util.Vector;
import Smart.SmartDAO;
import SmartDTO.AdminDTO;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import sun.nio.cs.HistoricallyNamedCharset;
import action.Action;
import action.ActionForward;
public class ManagerLoginAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		// TODO Auto-generated method stub
		ActionForward forward = new ActionForward();
		String manager_id = request.getParameter("manager_id");
		String manager_pw = request.getParameter("manager_pw");
		HttpSession session = request.getSession();
		
		SmartDAO dao = new SmartDAO();
		Vector<AdminDTO> dto =dao.selectManager();
		for(int i=0; i<dto.size(); i++){
			
			if(manager_id.equals(dto.get(i).getId()) && manager_pw.equals(dto.get(i).getPASSWORD())){
				session.setAttribute("id",manager_id);
				session.setAttribute("pw",manager_pw);
				forward.setRedirect(false);
				forward.setNextPage("manager_main.jsp");
			}else{
				forward.setRedirect(false);
				forward.setNextPage("login.do");
			}
		}
		return forward;
	}

}
