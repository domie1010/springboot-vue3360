package com.framework.rbac.bargain.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.framework.base.pager.Pager;
import com.framework.rbac.bargain.dao.BargainDao;
import com.framework.rbac.bargain.model.Bargain;
import com.framework.rbac.bargain.service.inte.BargainService;

@Service
public class BargainServiceImpl implements BargainService {

	@Autowired
	private BargainDao bargainDao;
	@Override
	public Pager Query(Pager pager, Bargain bargain) {
		Map<String,Object> map = new HashMap<>();
		map.put("pager", pager);
		map.put("bargain", bargain);
		List<Bargain> list = this.bargainDao.Query(map);
		if(list==null||list.isEmpty()){
			throw new RuntimeException("暂时没有商品");
		}
		pager.setDatas(list);
		pager.setTotalCount(queryCount(bargain));
		return pager;
	}
	@Override
	public Integer queryCount(Bargain bargain) {
		Integer count = this.bargainDao.queryCount(bargain);
		return count;
	}

	@Override
	public void bargainAdd(String goodName, String goodType, String goodPrice, String customName,String customTel,String customAddress,String status,Integer goodNumber,Integer goodId) {
		try{
			this.bargainDao.bargainAdd(goodName, goodType, goodPrice, customName,customAddress,customTel,status,goodNumber,goodId);
		}catch (Exception e) {
			throw new RuntimeException("添加失败,原因为:"+e.getMessage());
		}
		
	}

	@Override
	public void informationUpdate(Integer id, String goodName, String goodType, String goodPrice, String customName,String customTel,String customAddress,String status,Integer goodNumber,Integer goodId) {
		try{
			this.bargainDao.informationUpdate(id, goodName, goodType, goodPrice, customName,customAddress,customTel,status,goodNumber,goodId);
		}catch (Exception e) {
			throw new RuntimeException("修改失败,原因为:"+e.getMessage());
		}
		
	}

	@Override
	public void informationDelete(Integer id) {
		try{
			this.bargainDao.informationDelete(id);
		}catch (Exception e) {
			throw new RuntimeException("删除失败,原因为:"+e.getMessage());
		}
		
	}
	@Override
	public void Update(String status, Integer goodId) {
		this.bargainDao.Update(status, goodId);
		
	}

}
