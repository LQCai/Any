package ticketing.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class JdbcUtil {
	
	private static final String driver="com.mysql.jdbc.Driver";
	private static final String url="jdbc:mysql://localhost/ticketing";
	private static final String user="root";
	private static final String password="123456";
	
	
	/**
	 * ������������ȡ����
	 * @return
	 */
	public static Connection getcon(){
		Connection con = null;
		try {
			Class.forName(driver);
			con = DriverManager.getConnection(url,user,password);
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return con;
		
	}
	/**
	 * ͨ�ò�ѯ
	 * @param sql
	 * @param anyone
	 * @return
	 */
	public static ResultSet doQuery(String sql,Object...anyone){
		Connection con=JdbcUtil.getcon();
		ResultSet rs = null;
		try {
			PreparedStatement p=con.prepareStatement(sql);
			if(anyone!=null){
				for(int i=0;i<anyone.length;i++){
					p.setObject(i+1, anyone[i]);
				}
			}
			rs = p.executeQuery();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return rs;
		
	}
	
	/**
	 * ͨ�ø���
	 */
	public static void update(String sql,Object...anyone){
		Connection con=JdbcUtil.getcon();
		try {
			PreparedStatement pstmt= con.prepareStatement(sql);
			for(int i=0;i<anyone.length;i++){
				pstmt.setObject(i+1, anyone[i]);
			}		
			pstmt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	/**
	 * ͨ�ùر�
	 */
	public static void close(ResultSet rs,PreparedStatement pstmt,Connection con){
		try {
			if(rs!=null){
				rs.close();
			}
			if(pstmt!=null){
				pstmt.close();
			}
			if(con!=null){
				con.close();
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	
}
