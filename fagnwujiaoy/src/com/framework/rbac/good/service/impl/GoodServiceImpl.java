package com.framework.rbac.good.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.framework.base.pager.Pager;
import com.framework.rbac.good.dao.GoodDao;
import com.framework.rbac.good.model.Good;
import com.framework.rbac.good.service.inte.GoodService;

@Service
public class GoodServiceImpl implements GoodService {

	@Autowired
	private GoodDao goodDao;
	@Override
	public Pager Query(Pager pager, Good good) {
		Map<String,Object> map = new HashMap<>();
		map.put("pager", pager);
		map.put("good", good);
		List<Good> list = this.goodDao.Query(map);
		if(list==null||list.isEmpty()){
			throw new RuntimeException("暂时没有商品");
		}
		pager.setDatas(list);
		pager.setTotalCount(queryCount(good));
		return pager;
	}

	@Override
	public Integer queryCount(Good good) {
		Integer count = this.goodDao.queryCount(good);
		return count;
	}

	@Override
	public void goodAdd(String goodName, String goodType, String goodPrice, String goodIntroduce,String url,String goodLord,String status) {
		try{
			this.goodDao.goodAdd(goodName, goodType, goodPrice, goodIntroduce,url,goodLord,status);
		}catch (Exception e) {
			throw new RuntimeException("添加失败,原因为:"+e.getMessage());
		}
		
	}

	@Override
	public void informationUpdate(Integer id, String goodName, String goodType, String goodPrice,
			String goodIntroduce,String url,String goodLord,String status) {
		try{
			this.goodDao.informationUpdate(id, goodName, goodType, goodPrice, goodIntroduce,url,goodLord,status);
		}catch (Exception e) {
			throw new RuntimeException("修改失败,原因为:"+e.getMessage());
		}
		
	}

	@Override
	public void informationDelete(Integer id) {
		try{
			this.goodDao.informationDelete(id);
		}catch (Exception e) {
			throw new RuntimeException("删除失败,原因为:"+e.getMessage());
		}
		
	}

	@Override
	public Good queryOne(Integer id) {
		Good good = new Good();
		try{
			good = this.goodDao.QueryOne(id);
		}catch (Exception e) {
			throw new RuntimeException("并没与该商品");
		}
		return good;
	}

	@Override
	public Pager QueryLord(Pager pager, String goodLord) {
		Map<String,Object> map = new HashMap<>();
		map.put("pager", pager);
		map.put("goodLord", goodLord);
		List<Good> list = this.goodDao.QueryLord(map);
		if(list==null||list.isEmpty()){
			throw new RuntimeException("暂时没有商品");
		}
		pager.setDatas(list);
		pager.setTotalCount(countLord(goodLord));
		return pager;
	}

	@Override
	public Integer countLord(String goodLord) {
		Integer count = this.goodDao.countLord(goodLord);
		return count;
	}

}
