package study2.dbtest;

import java.io.IOException;
import java.util.List;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import study2.StudyDAO;
import study2.StudyInterface;

public class StudyDbtestListOkCommand implements StudyInterface {

	@Override
	public void excute(HttpServletRequest request, HttpServletResponse reponse) throws ServletException, IOException {
		StudyDAO dao = new StudyDAO();
		
		//vo는 하나(성명,나이,,,)의 list, vos 전체(admin,홍길동,,)+(성명,나이)의 list 라고 생각하자...
		List<DbtestVO> vos	= dao.getList();
		
		request.setAttribute("vos", vos);

	}

}
