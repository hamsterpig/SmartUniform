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
		// *.do 처음값

		HttpSession session = request.getSession();
		System.out.println(session.getId() + " in controller");		
		session = request.getSession();
		String test = (String) session.getAttribute("id");
		System.out.println(test);

		try {
			 if (command.equals("main.do")) { // 메인페이지
				action = new MainGo();
				forward = action.execute(request, response);
			} else if (command.equals("login.do")) { // 로그인페이지가기
				action = new SmartLoginPage();
				forward = action.execute(request, response); // 로그인 액션
			} else if (command.equals("Login_Action.do")) {
				action = new Login_Action();
				forward = action.execute(request, response);
			} else if (command.equals("Logout.do")) { //로그아웃
				action = new LogoutPage();
				forward = action.execute(request, response);
			} else if (command.equals("register.do")) { // 회원가입페이지가기d
				action = new SignupPage();
				forward = action.execute(request, response);
			} else if (command.equals("InsertAction.do")) { // 회원가입 액션
				action = new InsertAction();
				forward = action.execute(request, response);
			} else if (command.equals("boardmain.do")) { // 게시판 페이지 메인d
				action = new Board_Action();
				forward = action.execute(request, response);
			} else if (command.equals("Board_AddAction.do")) { // 게시판에 글 추가 액션
				action = new Board_AddAction();
				forward = action.execute(request, response);
			} else if (command.equals("Board_AddPage.do")) { // 글쓰기 눌렀을때 페이지 액션
				action = new Board_AddPage();
				forward = action.execute(request, response);
			} else if (command.equals("Board_ViewAction.do")) { // 게시글 눌렀을때
				action = new Board_ViewAction();
				forward = action.execute(request, response);
			} else if (command.equals("del_board.do")) { // 게시글 삭제
				action = new Board_DelAction();
				forward = action.execute(request, response);
			} else if (command.equals("up_board.do")) { // 게시글 삭제
				action = new Board_Uppage();
				forward = action.execute(request, response);
			} else if (command.equals("Board_UpAction.do")) { // 게시글 삭제
				action = new Board_UpAction();
				forward = action.execute(request, response);
			} else if (command.equals("CommentAction.do")) { // 댓글 쓰기
				action = new CommentAction();
				forward = action.execute(request, response);
			} else if (command.equals("DelComment.do")) { // 댓글 삭제
				action = new DelComment();
				forward = action.execute(request, response);
			} else if (command.equals("UpComment.do")) { // 댓글 수정 페이지
				action = new CommentUp_page();
				forward = action.execute(request, response);
			} else if (command.equals("CommentUpAction.do")) { // 댓글 수정 액션
				action = new CommentUpAction();
				forward = action.execute(request, response);
			} else if (command.equals("Find_password.do")) { // 비밀번호찾기 페이지 액션
				action = new Find_PasswordPage();
				forward = action.execute(request, response);
			} else if (command.equals("Find_PasswordAction.do")) { // 비밀번호 찾기 기능액션
				action = new Find_PasswordAction();
				forward = action.execute(request, response);
			} else if (command.equals("main_shop.do")) { // 게시글 눌렀을때
				action = new Main_ShopAction();
				forward = action.execute(request, response);
			} else if(command.equals("managerloginA.do")){	
				action = new ManagerLoginAction();
				forward = action.execute(request, response);
			}else if(command.equals("managerlogin.do")){//로그인페이지
				action = new ManagerLogin_Page();
				forward = action.execute(request, response);
			}else if(command.equals("manager_about.do")){//고객문의액션
				action = new ManagerAboutAction();
				forward = action.execute(request,response);
			}else if(command.equals("manager_partnership.do")){//업무 제휴 액션
				action = new ManagerPartnerShipAction();
				forward =action.execute(request, response);
			}else if(command.equals("manager_agency.do")){//대리점 문의 액션
				action =  new ManagerAgencyAction();
				forward = action.execute(request,response);
			}else if(command.equals("managerinquiry_view.do")){//게시글눌렀을떄 아이디 제목 내용 나오는 액션
				action = new ManagerInquiryViewAction();
				forward = action.execute(request, response);
			}else if(command.equals("managerReply.do")){//게시글눌렀을떄 아이디 제목 내용 답장하는 액션
				action = new ManagerReplyAction();
				forward =action.execute(request, response);
			}else if(command.equals("ManagerQueryAction.do")){//문의글에 답장
				action = new ManagerQueryAction();
				forward= action.execute(request, response);
			}else if(command.equals("ManagerLogout.do")){//session로그아웃
				action = new ManagerLogout_Page();
				forward = action.execute(request, response);
			}else if(command.equals("MoveStyle.do")){//main에서 style 메인으로 가는 링크페이지
				action = new MoveStyle_Page();
				forward= action.execute(request, response);
			}else if(command.equals("ShopFileUploadAction.do")){ // 파일 업로드
				action = new ShopFileUploadAction();
				forward= action.execute(request, response);
			} else if(command.equals("about_shop.do")){ // 고객문의 페이지이동
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
