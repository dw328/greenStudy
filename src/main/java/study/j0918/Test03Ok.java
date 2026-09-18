package study.j0918;
//여기거 서브릿
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

@SuppressWarnings("serial")
@WebServlet("/test03Ok1") //컨트롤러 이거보고 찾아오는것
public class Test03Ok extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		int su = Integer.parseInt(request.getParameter("su"));
		
		String str = "";
		if(su %2 ==0) str ="even";
		else str = "odd";
		
		str = "/greenStudy/study/0918/test03Res.jsp?su="+su+"&str="+str;
		System.out.println("str:" + str);
		response.sendRedirect(str);
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
