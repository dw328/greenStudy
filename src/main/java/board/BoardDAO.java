package board;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import conmon.GetConn;
import study2.dbtest.DbtestVO;

public class BoardDAO {
	private Connection conn = GetConn.getConn();
	private PreparedStatement pstmt = null;
	private ResultSet rs = null;

	String sql = "";

//	// conn객체 닫기
//	public void connClose() {
//		if (conn != null)
//			try {
//				conn.close();
//			} catch (SQLException e) {
//			}
//	}

	// pstmt객체 닫기
	public void pstmtClose() {
		if (pstmt != null)
			try {
				pstmt.close();
			} catch (SQLException e) {}

	}

	// rs객체 닫기 (pstmt가 닫혀야지 닫힘, select만 사용)
	public void rsClose() {
		if (rs != null)
			try {
				rs.close();
				pstmtClose();
			} catch (SQLException e) {}
	}

	// 게시판 전체 목록 
	public List<boardVO> getBoardList(int pageSize) {
		List<boardVO> vos = new ArrayList<boardVO>();
		try {
			sql ="select * from board order by idx desc limit ?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, pageSize);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				boardVO vo = new boardVO();
				vo.setIdx(rs.getInt("idx"));
				vo.setMid(rs.getString("mid"));
				vo.setNickName(rs.getString("nickName"));
				vo.setTitle(rs.getString("title"));
				vo.setContent(rs.getString("content"));
				vo.setHostIp(rs.getString("hostIp"));
				vo.setReadNum(rs.getInt("readNum"));
				vo.setOpenSw(rs.getString("openSw"));
				vo.setwDate(rs.getString("wDate"));
				vo.setGood(rs.getInt("good"));
				vo.setComplaint(rs.getString("complaint"));
				
				
				vo.setPageSize(pageSize);
				
				
				vos.add(vo);
			}
		} catch (SQLException e) {
			System.out.println("SQL오류(getBoardList): " + e.getMessage());
		} finally {
			rsClose();
		}
		return vos;
	}

	// 글 내용 보기
	public boardVO getBoardContent(int idx) {
		boardVO vo = new boardVO();
		try {
			sql ="select * from board where idx = ?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, idx);
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				vo.setIdx(rs.getInt("idx"));
				vo.setMid(rs.getString("mid"));
				vo.setNickName(rs.getString("nickName"));
				vo.setTitle(rs.getString("title"));
				vo.setContent(rs.getString("content"));
				vo.setHostIp(rs.getString("hostIp"));
				vo.setReadNum(rs.getInt("readNum"));
				vo.setOpenSw(rs.getString("openSw"));
				vo.setwDate(rs.getString("wDate"));
				vo.setGood(rs.getInt("good"));
				vo.setComplaint(rs.getString("complaint"));
				
			}
			
		} catch (SQLException e) {
			System.out.println("SQL오류(getBoardContent): " + e.getMessage());
		} finally {
			rsClose();
		}
		return vo;
	}

	//게시글 등독
	public int setBoardInputOk(boardVO vo) {
		int res = 0;
		try {
			sql ="insert into board values(default,?,?,?,?,?,?,default,default,default,default)";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, vo.getMid());
			pstmt.setString(2, vo.getNickName());
			pstmt.setString(3, vo.getTitle());
			pstmt.setString(4, vo.getContent());
			pstmt.setString(5, vo.getHostIp());
			pstmt.setString(6, vo.getOpenSw());
			res = pstmt.executeUpdate();
		} catch (SQLException e) {
			System.out.println("SQL오류(setBoardInputOk): " + e.getMessage());
		} finally {
			pstmtClose();
		}
		return res;
	}
	
	
	// 글 조회수 증가처리(만약에 가능하다면 ip 같은 사람이 들어온다면 중복배제를 하는 것)
	public void setReadNumUpdate(int idx) {
		try {
			sql = "update board set readNum = readNum + 1 where idx =?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, idx);
			pstmt.executeUpdate();
			
		} catch (SQLException e) {
			System.out.println("SQL오류(setReadNumUpdate): " + e.getMessage());
		} finally {
			pstmtClose();
		}
		
	}

	//계시글 삭제
	public int BoardDelete(int idx) {
		int res = 0;
		try {
			sql = "delete from board where idx = ?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, idx);
			res = pstmt.executeUpdate();
		} catch (SQLException e) {
			System.out.println("SQL오류(BoardDelete): " + e.getMessage());
		} finally {
			pstmtClose();
		}
		return res;
	}

	//게시글 수정
	public int setBoardUpdateOk(boardVO vo) {
		int res = 0;
		try {
			sql ="update board set tittle =?, content=?, hostIp=?, openSw=? where idx =?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, vo.getTitle());
			pstmt.setString(2, vo.getContent());
			pstmt.setString(3, vo.getHostIp());
			pstmt.setString(4, vo.getOpenSw());
			pstmt.setInt(5, vo.getIdx());
			res = pstmt.executeUpdate();
		} catch (SQLException e) {
			System.out.println("SQL오류(setBoardUpdateOk): " + e.getMessage());
		} finally {
			pstmtClose();
		}
		
		return res;
	}

	
}
