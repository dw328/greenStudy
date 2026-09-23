package study.j0921;

import java.io.IOException;

import com.sun.net.httpserver.Request;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@SuppressWarnings("serial")
@WebServlet("/Test6")
public class Test6 extends HttpServlet{

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	// requestDispatcher는 직렬 전송으로 내가 무슨 변수를 가지고 있는지 모른다. 그래서 url 경로가 나오지 않는다.
	// (request)요청한다 이런 url 경로가 있는지 찾는다.
	// 그리고 forward 넘기는건데 넘기는건 무조건 요청과 응답을 보내야한다.
//		RequestDispatcher dispatcher = requst.getRequestDispatcher("/study/0921/test6.jsp");
//		dispatcher.forward(request, response);
		String view = "/study/0921/test6.jsp";
		request.getRequestDispatcher(view).forward(request, response);
	}
	
}
