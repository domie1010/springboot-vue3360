package com.framework.rbac.good.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import com.framework.rbac.good.model.Good;

public interface GoodDao {

	public List<Good> Query(Map<String,Object> map);
	
	public List<Good> QueryLord(Map<String,Object> map);
	
	public Integer queryCount(@Param("good")Good good);
	
	public Integer countLord(@Param("goodLord")String goodLord);
	
	public Good QueryOne(@Param("id")Integer id);
	
	public void goodAdd(@Param("goodName")String goodName,@Param("goodType")String goodType,@Param("goodPrice")String goodPrice,@Param("goodIntroduce")String goodIntroduce,@Param("url")String url,@Param("goodLord")String goodLord,@Param("status")String status);
	
	public void informationUpdate(@Param("id")Integer id,@Param("goodName")String goodName,@Param("goodType")String goodType,@Param("goodPrice")String goodPrice,@Param("goodIntroduce")String goodIntroduce,@Param("url")String url,@Param("goodLord")String goodLord,@Param("status")String status);
	
	public void informationDelete(@Param("id")Integer id);
	
}
