package study2.jstl;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@SuppressWarnings("serial")
@WebServlet("/study2/jstl/Jstl2")
public class Jstl2 extends HttpServlet{
		@Override
		protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			String[] kcards ={"국민카드","BC카드","Lg카드","삼성카드","농협","비자"};
			request.setAttribute("kards", kcards);
			
			int[] i = {1,2,3,4,5,6,7,8,9,10};
			request.setAttribute("i", i);
			int[] j = {1,2,3,4,5,6,7,8,9,10};
			request.setAttribute("i", i);
			
			//vos 자료 담기
			List<String> vos = new ArrayList<>();
			
			vos.add("홍길동");
			vos.add("김말숙");
			vos.add("이기자");
			vos.add("김연아");
			vos.add("강감찬");
			 
			request.setAttribute("vos", vos);
			
			String viewPage = "/WEB-INF/study2/jstl/jstl2.jsp";
			request.getRequestDispatcher(viewPage).forward(request, response);
		}

}
