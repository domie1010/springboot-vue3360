package com.framework.rbac.message.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.framework.base.pager.Pager;
import com.framework.rbac.message.dao.MessageDao;
import com.framework.rbac.message.model.Message;
import com.framework.rbac.message.service.inte.MessageService;
@Service
public class MessageServiceImpl implements MessageService {

	@Autowired
	private MessageDao messageDao;
	@Override
	public Pager Query(Pager pager, Message message) {
		Map<String,Object> map = new HashMap<>();
		map.put("pager", pager);
		map.put("message", message);
		List<Message> list = this.messageDao.Query(map);
		if(list==null||list.isEmpty()){
			throw new RuntimeException("暂时没有广告");
		}
		pager.setDatas(list);
		pager.setTotalCount(queryCount(message));
		return pager;
	}

	@Override
	public Integer queryCount(Message message) {
		Integer count = this.messageDao.queryCount(message);
		return count;
	}

	@Override
	public void messageAdd(String goodId, String userMessage) {
		try{
			this.messageDao.messageAdd(goodId,userMessage);
		}catch (Exception e) {
			throw new RuntimeException("添加失败,原因为:"+e.getMessage());
		}
		
	}

	@Override
	public void informationUpdate(Integer id, String goodId, String userMessage) {
		try{
			this.messageDao.informationUpdate(id, goodId,userMessage);
		}catch (Exception e) {
			throw new RuntimeException("修改失败,原因为:"+e.getMessage());
		}
		
	}

	@Override
	public void informationDelete(Integer id) {
		try{
			this.messageDao.informationDelete(id);
		}catch (Exception e) {
			throw new RuntimeException("删除失败,原因为:"+e.getMessage());
		}
		
	}

	@Override
	public Message queryOne(Integer id) {
		Message message = this.messageDao.queryOne(id);
		return message;
	}

}
