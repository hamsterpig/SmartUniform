package Smart_ActionPage;

import java.io.IOException;
import java.util.Enumeration;
import java.util.Vector; 

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import Smart.SmartDAO;
import SmartDTO.BoardDTO;
import action.Action;
import action.ActionForward;

public class Board_AddAction implements Action{

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		String saveFolder = request.getSession().getServletContext().getRealPath("files");
		int maxSize = 1024*1024*20;
		String encType="euc-kr";
		
		try{
		MultipartRequest mrequest= new MultipartRequest(request,saveFolder,maxSize,encType,new DefaultFileRenamePolicy());
		
		String title = mrequest.getParameter("title");
		String content = mrequest.getParameter("content");
		String nickname = mrequest.getParameter("nickname");
		String id = mrequest.getParameter("id"); 
		String originname = new String();
		String sysname = new String();
		
		System.out.println("보드애드액션 페이지");
		System.out.println("------------------");
		System.out.println(title);
		System.out.println(content);
		System.out.println(nickname);
		System.out.println(id);
		System.out.println(originname);
		System.out.println(sysname);
		System.out.println("------------------");
		
		Enumeration files = mrequest.getFileNames();
		while(files.hasMoreElements()){
			String fname=(String)files.nextElement();
			originname=mrequest.getOriginalFileName(fname);
			sysname=mrequest.getFilesystemName(fname);
		}	
		
		SmartDAO dao = new SmartDAO();
		dao.addBoard(id ,nickname, title, content ,sysname ,originname);
			
		
		}catch(IOException e){
			
		}catch (Exception e) {
			// TODO: handle exception
		}
		
		
		ActionForward forward = new ActionForward();	
		forward.setRedirect(false);
		forward.setNextPage("boardmain.do");
		
		return forward;
	}

}
