package ch12.member;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import db.DBConnection;

public class LogonDBBean {
	private static LogonDBBean instance = new LogonDBBean();
	
	public static LogonDBBean getInstane() {
		return instance;
	}
	
	private LogonDBBean() {
		
	}
	// 데이터베이스와 연결된 Connection객체의 참조값을 반환
	private Connection getConnection() {
		return DBConnection.getCon();
	}
	
	// 회원가입을 신청하면 member 테이블에 저장(insert)
	public void insertMember(LogonDataBean member) {
		Connection con = null;
		PreparedStatement pstmt = null;
		
		con = getConnection();
		String sql = "insert into member values(?,?,?,?,?,?,?)";
		try {
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, member.getId());
			pstmt.setString(2, member.getPasswd());
			pstmt.setString(3, member.getName());
			pstmt.setTimestamp(4, member.getRegDate());
			pstmt.setString(5, member.getAddress());
			pstmt.setString(6, member.getEmail1()+"@"+member.getEmail2());
			pstmt.setString(7, member.getTel1()+"-"+member.getTel2()+"-"+member.getTel3());
			pstmt.executeUpdate();
			
			pstmt.close();
			con.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	// 로그인 가능한 정보를 가지고 있는지 Check
	// result 값에 따라 result=0(비번틀림), 1(로그인성공), -1(아이디가 존재하지 않음)
	public int userCheck(String id, String passwd) {
		int result = -1;
		
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String dbPasswd = null;
		con = DBConnection.getCon();
		
		String sql = "select passwd from member where id=?";
		try {
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				dbPasswd = rs.getString("passwd");
				if(dbPasswd.equals(passwd)) {
					result = 1; //성공
				}else {
					result = 0; //비밀번호 틀림
				}
			}else {
				result = -1; //아이디 존재하지 않음
			}
			
			pstmt.close();
			rs.close();
			con.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		
		return result;
	}
}
