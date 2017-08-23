package com.acorn.shoopse.users.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.acorn.shoopse.users.dto.UsersDto;

@Repository
public class UsersDaoImpl implements UsersDao{

	@Autowired
	private SqlSession session;
	
	@Override
	public void usersSignup(UsersDto dto) {
		session.insert("users.insertBefore",dto);
		session.insert("users.insert",dto);
	}

	@Override
	public String findId(UsersDto dto) {
		String id=session.selectOne("users.findId", dto);
		return id;
	}

	@Override
	public String findPwd(UsersDto dto) {
		String pwd=session.selectOne("users.findPwd", dto);
		return pwd;
	}

	@Override
	public String isOverlab(String id) {
		String resultId=session.selectOne("users.overLab",id);
		return resultId;
	}

	@Override
	public boolean isValid(UsersDto dto) {
		UsersDto resultDto=session.selectOne("users.isValid",dto);
		if(resultDto==null){
			System.out.println("daoimple isvalid 넘어옴");
			return false;
		}else{
			System.out.println("daoimple isvalid else 넘어옴");
			return true;
		}
	}

	@Override
	public UsersDto getData(String id) {
		UsersDto dto=session.selectOne("users.getData",id);
		return dto;
	}

	@Override
	public void delete(int num) {
		session.delete("users.delete",num);
		
	}

	@Override
	public void update(UsersDto dto) {
		session.update("users.update",dto);
		
	}
}
