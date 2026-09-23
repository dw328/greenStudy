package study.exam;

import java.io.IOException;
import java.io.PrintWriter;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@SuppressWarnings("serial")
@WebServlet("/SubmitEx1")
public class Ex1_Submit extends HttpServlet{
		@Override
		protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			String mid = request.getParameter("mid") ==null ? "" : request.getParameter("mid");
			String pwd = request.getParameter("pwd") ==null ? "" : request.getParameter("pwd");
			String checkbox = request.getParameter("checkbox") == null ? "" : "1";
			
			Cookie cookiemid = new Cookie("cMid", mid);
			cookiemid.setMaxAge(60*60*24);
			response.addCookie(cookiemid);

			Cookie cookiepwd = new Cookie("cpwd", pwd);
			cookiepwd.setMaxAge(60*60*24);
			response.addCookie(cookiepwd);
			
			Cookie cookiecheckbox = new Cookie("cCheckBox", checkbox);
			cookiecheckbox.setMaxAge(60*60*24);
			response.addCookie(cookiecheckbox);
			
			Cookie[] cookies = request.getCookies();
			
			for(Cookie cookie : cookies) {
				if(cookie.getName().equals("cMid")) {
					mid = cookie.getValue();
				} else if(cookie.getName().equals("cpwd")) {
					pwd = cookie.getValue();
				}	else if(cookie.getName().equals("cCheckBox")) {
					checkbox = cookie.getValue();
				}
				
				request.setAttribute("cMid",mid);
				request.setAttribute("cpwd",pwd);
				request.setAttribute("cCheckBox",checkbox);
			}
			
			PrintWriter out = response.getWriter();
			out.println("<script>");
			out.println("alert('세션이 저장되었습니다.');");
			out.println("location.href ='"+ request.getContextPath()+"/ex1';");
			out.println("</script>");
			
			
			if(checkbox == "") {
				cookiemid.setMaxAge(0);
				cookiepwd.setMaxAge(0);
				response.addCookie(cookiemid);
				response.addCookie(cookiepwd);
				System.out.println("쿠키를 삭제 완료했습니다.");
			}
			
		}
}
