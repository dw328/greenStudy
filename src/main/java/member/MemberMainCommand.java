package member;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

public class MemberMainCommand implements MemberInterface {

	@Override
	public void excute(HttpServletRequest request, HttpServletResponse reponse) throws ServletException, IOException {
		HttpSession session = request.getSession();
		
		String mid = (String) session.getAttribute("sMid");
		
		MemberDAO dao = new MemberDAO();
		
		MemberVo vo = dao.getMemberIdCheck(mid);
		
		String strLevel = "";
		if(vo.getLevel() == 0) strLevel = "관리자";
		else if(vo.getLevel() == 1) strLevel = "준회원";
		else if(vo.getLevel() == 2) strLevel = "정회원";
		else if(vo.getLevel() == 3) strLevel = "우수회원";
		else if(vo.getLevel() == 4) strLevel = "운영자";
		
		request.setAttribute("name", vo.getName());
		request.setAttribute("lastDate", vo.getLastDate());
		request.setAttribute("strLevel", strLevel);
		
	}

}
