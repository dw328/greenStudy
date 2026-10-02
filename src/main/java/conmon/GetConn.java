package conmon;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class GetConn {
	//private 이라 get으로 읽어야한다.
	private static Connection conn = null;
	
	String driver ="com.mysql.jdbc.Driver";
	String url ="jdbc:mysql://localhost:3306/greenstudy";
	String user ="root";
	String password ="1234";

	@SuppressWarnings("unused")
	//GetConn에서 생성
	private static GetConn instance = new GetConn();
	
	private GetConn() {
		
		try {
			Class.forName(driver);
			conn = DriverManager.getConnection(url, user, password);
		} catch (ClassNotFoundException e) {
			System.out.println("찾으시는 드라이버가 없습니다." + e.getMessage());
		} catch (SQLException e) {
			System.out.println("데이터베이스 연동 실패" + e.getMessage());
		}
	}
	
	//class.getConn() 으로 사용
	public static Connection getConn() {
		return conn;
	}

}
