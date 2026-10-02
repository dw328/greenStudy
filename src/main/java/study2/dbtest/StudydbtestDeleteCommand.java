package study2.dbtest;

import java.io.IOException;
import java.io.PrintWriter;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import study2.StudyDAO;
import study2.StudyInterface;

public class StudydbtestDeleteCommand implements StudyInterface {

	@Override
	public void excute(HttpServletRequest request, HttpServletResponse reponse) throws ServletException, IOException {
		reponse.setContentType("text/html; charset=utf-8");
		String mid =request.getParameter("mid") ==null ? "" : request.getParameter("mid");
		
		StudyDAO dao = new StudyDAO();
		
		int res = dao.setDelete(mid);
		
		PrintWriter out = reponse.getWriter();
		
		if(res != 0) {
			out.println("<script>");
			out.println("alert('회원 삭제되었습니다.')");
			out.println("location.href='"+request.getContextPath()+"/dbtestForm.st';");
			out.println("</script>");
		} else {
			out.println("<script>");
			out.println("alert('회원 수정을 실패 하셨습니다.')");
			out.println("location.href='"+request.getContextPath()+"/dbtestForm.st';");
			out.println("</script>");

		}
		
	}

}
