package study.j0918;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;


@SuppressWarnings("serial")
//****아래에 있는게 중요*******
@WebServlet("/Test04Ok")
//*************************
public class Test04Ok extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("이곳은 doGet메소드 입니다.");
		//여기서의 값은 내가 출력하고 싶은 jsp의 url이랑 같아야한다.
		//sendRedirect로 경로를 읽고 넘긴다.
		response.sendRedirect("/greenStudy/study/0918/test04Res.jsp");
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
