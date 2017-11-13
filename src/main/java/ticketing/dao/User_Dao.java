package ticketing.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import ticketing.model.User;
import ticketing.util.JdbcUtil;

public class User_Dao {
	public static void register(String sql,String id_p,String password,String tel){
		JdbcUtil.update(sql, id_p,password,tel);
	}


	//登录验证
	public static User login(String id_p,String password){
		String sql="select * from user_info where id_p=? and password=?";
		User user= null;
		ResultSet rs=JdbcUtil.doQuery(sql, id_p,password);
		try {
			while(rs.next()){
				user=new User(rs.getString("id_p"),rs.getString("password"));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return user;

	}


	//根据id_p查用户信息
	public static User find_id_p(String id_p){
		User user=null;
		String sql="select * from user_info where id_p=?";
		ResultSet rs=JdbcUtil.doQuery(sql, id_p);
		try {
			while(rs.next()){
				user=new User(rs.getInt("id"),rs.getString("id_p"),rs.getString("password"),
						rs.getString("id_card"),rs.getFloat("money"),rs.getString("e_mail"),rs.getString("tel"));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return user;

	}

	//修改信息
	public static void Update_info(String id_p,String id_card,String e_mail,String tel,int id){
		String sql="update user_info set id_p=?,id_card=?,e_mail=?,tel=? where id=?";
		JdbcUtil.update(sql, id_p,id_card,e_mail,tel,id);
	}




}
