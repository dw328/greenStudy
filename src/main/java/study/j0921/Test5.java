package study.j0921;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@SuppressWarnings("serial")
@WebServlet("/Test5")
public class Test5 extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//sendRedirect <-이거 다이렉트(내가 경로까지 가는데 여기저기서 물건을 받고 가야해서 멈춰 있는다.) , getContextPath <-이거는 컨텍트로 가는...?
		//값을 가지고 이것저것 전송
		response.sendRedirect(request.getContextPath() +"/study/0921/test5.jsp");
	}
}
