package Smart_ActionPage;

import java.io.File;
import java.io.IOException;
import java.util.Enumeration;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import Smart.SmartDAO;
import action.Action;
import action.ActionForward;

public class ShopFileUploadAction  implements Action{

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		// TODO Auto-generated method stub
		ActionForward forward = new ActionForward();
		String saveFolder = request.getSession().getServletContext().getRealPath("files");
		int maxSize = 1024*1024*20;
		String encType="euc-kr";
		SmartDAO dao = new SmartDAO();
		
		try{
			MultipartRequest mrequest= new MultipartRequest(request,saveFolder,maxSize,encType,new DefaultFileRenamePolicy());
			
			String name = mrequest.getParameter("name");
			String tel = mrequest.getParameter("tel");
			String email = mrequest.getParameter("email");
			String school = mrequest.getParameter("school");
			String agency = mrequest.getParameter("agency");
			String type = mrequest.getParameter("type");
			String title = mrequest.getParameter("title");
			String content = mrequest.getParameter("content");
			
			String originname="";
			dao.Inquiry(name, tel, email, school, agency, type, title, content, originname);	
			
			Enumeration files = mrequest.getFileNames();
			while(files.hasMoreElements()){
				String fname=(String)files.nextElement();
				originname=mrequest.getOriginalFileName(fname);
				
			}
			
			
			
			System.out.println("���̵�"+name);
			System.out.println("��ȭ��ȣ"+tel);
			System.out.println("�̸���"+email);
			System.out.println("�б���"+school);
			System.out.println("�븮��"+agency);
			System.out.println("���� ���ϸ�"+originname);
	
			
		}catch(IOException ioe){
			ioe.printStackTrace();
			System.out.println("����� ����");
		}catch(Exception e){
			e.printStackTrace();
		}
		forward.setRedirect(false);
		forward.setNextPage("main_shop.do");
		return forward;
	}

}
