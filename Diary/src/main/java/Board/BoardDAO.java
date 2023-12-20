package Board;

import java.util.ArrayList;

import javax.servlet.ServletContext;

import common.JDBConnect;

public class BoardDAO extends JDBConnect {

	public BoardDAO(ServletContext application) {
		super(application);
	}
	
	public int insertBoard(String title, String content, String choice, String nickName) {
			int insert = 0;
			try {
				String query = "INSERT INTO board(content, title, nickName, open) VALUES(?, ?, ?, ?)";
				psmt = con.prepareStatement(query);
				psmt.setString(1, content);
				psmt.setString(2, title);
				psmt.setString(3, nickName);
				psmt.setString(4, choice);
				insert = psmt.executeUpdate();
			} catch (Exception e) {
				e.printStackTrace();
			}
			return insert;
	}
	
	public ArrayList<BoardDTO> SelectMyBoard(String nickName) {
		ArrayList<BoardDTO> list = new ArrayList<>();
		
		try {
			String query = "select * from board where nickname = ?";
			psmt = con.prepareStatement(query);
			psmt.setString(1, nickName);
			rs = psmt.executeQuery();
			while(rs.next()) {
				BoardDTO dto = new BoardDTO();
				dto.setTitle(rs.getString("title"));
				dto.setContent(rs.getString("Content"));
				dto.setOpen(rs.getString("Open"));
				dto.setNickName(rs.getString("nickName"));
				dto.setPostDate(rs.getDate("postdate"));
				dto.setViewNum(rs.getInt("viewNum"));
				list.add(dto);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}
	
	public ArrayList<BoardDTO> SelectAllBoard(String open) {
		ArrayList<BoardDTO> list = new ArrayList<>();
		
		try {
			String query = "select * from board where open = ?";
			psmt = con.prepareStatement(query);
			psmt.setString(1, open);
			rs = psmt.executeQuery();
			while(rs.next()) {
				BoardDTO dto = new BoardDTO();
				dto.setTitle(rs.getString("title"));
				dto.setContent(rs.getString("Content"));
				dto.setOpen(rs.getString("Open"));
				dto.setNickName(rs.getString("nickName"));
				dto.setPostDate(rs.getDate("postdate"));
				dto.setViewNum(rs.getInt("viewNum"));
				list.add(dto);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}
	
	public BoardDTO View(String title) {
		BoardDTO dto = new BoardDTO();
		try {
			String query = "select * from board where title = ?";
			psmt = con.prepareStatement(query);
			psmt.setString(1, title);
			rs = psmt.executeQuery();
			while(rs.next()) {
				dto.setTitle(rs.getString("title"));
				dto.setContent(rs.getString("Content"));
				dto.setOpen(rs.getString("Open"));
				dto.setNickName(rs.getString("nickName"));
				dto.setPostDate(rs.getDate("postdate"));
				dto.setViewNum(rs.getInt("viewNum"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return dto;
	}
	
	public int ViewNum(String title, String nickName) {
		int result = 0;
		try {
			String query = "update board set viewNum = viewNum+1 where title=? and nickName = ?";
			psmt = con.prepareStatement(query);
			psmt.setString(1, title);
			psmt.setString(2, nickName);
			result = psmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}
	
	public int UpdateBoard(String title, String nickName, String upTitle,String choice, String upContent) {
		int result = 0;
		try {
			String query = "update board set content = ?, title = ?, open=? where title=? and nickName = ?";
			psmt = con.prepareStatement(query);
			psmt.setString(1, upContent);
			psmt.setString(2, upTitle);
			psmt.setString(3, choice);
			psmt.setString(4, title);
			psmt.setString(5, nickName);
			result = psmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}
	
	public int DeleteBoard(String title, String nickName) {
		int result = 0;
		try {
			String query = "delete from board where title = ? and nickName = ?";
			psmt = con.prepareStatement(query);
			psmt.setString(1, title);
			psmt.setString(2, nickName);
			result = psmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}
}
