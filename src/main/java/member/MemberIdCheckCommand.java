package member;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class MemberIdCheckCommand implements MemberInterface {

	@Override
	public void excute(HttpServletRequest request, HttpServletResponse reponse) throws ServletException, IOException {
		String mid = request.getParameter("mid") == null ? "" : request.getParameter("mid");
		
		MemberDAO dao = new MemberDAO();
		
		
		MemberVo vo = dao.getMemberIdCheck(mid);
		
		String res = "" ;
		if(vo.getMid() != null) { res = "1"; 
		} else res = "0";
		
		reponse.getWriter().write(res);

	}

}
