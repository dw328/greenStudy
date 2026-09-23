package study.exam;

import java.io.IOException;
import java.net.URLEncoder;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@SuppressWarnings("serial")
@WebServlet("/Exam03Ok")
public class Exam03Ok extends HttpServlet{
	
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {	
		response.setContentType("text/html; charset=utf-8");
		
		System.out.println("이곳은 exam03Ok.java 입니다.");
		
		String mid = request.getParameter("mid");
		String pwd = request.getParameter("pwd");
		String name = request.getParameter("name");
		int age = Integer.parseInt(request.getParameter("age"));
		String gender = request.getParameter("gender");
		String[] cards = request.getParameterValues("card");
		String job = request.getParameter("job");
		String content = request.getParameter("content");
		
		System.out.println("아이디: " + mid);
		System.out.println("비밀번호: " + pwd);
		System.out.println("이름: " + name);
		System.out.println("나이: " + age);
		System.out.println("성별: " + gender);
		System.out.println("직업: " + job);
		System.out.println("자기소개서: " + content);
		
		String tempCard = "";
		for(String card : cards) {
			System.out.println(card);
			tempCard+= card + "/";
		}
		tempCard = tempCard.replace("/", "\n");
		System.out.println("card:" +tempCard);
		

		String viewPage = "/study/ex1/ex3.jsp?mid="+mid+"&pwd="+pwd+"&name="+URLEncoder.encode(name)+"&age="+age+"&gender="+URLEncoder.encode(gender)+"&job="+URLEncoder.encode(job)+"&content="+URLEncoder.encode(content)+"&card="+URLEncoder.encode(tempCard);
		RequestDispatcher dispatcher = request.getRequestDispatcher(viewPage);
		dispatcher.forward(request, response);
	}
}
