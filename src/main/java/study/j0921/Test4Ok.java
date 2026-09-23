package study.j0921;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.io.PrintWriter;


@SuppressWarnings("serial")
@WebServlet("/Test4Ok")
public class Test4Ok extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//.append 내용 추가추가, getWriter 결과만 출력
		/* response.getWriter().append("Served at: ").append(request.getContextPath());
		 */
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("이곳은 Test4Ok 서블릿 파일입니다.");
		
		int su1 =request.getParameter("su1") == null ? 0 : Integer.parseInt(request.getParameter("su1")) ;
		int su2 =request.getParameter("su2") == null ? 0 : Integer.parseInt(request.getParameter("su2")) ;
		int res = su1 + su2;
		
		System.out.println("res:" + res);

		/* response.getWriter().append("res: "+res); response.getWriter().
			 append("<br/><a href ='test4.jsp' class ='btn btn-success'>test4.jsp</a>");
		 */
		//out.print랑 같다.
		PrintWriter out = response.getWriter();
		out.print("res:" + res);
		out.print("<br/><a href ='test4.jsp' class ='btn btn-success'>test4.jsp</a>");
		//doGet(request, response);
	}

}
