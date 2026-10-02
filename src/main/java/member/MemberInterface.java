package member;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public interface MemberInterface {
	public void excute(HttpServletRequest request, HttpServletResponse reponse) throws ServletException, IOException;
}
