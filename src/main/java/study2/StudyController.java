package study2;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import study2.ajax.StudyAjaxIdCheck1Command;
import study2.ajax.StudyAjaxIdCheck2Command;
import study2.ajax.StudyAjaxIdCheck3Command;
import study2.dbtest.StudyDbtestInputOkCommand;
import study2.dbtest.StudyDbtestListOkCommand;
import study2.dbtest.StudyDbtestSearchOkCommand;
import study2.dbtest.StudyDbtestUpdateOkCommand;
import study2.dbtest.StudyDbtestUpdateOk_Command;
import study2.dbtest.StudydbtestDeleteCommand;
import study2.password.StudyPasswordOkCommand;

@SuppressWarnings("serial")
@WebServlet("*.st")
public class StudyController extends HttpServlet{
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//지시 -> interface에서 한다
		StudyInterface command = null;
		//선행
		String view ="/WEB-INF/study2/";
		
		String com = request.getRequestURI();
		com = com.substring(com.lastIndexOf("/")+1, com.lastIndexOf("."));
		
		
		if(com.equals("ajax")) {
			view += "ajax/ajaxForm";
			
		} else if(com.equals("ajaxIdCheck1")) {
			command = new StudyAjaxIdCheck1Command();
			command.excute(request, response);
			view += "ajax/ajaxForm";
			
		} else if(com.equals("ajaxIdCheck2")) {
			command = new StudyAjaxIdCheck2Command();
			command.excute(request, response);
			return;
			
		} else if(com.equals("ajaxIdCheck3")) {
			command = new StudyAjaxIdCheck3Command();
			command.excute(request, response);
			return;
			
		} else if (com.equals("password")) {
			view += "password/passwordForm";		
			
		} else if (com.equals("passwordOk")) {
			// 추상 인터페이스가 관리하도록 객체 메소드(command(변수))를 넣는 형식이다. ppt.5쪽 참고
			// 추상 메소드인 excute 사용함.(알다시피 추상 메소드는 거기에 있는 모든 메소드를 선언은 해야한다.)
			// 변수인 command 없애도 실핼이 된다. 하지만 통일성 때문에 넣음...
			// 구현 객체 생성(구현 객체는 class + 메소드 이름 + command 객체)
			command = new StudyPasswordOkCommand();
			command.excute(request, response);
			view += "password/passwordForm";
			
		} else if (com.equals("dbtestForm")) {
			view += "dbtest/dbtestForm";			
			
		} else if (com.equals("dbtestInput")) {
			view += "dbtest/dbtestInput";			
			
		} else if (com.equals("dbtestInputOk")) {
			//서비스 객체
			command = new StudyDbtestInputOkCommand();
			command.excute(request, response);
			return;
			
		} else if (com.equals("dbtestSearch")) {
			command = new StudyDbtestSearchOkCommand();
			command.excute(request, response);
			view += "dbtest/dbtestSearch";
			
		} else if (com.equals("dbtestList")) {
			command = new StudyDbtestListOkCommand();
			command.excute(request, response);
			view += "dbtest/dbtestList";
			
		} else if (com.equals("dbtestUpdate")) {
			//수정폼 보기
			command = new StudyDbtestUpdateOkCommand();
			command.excute(request, response);
			view += "dbtest/dbtestUpdate";
			
		} else if (com.equals("dbtestUpdateOk")) {
			command = new StudyDbtestUpdateOk_Command();
			command.excute(request, response);
			return;
			
		} else if (com.equals("dbtestDelete")) {
			command = new StudydbtestDeleteCommand();
			command.excute(request, response);
			return;
			
		}
		//후행
		view += ".jsp";
		request.getRequestDispatcher(view).forward(request, response);
		
	}
}
