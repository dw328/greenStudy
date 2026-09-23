package study.j0921;

import java.io.IOException;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@SuppressWarnings("serial")
// 이름을 두개 넣고 싶으면 이런식을 쓰면된다.
// 내가 만약에 url경로에 t7을 넣으면 서버에서 돌린 다음에 dispatcher 통해서 test7.jsp으로 넘어간다.
//...아니네...
//내가 t7을 넣으면 음...일단 내가 경로에 t7을 넣으면 dispatcher의 경로를 보면 test7.jsp로 넘어가니깐 test7.jsp으로 넘어간다.
@WebServlet({"/Test7", "/t7"})
public class Test7 extends HttpServlet{
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//멈춰서 지시(내가 Test7만 적어도 알아서 study부터 경로를 넣는다.) sendRedirect는 response 아래에 온다.
		// response.sendRedirect(request.getContextPath() + "/study/0921/test7.jsp");
		// dispatcher는 request 아래에 온다.
		RequestDispatcher dispatcher = request.getRequestDispatcher("/study/0921/test7.jsp");
		dispatcher.forward(request, response);
	}
}
