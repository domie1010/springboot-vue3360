package com.framework.rbac.message.service.inte;

import com.framework.base.pager.Pager;
import com.framework.rbac.message.model.Message;

public interface MessageService {

public Pager Query(Pager pager,Message message);
	
	public Integer queryCount(Message message);
	
	public void messageAdd(String goodId,String userMessage);
	
	public void informationUpdate(Integer id,String goodId,String userMessage);
	
	public void informationDelete(Integer id);
	
	public Message queryOne(Integer id);
	
}
