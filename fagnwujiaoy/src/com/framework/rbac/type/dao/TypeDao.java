package com.framework.rbac.type.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import com.framework.rbac.type.model.Type;

public interface TypeDao {

	public List<Type> Query(Map<String,Object> map);
	
	public List<Type> QueryAll();
	
	public Integer queryCount();
	
	public Type queryOne(@Param("id")Integer id);
	
	public void typeAdd(@Param("typeName")String typeName,@Param("messageId")Integer messageId,@Param("name")String name);
	
	public void informationUpdate(@Param("id")Integer id,@Param("typeName")String typeName,@Param("messageId")Integer messageId,@Param("name")String name);
	
	public void informationDelete(@Param("id")Integer id);
	
}
