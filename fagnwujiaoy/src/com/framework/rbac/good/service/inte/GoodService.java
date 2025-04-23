package com.framework.rbac.good.service.inte;



import com.framework.base.pager.Pager;
import com.framework.rbac.good.model.Good;

public interface GoodService {

	public Pager Query(Pager pager,Good good);
	
	public Pager QueryLord(Pager pager,String goodLord);
	
	public Integer queryCount(Good good);
	
	public Integer countLord(String goodLord);
	
	public Good queryOne(Integer id);
	
	public void goodAdd(String goodName,String goodType,String goodPrice,String goodIntroduce,String url,String goodLord,String status);
	
	public void informationUpdate(Integer id,String goodName,String goodType,String goodPrice,String goodIntroduce,String url,String goodLord,String status);
	
	public void informationDelete(Integer id);
	
}
