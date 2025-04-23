package com.framework.rbac.bargain.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import com.framework.rbac.bargain.model.Bargain;

public interface BargainDao {

	public List<Bargain> Query(Map<String,Object> map);
	
	public Integer queryCount(@Param("bargain")Bargain bargain);
	
	public void bargainAdd(@Param("goodName")String goodName,@Param("goodType")String goodType,@Param("goodPrice")String goodPrice,@Param("customName")String customName,@Param("customAddress")String customAddress,@Param("customTel")String customTel,@Param("status")String status,@Param("goodNumber")Integer goodNumber,@Param("goodId")Integer goodId);
	
	public void informationUpdate(@Param("id")Integer id,@Param("goodName")String goodName,@Param("goodType")String goodType,@Param("goodPrice")String goodPrice,@Param("customName")String customName,@Param("customAddress")String customAddress,@Param("customTel")String customTel,@Param("status")String status,@Param("goodNumber")Integer goodNumber,@Param("goodId")Integer goodId);
	
	public void Update(@Param("status")String status,@Param("goodId")Integer goodId);
	
	public void informationDelete(@Param("id")Integer id);
	
}
