package SVL;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Smart_ActionPage.*;
import Smart_Page.*;
import action.Action;
import action.ActionForward;

/**
 * Servlet implementation class SmartController
 */
@WebServlet("/SmartController")
public class SmartController extends HttpServlet {
	HttpSession session;
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public SmartController() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doProcess(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)d
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doProcess(request, response);
	}

	public void doProcess(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String requestURI = request.getRequestURI();
		int cmdIdx = requestURI.lastIndexOf("/") + 1;
		String command = requestURI.substring(cmdIdx);
		String viewPage = null;

		Action action = null;
		ActionForward forward = null;
		System.out.println("*" + command + "*");
		// *.do ó����

		HttpSession session = request.getSession();
		System.out.println(session.getId() + " in controller");		
		session = request.getSession();
		String test = (String) session.getAttribute("id");
		System.out.println(test);

		try {
			 if (command.equals("main.do")) { // ����������
				action = new MainGo();
				forward = action.execute(request, response);
			} else if (command.equals("login.do")) { // �α�������������
				action = new SmartLoginPage();
				forward = action.execute(request, response); // �α��� �׼�
			} else if (command.equals("Login_Action.do")) {
				action = new Login_Action();
				forward = action.execute(request, response);
			} else if (command.equals("Logout.do")) { //�α׾ƿ�
				action = new LogoutPage();
				forward = action.execute(request, response);
			} else if (command.equals("register.do")) { // ȸ����������������d
				action = new SignupPage();
				forward = action.execute(request, response);
			} else if (command.equals("InsertAction.do")) { // ȸ������ �׼�
				action = new InsertAction();
				forward = action.execute(request, response);
			} else if (command.equals("boardmain.do")) { // �Խ��� ������ ����d
				action = new Board_Action();
				forward = action.execute(request, response);
			} else if (command.equals("Board_AddAction.do")) { // �Խ��ǿ� �� �߰� �׼�
				action = new Board_AddAction();
				forward = action.execute(request, response);
			} else if (command.equals("Board_AddPage.do")) { // �۾��� �������� ������ �׼�
				action = new Board_AddPage();
				forward = action.execute(request, response);
			} else if (command.equals("Board_ViewAction.do")) { // �Խñ� ��������
				action = new Board_ViewAction();
				forward = action.execute(request, response);
			} else if (command.equals("del_board.do")) { // �Խñ� ����
				action = new Board_DelAction();
				forward = action.execute(request, response);
			} else if (command.equals("up_board.do")) { // �Խñ� ����
				action = new Board_Uppage();
				forward = action.execute(request, response);
			} else if (command.equals("Board_UpAction.do")) { // �Խñ� ����
				action = new Board_UpAction();
				forward = action.execute(request, response);
			} else if (command.equals("CommentAction.do")) { // ��� ����
				action = new CommentAction();
				forward = action.execute(request, response);
			} else if (command.equals("DelComment.do")) { // ��� ����
				action = new DelComment();
				forward = action.execute(request, response);
			} else if (command.equals("UpComment.do")) { // ��� ���� ������
				action = new CommentUp_page();
				forward = action.execute(request, response);
			} else if (command.equals("CommentUpAction.do")) { // ��� ���� �׼�
				action = new CommentUpAction();
				forward = action.execute(request, response);
			} else if (command.equals("Find_password.do")) { // ��й�ȣã�� ������ �׼�
				action = new Find_PasswordPage();
				forward = action.execute(request, response);
			} else if (command.equals("Find_PasswordAction.do")) { // ��й�ȣ ã�� ��ɾ׼�
				action = new Find_PasswordAction();
				forward = action.execute(request, response);
			} else if (command.equals("main_shop.do")) { // �Խñ� ��������
				action = new Main_ShopAction();
				forward = action.execute(request, response);
			} else if(command.equals("managerloginA.do")){	
				action = new ManagerLoginAction();
				forward = action.execute(request, response);
			}else if(command.equals("managerlogin.do")){//�α���������
				action = new ManagerLogin_Page();
				forward = action.execute(request, response);
			}else if(command.equals("manager_about.do")){//�����Ǿ׼�
				action = new ManagerAboutAction();
				forward = action.execute(request,response);
			}else if(command.equals("manager_partnership.do")){//���� ���� �׼�
				action = new ManagerPartnerShipAction();
				forward =action.execute(request, response);
			}else if(command.equals("manager_agency.do")){//�븮�� ���� �׼�
				action =  new ManagerAgencyAction();
				forward = action.execute(request,response);
			}else if(command.equals("managerinquiry_view.do")){//�Խñ۴������� ���̵� ���� ���� ������ �׼�
				action = new ManagerInquiryViewAction();
				forward = action.execute(request, response);
			}else if(command.equals("managerReply.do")){//�Խñ۴������� ���̵� ���� ���� �����ϴ� �׼�
				action = new ManagerReplyAction();
				forward =action.execute(request, response);
			}else if(command.equals("ManagerQueryAction.do")){//���Ǳۿ� ����
				action = new ManagerQueryAction();
				forward= action.execute(request, response);
			}else if(command.equals("ManagerLogout.do")){//session�α׾ƿ�
				action = new ManagerLogout_Page();
				forward = action.execute(request, response);
			}else if(command.equals("MoveStyle.do")){//main���� style �������� ���� ��ũ������
				action = new MoveStyle_Page();
				forward= action.execute(request, response);
			}else if(command.equals("ShopFileUploadAction.do")){ // ���� ���ε�
				action = new ShopFileUploadAction();
				forward= action.execute(request, response);
			} else if(command.equals("about_shop.do")){ // ������ �������̵�
				action = new AboutPage();
				forward= action.execute(request, response);
			} else {
				response.sendRedirect("main.do");
			}
			if (forward != null) {
				if (forward.isRedirect()) {
					response.sendRedirect(forward.getNextPage());
				} else {
					RequestDispatcher dispatcher = request.getRequestDispatcher(forward.getNextPage());
					dispatcher.forward(request, response);
				}
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
