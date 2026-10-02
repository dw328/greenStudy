package member;

import java.io.IOException;

import conmon.SecurityUtil;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class MemberJoinOkCommand implements MemberInterface {

	@Override
	public void excute(HttpServletRequest request, HttpServletResponse reponse) throws ServletException, IOException {
		String mid = request.getParameter("mid") == null ? "" : request.getParameter("mid");
		String pwd = request.getParameter("pwd") == null ? "" : request.getParameter("pwd");
		String nickName = request.getParameter("nickName") == null ? "" : request.getParameter("nickName");
		String name = request.getParameter("name") == null ? "" : request.getParameter("name");
		String gender = request.getParameter("gender") == null ? "" : request.getParameter("gender");
		String birthday = request.getParameter("birthday") == null ? "" : request.getParameter("birthday");
		String tel = request.getParameter("tel") == null ? "" : request.getParameter("tel");
		String address = request.getParameter("address") == null ? "" : request.getParameter("address");
		String email = request.getParameter("email") == null ? "" : request.getParameter("email");
		String homePage = request.getParameter("homePage") == null ? "" : request.getParameter("homePage");
		String job = request.getParameter("job") == null ? "" : request.getParameter("job");
		String content = request.getParameter("content") == null ? "" : request.getParameter("content");

		//비밀번호 암호화(sha256)
		SecurityUtil securityUtil = new SecurityUtil();
		int salt = (int)(Math.random()*(9999-1000+1)) + 1000;
		pwd = securityUtil.encryptSHA256(salt + pwd);
		pwd = salt + pwd;		// 나중에 암호화 된걸 찾으려고 salt 값을 붙인다.
		
		
		String[] hobbys = request.getParameterValues("hobby"); // 여러개 받을 경우
		String hobby = "";

		System.out.println("hobby: " + hobbys.toString());

		if (hobbys.length != 0) {
			for (String h : hobbys) {
				hobby += h + "/";
			}
		}

		hobby = hobby.substring(0, hobby.lastIndexOf("/"));

		String photo = (request.getParameter("photo") == null || request.getParameter("photo").equals("")) ? "noimage.jsp" : request.getParameter("photo");

		MemberVo vo = new MemberVo();

		vo.setMid(mid);
		vo.setPwd(pwd);
		vo.setNickName(nickName);
		vo.setName(name);
		vo.setGender(gender);
		vo.setBirthday(birthday);
		vo.setTel(tel);
		vo.setAddress(address);
		vo.setEmail(email);
		vo.setHomePage(homePage);
		vo.setJob(job);
		vo.setContent(content);
		vo.setPhoto(photo);
		vo.setHobby(hobby);

		MemberDAO dao = new MemberDAO();

		int res = dao.setMemberJoinOk(vo);

		if(res != 0) {
			request.setAttribute("message", "회원 가입되셨습니다.");
			request.setAttribute("url", "memberLogin.mem");
		} else {
			request.setAttribute("message", "회원 실패.");
			request.setAttribute("url", "memberJoin.mem");
		}
	}

}
