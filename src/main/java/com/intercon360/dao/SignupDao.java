package com.intercon360.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.intercon360.entities.Signup;

public class SignupDao {
	private Connection connection;

	public SignupDao(Connection connection) {
		super();
		this.connection = connection;
	}

	
	public boolean saveUser(Signup user)
	{
		boolean f=false;
		try {
			String query="insert into user(first_name,surname,email,dob,password,cpassword,gender) values(?,?,?,?,?,?,?)";
			PreparedStatement s = this.connection.prepareStatement(query);
			s.setString(1, user.getFirst_name());
			s.setString(2, user.getSurname());
			s.setString(3, user.getEmail());
			s.setString(4, user.getDob());
			s.setString(5, user.getPassword());
			s.setString(6, user.getCpassword());
			s.setString(7, user.getGender());
			s.executeUpdate();
			f=true;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return f;
	}
	
	public Signup getUserByEmailPassword(String email, String password) {
		Signup user=null;
		
		try {
			String query="select * from user where email=? and password=?";
			PreparedStatement s = connection.prepareStatement(query);
			
			s.setString(1, email);
			s.setString(2, password);
			
			ResultSet set = s.executeQuery();
			
			if(set.next()) {
				user=new Signup();
//				String name = set.getString("first_name");
//				user.setFirst_name(name);
				user.setFirst_name(set.getString("first_name"));
				user.setSurname(set.getString("surname"));
				user.setEmail(set.getString("email"));
				user.setPassword(set.getString("password"));
				user.setCpassword(set.getString("cpassword"));
				user.setGender(set.getString("gender"));
				user.setDob(set.getString("dob"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return user;
	}
	
	
}
