package study2.mapping;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@SuppressWarnings("serial")
@WebServlet("*.do")
public class DoController extends HttpServlet{
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		DoInterface command = null;
		
		String view ="/WEB-INF/study2/mapping/";
		
		String uri = request.getRequestURI();
		
		System.out.println("uri: " + uri);
				
		String com = uri.substring(uri.lastIndexOf("/")+1, uri.lastIndexOf("."));
		
		if(com.equals("mapping")) {
			//전에 작성한 view 도메인과 지금현재 작성한 view 누적한다.
			view += "mapping.jsp";
		} else	if(com.equals("admin")) {
			
			command = new DoAdminCommand();
			command.excute(request, response);
			
			view += "admin.jsp";
		} else	if(com.equals("member")) {
			command = new DoMemberCommand();
			command.excute(request, response);
			view += "member.jsp";
		} else	if(com.equals("guest")) {
			command = new DoGuestCommand();
			command.excute(request, response);
			view += "guest.jsp";
		} else	if(com.equals("board")) {
			command = new DoBoardCommand();
			command.excute(request, response);
			view += "board.jsp";
		} else	if(com.equals("pds")) {
			command = new DoPdsCommand();
			command.excute(request, response);
			view += "pds.jsp";
	}
		request.getRequestDispatcher(view).forward(request, response);
	}
}
