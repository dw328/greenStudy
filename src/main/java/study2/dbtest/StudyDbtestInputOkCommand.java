package study2.dbtest;

import java.io.IOException;
import java.io.PrintWriter;

import conmon.SecurityUtil;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import study2.StudyDAO;
import study2.StudyInterface;

public class StudyDbtestInputOkCommand implements StudyInterface {
	@Override
	public void excute(HttpServletRequest request, HttpServletResponse reponse) throws ServletException, IOException {
		reponse.setContentType("text/html; charset=utf-8");
		String mid =request.getParameter("mid") ==null ? "" : request.getParameter("mid");
		String pwd =request.getParameter("pwd") ==null ? "" : request.getParameter("pwd");
		String name =request.getParameter("name") ==null ? "" : request.getParameter("name");
		String gender =request.getParameter("gender");
		int age =request.getParameter("age") ==null ? 20 :  Integer.parseInt(request.getParameter("age"));
		
		//비밀번호 암호화
		SecurityUtil security = new SecurityUtil();
		
		int salt = (int)(Math.random()*(9999-1000+1)) + 1000;		
		pwd =  salt + security.encryptSHA256(pwd + salt);
		System.out.println("salt:" + salt);
		
		
		
		DbtestVO vo = new DbtestVO();
		
		vo.setMid(mid);
		vo.setPwd(pwd);
		vo.setName(name);
		vo.setGender(gender);
		vo.setAge(age);
		
		StudyDAO dao = new StudyDAO();
		PrintWriter out = reponse.getWriter();
		
		// 회원 아이디 중복 처리
		DbtestVO vo2 = dao.getIdSearch(mid);
		if(vo2.getMid() != null) {
			out.println("<script>");
			out.println("alert('아이디가 사용중입니다. 다른 아이디를 입력하십시오.');");
			out.println("location.href='"+request.getContextPath()+"/dbtestInput.st';");
			out.println("</script>");
			// 내가 부른 곳으로 다시 돌아간다.
			// ppt5 그림을 보면 컨트롤러로 돌아간다.(여기는 지금 command)
			return;
		} 
		
		
		// 회원가입 처리
		// 만약에 값을 넣었으면 1로 반환 하지만 (공백도 1로 나옴), 에러는 0
		// 값이 넣었는지 확인하려면 출력하면 된다. 결국은 return 값을 받는게 좋다. 확인 차
		int res = dao.setDbtestInput(vo);
		
		if(res != 0) {
			out.println("<script>");
			out.println("alert('회원 가입 되셨습니다.')");
			out.println("location.href='"+request.getContextPath()+"/dbtestForm.st';");
			out.println("</script>");
		} else {
			out.println("<script>");
			out.println("alert('회원 실패 하셨습니다.')");
			out.println("location.href='"+request.getContextPath()+"/dbtestForm.st';");
			out.println("</script>");

		}
	}

}
