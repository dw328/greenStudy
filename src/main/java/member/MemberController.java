package member;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@SuppressWarnings("serial")
@WebServlet("*.mem")
public class MemberController extends HttpServlet {

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		MemberInterface command = null;
		// 선행
		String view = "/WEB-INF/member/";

		String com = request.getRequestURI();
		com = com.substring(com.lastIndexOf("/") + 1, com.lastIndexOf("."));

		HttpSession session = request.getSession();
		int level = session.getAttribute("sLevel") == null ? 999 : (int) session.getAttribute("sLevel");

		if (com.equals("memberLogin")) {
			view += "memberLogin";
		}

		else if (com.equals("memderLoginOk")) {
			command = new MemderLoginOkCommand();
			command.excute(request, response);
			view = "/include/message";

		} else if (level > 4) {
			request.setAttribute("message", "로그인 후 이용해주세요.");
			request.setAttribute("url", "memberLogin.mem");
			view = "/include/message";

		} else if (com.equals("memberJoinOk")) {
			command = new MemberJoinOkCommand();
			command.excute(request, response);
			view = "/include/message"; // 경로가 다르다면 누적을 지우고 대입힌다.

		} else if (com.equals("memberIdCheck")) {
			command = new MemberIdCheckCommand();
			command.excute(request, response);
			return; // ajax 는 view 넘어가면 안된다. 그 이유는 화면이 새로고침을 하게 되면서 전에 작성한 글이 사라짐

		} else if (com.equals("memberMain")) {
			command = new MemberMainCommand();
			command.excute(request, response);
			view += "memberMain";

		} else if (com.equals("memberLogout")) {
			command = new MemberLogoutCommand();
			command.excute(request, response);
			view = "/include/message";

		} else if (com.equals("memberJoin")) {
			view += "memberJoin";

		} else if (com.equals("memberList")) {
			command = new MemberListCommand();
			command.excute(request, response);
			view += "memberList";

		} else if (com.equals("memberContent")) {
			command = new MemberContentCommand();
			command.excute(request, response);
			view += "memberContent";
		}

		view += ".jsp";
		request.getRequestDispatcher(view).forward(request, response);

	}
}
