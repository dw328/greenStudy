package study.exam;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;


@SuppressWarnings("serial")
@WebServlet("/ex01Ok")
public class Exam01Ok extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String play = request.getParameter("player");
		int palyer = Integer.parseInt(play);
		int computer = (int)(Math.random()*3) +1;
		String url ="";
		String str = "";
		String result ="";
		
		//1. 가위 2.바위 3.보
		if(palyer == computer) {
			// 값을 넘겨줄 때는 url로 넘어가기 때문에 이렇게 가져가면 에러남...
			//아....한글 넣고 url로 넘기는걸 배웠나...?
			str ="<img src =\"/greenStudy/study/images/0" + computer + ".png\" style =\"width: 400px; display: block; margin: 0 440px; position: absolute;\" />";
			result = "draw";
			System.out.println(str);
			
			url = "/greenStudy/study/ex1/ex01_Res.jsp?str="+str+"&result="+ result;
			response.sendRedirect(url);
		}else {
			//플레이어가 이겼을 때 (3.보 > 2.바위 ) (2. 바위 > 1.가위) 예외(1. 가위 > 3.보)
			if(palyer > computer || (palyer == 1 && computer == 3)) {
				str ="<img src =\"/greenStudy/study/images/0" + computer + ".png\" style =\"width: 400px; display: block; margin: 0 440px; position: absolute;\" />";
				System.out.println(str);
				result = "win";
				
				url = "/greenStudy/study/ex1/ex01_Res.jsp?str="+str+"&result="+ result;
				response.sendRedirect(url);
			} else {
				str ="<img src =\"/greenStudy/study/images/0" + computer + ".png\" style =\"width: 400px; display: block; margin: 0 440px; position: absolute;\" />";
				System.out.println(str);
				result = "defeat";
				
				url = "/greenStudy/study/ex1/ex01_Res.jsp?str="+str+"&result="+ result;
				response.sendRedirect(url);
			}
			
		}
		
		
		
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		doGet(request, response);
	}

}
