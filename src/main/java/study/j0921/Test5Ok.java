package study.j0921;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@SuppressWarnings("serial")
@WebServlet("/Test5Ok")
public class Test5Ok extends HttpServlet{
	
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse respanse) throws ServletException, IOException {
		System.out.println("여기는 test5Ok 서블릿입니다.");
		
		
	}
}
