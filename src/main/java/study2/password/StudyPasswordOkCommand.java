package study2.password;

import java.io.IOException;

import conmon.SecurityUtil;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import study2.StudyInterface;

public class StudyPasswordOkCommand implements StudyInterface {

	@Override
	public void excute(HttpServletRequest request, HttpServletResponse reponse) throws ServletException, IOException {
		String pwd = request.getParameter("pwd") == null? "": request.getParameter("pwd");
		
		System.out.println("원본pwd: " + pwd);
		
		//SHA 이용해서 암호화 
		SecurityUtil security = new SecurityUtil();
		 pwd = security.encryptSHA256(pwd);
		
		
		System.out.println("암호화pwd: " + pwd);

	}

}
