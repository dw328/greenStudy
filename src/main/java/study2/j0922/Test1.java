package study2.j0922;

import java.io.IOException;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@SuppressWarnings("serial")
// 파일이 다른 곳에 있어도 컨트롤러의 경로가 같으면 에러가 난다.
// 패키지 명을 컨트롤러로 사용한다.
@WebServlet("/j0922/Test1")
public class Test1 extends HttpServlet{
	
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("이곳은 study2의 Test1.java입니다.");
		
		//jsp의 경로를 넣어야한다. (반대로 서브릿 -> web)
		RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/study2/0922_storage/t1.jsp");
		dispatcher.forward(request, response);
	}
}
