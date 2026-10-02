package member;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class MemberContentCommand implements MemberInterface {

	@Override
	public void excute(HttpServletRequest request, HttpServletResponse reponse) throws ServletException, IOException {
		String mid = request.getParameter("mid") == null ? "" : request.getParameter("mid");

		MemberDAO dao = new MemberDAO();

		MemberVo vo = dao.getMemberIdCheck(mid);
		
		request.setAttribute("vo", vo);

	}

}
