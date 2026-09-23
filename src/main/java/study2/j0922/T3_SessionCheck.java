package study2.j0922;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Enumeration;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@SuppressWarnings("serial")
@WebServlet("/T3_SessionCheck")
public class T3_SessionCheck extends HttpServlet{
	
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		String SessionName = "";
		Enumeration<String> enumCK = session.getAttributeNames();
		
		while(enumCK.hasMoreElements()) {
			SessionName = enumCK.nextElement();
			
			System.out.println(SessionName + "/" + session.getAttribute(SessionName));
		}
		
		request.setAttribute("SessionName", SessionName + ":" + session.getAttribute(SessionName));
		
		String viewPage = "/WEB-INF/study2/0922_storage/t3_SessionCheck.jsp";
		RequestDispatcher dispatcher = request.getRequestDispatcher(viewPage);
		dispatcher.forward(request, response);
	}


}




