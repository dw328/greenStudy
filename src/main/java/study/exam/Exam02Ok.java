package study.exam;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@SuppressWarnings("serial")
@WebServlet("/Exam02Ok")
public class Exam02Ok extends HttpServlet{
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String[] foodshop = new String[5];
		int ramdom = (int)(Math.random() + 1) * 4;
		for(int i = 0; i <= 4; i++) {
			foodshop[i] = request.getParameter("foodshow" + i);
			System.out.println("foodshop: " + foodshop[i]);
			System.out.println(ramdom);
		}
	}
}
