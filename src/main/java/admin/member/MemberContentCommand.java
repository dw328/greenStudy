package admin.member;

import java.io.IOException;

import admin.AdminInterface;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import member.MemberDAO;
import member.MemberVo;

public class MemberContentCommand implements AdminInterface {

	@Override
	public void excute(HttpServletRequest request, HttpServletResponse reponse) throws ServletException, IOException {
		String mid = request.getParameter("mid") == null ? "" : request.getParameter("mid");

		MemberDAO dao = new MemberDAO();

		MemberVo vo = dao.getMemberIdCheck(mid);
		
		request.setAttribute("vo", vo);


	}

}
