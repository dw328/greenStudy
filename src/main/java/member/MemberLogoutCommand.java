package member;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

public class MemberLogoutCommand implements MemberInterface {

	@Override
	public void excute(HttpServletRequest request, HttpServletResponse reponse) throws ServletException, IOException {
		HttpSession session = request.getSession();
		
		String mid = (String) session.getAttribute("sMid");
		
		session.invalidate();
		
		// 이거 안 보임 (수정 필요)
		request.setAttribute("message", mid + "님 로그아웃 되었습니다.");
		request.setAttribute("url", "memberLogin.mem");

	}

}
