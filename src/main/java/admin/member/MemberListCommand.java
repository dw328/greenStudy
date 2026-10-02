package admin.member;

import java.io.IOException;
import java.util.List;

import admin.AdminInterface;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import member.MemberDAO;
import member.MemberVo;

public class MemberListCommand implements AdminInterface {

	@Override
	public void excute(HttpServletRequest request, HttpServletResponse reponse) throws ServletException, IOException {
		MemberDAO dao = new MemberDAO();

		List<MemberVo> vos = dao.getMemberList();

		request.setAttribute("vos", vos);

	}

}
