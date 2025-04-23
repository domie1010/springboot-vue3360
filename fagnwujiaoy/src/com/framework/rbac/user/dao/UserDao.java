package com.framework.rbac.user.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import com.framework.rbac.user.model.User;
public interface UserDao {
	
	public User login(@Param("account")String account,@Param("password")String password,@Param("type")String type);
	
	public User loginVip(@Param("account")String account,@Param("password")String password,@Param("type")String type,@Param("safe")String safe);
	
	public User queryOne(@Param("id")Integer id);
	
	public List<User> Query(Map<String,Object> map);
	
	public Integer queryCount();
	
	public void userAdd(@Param("account")String account,@Param("tel")String tel,@Param("address")String address,@Param("password")String password,@Param("type")String type,@Param("email")String email,@Param("safe")String safe);
	
	public void informationUpdate(@Param("id")Integer id,@Param("account")String account,@Param("tel")String tel,@Param("address")String address,@Param("password")String password,@Param("type")String type,@Param("email")String email,@Param("safe")String safe);
	
	public void informationDelete(@Param("id")Integer id);

}
