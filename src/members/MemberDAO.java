package members;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class MemberDAO {
	private String url = "jdbc:oracle:thin:@192.168.0.42:1521:xe";
	private String user = "jsp", pwd = "1234";
	private Connection con;
	private PreparedStatement ps;
	private ResultSet rs;

	public MemberDAO() {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
	}
	
	public int chkuser(String id, String pwd) {
		String id2 = null;
		String pwd2 = null;
		String sql = "select * from company where id = ?";
		int i = 2;
		try {
			con = DriverManager.getConnection(url, user, pwd);
			ps = con.prepareStatement(sql);
			ps.setString(1, id);
			rs = ps.executeQuery();
			if(rs.next()) {
				id2 = rs.getString("id");
				pwd2 = rs.getString("pwd");
				if(id.equals(id2)) {
					if(pwd.equals(pwd2)) {
						i =  0;
					}else {
						i =  1;
					}
				}else {
					i = 2;
				}
			}	
		}catch(SQLException e) {
			e.printStackTrace();
		}return i;
	}
	
	public int memberChk(String id, String pwd, String name, String department, String position) {
		int i = 0;
		String sql = "select * from company where id=?";
		String id2 = null;
		try {
			con = DriverManager.getConnection(url, user, pwd);
			ps = con.prepareStatement(sql);
			ps.setString(1, id);
			rs = ps.executeQuery();
			if(rs.next()) {
				id2 = rs.getString("id");
				System.out.println(id2);
			}
			if(id2==null) {
				String sql2 = "insert into company values(?,?,?,?,?)";
				con = DriverManager.getConnection(url, user, pwd);
				ps = con.prepareStatement(sql2);
				ps.setString(1, id);
				ps.setString(2,  pwd);
				ps.setString(3,  name);
				ps.setString(4,  department);
				ps.setString(5,  position);
				ps.executeQuery();
				i = 1;
				return i;
			}else {
				return i;
			}
			
		}catch(SQLException e) {
			i = -1;
			return i;
		}
	}
	public ArrayList<MemberDTO> memberView() {
		String sql = "select * from company";
		ArrayList<MemberDTO> members = new ArrayList<MemberDTO>();
		try {
			con = DriverManager.getConnection(url, user, pwd);
			ps = con.prepareStatement(sql);
			rs = ps.executeQuery();
			while (rs.next()) {
				MemberDTO m = new MemberDTO();
				m.setId(rs.getString("id"));
				m.setPwd(rs.getString("pwd"));
				m.setName(rs.getString("name"));
				m.setDepartment(rs.getString("department"));
				m.setPosition(rs.getString("position"));
				members.add(m);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return members;
	}
	
	public MemberDTO userInfo(String id) {
		String sql = "select * from company where id = ?";
		MemberDTO member = null;
		try {
			con = DriverManager.getConnection(url, user, pwd);
			ps = con.prepareStatement(sql);
			ps.setString(1, id);
			rs = ps.executeQuery();
			if (rs.next()) {
				member = new MemberDTO();
				member.setId(rs.getString("id"));
				member.setPwd(rs.getString("pwd"));
				member.setName(rs.getString("name"));
				member.setDepartment(rs.getString("department"));
				member.setPosition(rs.getString("position"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return member;

	}
}
