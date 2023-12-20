package Member;

import javax.servlet.ServletContext;

import common.JDBConnect;

public class MemberDAO extends JDBConnect {

	public MemberDAO(ServletContext application) {
		super(application);
	}

	// User 회원가입(JoinProcess)
	public String insertUser(String userId, String pass, String nickName) {
		String NickName = null;
		try {
			String query = "INSERT INTO Member VALUES(?, ?, ?)";
			psmt = con.prepareStatement(query);
			psmt.setString(1, userId);
			psmt.setString(2, pass);
			psmt.setString(3, nickName);
			rs = psmt.executeQuery();
			if (rs.next()) {
				NickName = userId;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return NickName;
	}

	// User 로그인(LoginProcess)
	public String loginUser(String userID, String pass) {
		String NickName = null;
		try {
			String query = "SELECT * FROM Member WHERE userId = ? AND pass = ?";
			psmt = con.prepareStatement(query);
			psmt.setString(1, userID);
			psmt.setString(2, pass);
			rs = psmt.executeQuery();
			if(rs.next()) {
				NickName = rs.getString("NickName");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return NickName;
	}
	
	public String UpdateNick(String upNick, String basicNick) {
		String NickName = null;
		try {
			String query = "UPDATE member SET nickName = ? WHERE nickName = ?";
			psmt = con.prepareStatement(query);
			psmt.setString(1, upNick);
			psmt.setString(2, basicNick);
			rs = psmt.executeQuery();
			if(rs.next()) {
				NickName = upNick;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return NickName;
	}
	
}
