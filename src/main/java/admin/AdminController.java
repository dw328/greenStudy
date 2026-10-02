package admin;

import java.io.IOException;

import admin.member.MemberContentCommand;
import admin.member.MemberLevelChangeCommand;
import admin.member.MemberListCommand;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@SuppressWarnings("serial")
@WebServlet("*.ad")
public class AdminController extends HttpServlet {

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		AdminInterface command = null;
		// 선행
		String view = "/WEB-INF/admin/";

		String com = request.getRequestURI();
		com = com.substring(com.lastIndexOf("/") + 1, com.lastIndexOf("."));

		if (com.equals("adminMain")) {
			view += "adminMain";
		} else if (com.equals("adminLeft")) {
			view += "adminLeft";
		} else if (com.equals("adminRight")) {
			view += "adminRight";

		} else if (com.equals("memberList")) {
			command = new MemberListCommand();
			command.excute(request, response);
			view += "member/memberList";
			
		} else if (com.equals("memberContent")) {
			command = new MemberContentCommand();
			command.excute(request, response);
			view += "member/memberContent";
			
		} else if (com.equals("memberLevelChange")) {
			command = new MemberLevelChangeCommand();
			command.excute(request, response);
			return;
				
		
//		} else if (com.equals("")) {
//			command = new MemderLoginOkCommand();
//			command.excute(request, response);
//			view = "/include/message";

//		} else if (com.equals("")) {
//			view += "memberJoin";
//
//		

//		} else if (com.equals("memberLogout")) {
//			command = new MemberLogoutCommand();
//			command.excute(request, response);
//			view = "/include/message";
		}

		view += ".jsp";
		request.getRequestDispatcher(view).forward(request, response);

	}
}
