package com.framework.rbac.type.service.inte;

import java.util.List;

import com.framework.base.pager.Pager;
import com.framework.rbac.type.model.Type;

public interface TypeService {

	public Pager Query(Pager pager,Type type);
	
	public List<Type> QueryAll();
	
	public Integer queryCount();
	
	public void typeAdd(String typeName,Integer messageId,String name);
	
	public void informationUpdate(Integer id,String typeName,Integer messageId,String name);
	
	public void informationDelete(Integer id);
	
	public Type queryOne(Integer id);
	
}
