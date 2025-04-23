package com.framework.rbac.bargain.service.inte;

import com.framework.base.pager.Pager;
import com.framework.rbac.bargain.model.Bargain;

public interface BargainService {

	public Pager Query(Pager pager,Bargain bargain);
	
	public Integer queryCount(Bargain bargain);
	
	public void bargainAdd(String goodName,String goodType,String goodPrice,String customName,String customTel,String customAddress,String status,Integer goodNumber,Integer goodId);
	
	public void informationUpdate(Integer id,String goodName,String goodType,String goodPrice,String customName,String customTel,String customAddress,String status,Integer goodNumber,Integer goodId);
	
	public void Update(String status,Integer goodId);
	
	public void informationDelete(Integer id);
	
}
