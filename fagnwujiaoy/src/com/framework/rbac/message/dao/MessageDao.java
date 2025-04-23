package com.framework.rbac.message.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import com.framework.rbac.message.model.Message;

public interface MessageDao {

public List<Message> Query(Map<String,Object> map);
	
	public Integer queryCount(@Param("message")Message message);
	
	public Message queryOne(@Param("id")Integer id);
	
	public void messageAdd(@Param("goodId")String goodId,@Param("userMessage")String userMessage);
	
	public void informationUpdate(@Param("id")Integer id,@Param("goodId")String goodId,@Param("userMessage")String userMessage);
	
	public void informationDelete(@Param("id")Integer id);
	
}
