package member;

import java.io.IOException;
import java.util.List;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class MemberListCommand implements MemberInterface {

	@Override
	public void excute(HttpServletRequest request, HttpServletResponse reponse) throws ServletException, IOException {
		MemberDAO dao = new MemberDAO();
		
		List<MemberVo> vos = dao.getMemberList();

		request.setAttribute("vos", vos);
	}

}
