package com.framework.rbac.good.web;

import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.framework.base.pager.Pager;
import com.framework.rbac.bargain.service.impl.BargainServiceImpl;
import com.framework.rbac.bargain.service.inte.BargainService;
import com.framework.rbac.good.model.Good;
import com.framework.rbac.good.service.impl.GoodServiceImpl;
import com.framework.rbac.good.service.inte.GoodService;

@Controller
@RequestMapping("/sys/good")
public class GoodController {
	
	@Autowired
	private GoodService gs = new GoodServiceImpl();
	
	@Autowired
	private BargainService bs = new BargainServiceImpl();
	
	@RequestMapping("/query")
	public String query(Pager pager,Good good,String search,String searchType,Model model){
		if(searchType!=null&&!search.isEmpty()){
			if(searchType.equals("房屋名称")){
				good.setGoodName(search);
			}else if(searchType.equals("房屋价格")){
				good.setGoodPrice(search);
			}else if(searchType.equals("房屋大小")){
				good.setGoodType(search);
			}
		}
		try{
		model.addAttribute("pager", this.gs.Query(pager, good));
		model.addAttribute("search", search);
		}catch (RuntimeException e) {
			model.addAttribute("message", e.getMessage());
		}
		return "jsp/foreground/GoodTable";
	}
	@RequestMapping("/queryLord")
	public String query(Pager pager,String goodLord,Model model){
		try{
		model.addAttribute("pager", this.gs.QueryLord(pager, goodLord));
		}catch (RuntimeException e) {
			model.addAttribute("message", e.getMessage());
		}
		return "jsp/foreground/GoodList";
	}
	@RequestMapping("/queryB")
	public String queryB(Pager pager,Good good,String search,String searchType,Model model){
		if(searchType!=null&&!search.isEmpty()){
			if(searchType.equals("商品名称")){
				good.setGoodName(search);
			}else if(searchType.equals("商品价格")){
				good.setGoodPrice(search);
			}else if(searchType.equals("商品类型")){
				good.setGoodType(search);
			}
		}
		try{
		model.addAttribute("pager", this.gs.Query(pager, good));
		model.addAttribute("search", search);
		}catch (RuntimeException e) {
			model.addAttribute("message", e.getMessage());
		}
		return "jsp/background/GoodTable";
	}
	
	@RequestMapping("/queryOne")
	public String queryOne(Integer id,Model model){
		try{
		model.addAttribute("good", this.gs.queryOne(id));
		}catch (RuntimeException e) {
			model.addAttribute("message", e.getMessage());
		}
		return "jsp/foreground/Good";
	}
	
	@RequestMapping("/queryOneLord")
	public String queryOneLord(Integer id,Model model){
		try{
		model.addAttribute("good", this.gs.queryOne(id));
		}catch (RuntimeException e) {
			model.addAttribute("message", e.getMessage());
		}
		return "jsp/foreground/GoodUpdate";
	}
	
	@RequestMapping("/queryOneB")
	public String queryOneB(Integer id,Model model){
		try{
		model.addAttribute("good", this.gs.queryOne(id));
		}catch (RuntimeException e) {
			model.addAttribute("message", e.getMessage());
		}
		return "jsp/background/Good";
	}
	
	@RequestMapping("/goodAdd")
	public String goodAdd(Good good,Model model,@RequestParam("file") MultipartFile files[],HttpServletRequest request) throws IOException{
				String path = request.getServletContext().getRealPath("/WEB-INF/upload");
	    		String name = "";
	   		for(MultipartFile file : files){
	    		if(!file.isEmpty()){
	    		String uploadName = file.getOriginalFilename();
	    		name = uploadName;
	    		String uploadUrl = path+"/"+uploadName;
					OutputStream os = new FileOutputStream(uploadUrl);
					InputStream is = file.getInputStream();
					int temp;
					while((temp=is.read())!=-1){
						os.write(temp);
					}
					os.flush();
					os.close();
					is.close();
	    		}
	   		}
					
			this.gs.goodAdd(good.getGoodName(), good.getGoodType(), good.getGoodPrice(), good.getGoodIntroduce(),name,good.getGoodLord(),"1");
		return "redirect:../good/queryB";
	}
	
	@RequestMapping("/goodAddF")
	public String goodAddF(Good good,Model model,@RequestParam("file") MultipartFile files[],HttpServletRequest request) throws IOException{
				String path = request.getServletContext().getRealPath("/WEB-INF/upload");
	    		String name = "";
	   		for(MultipartFile file : files){
	    		if(!file.isEmpty()){
	    		String uploadName = file.getOriginalFilename();
	    		name = uploadName;
	    		String uploadUrl = path+"/"+uploadName;
					OutputStream os = new FileOutputStream(uploadUrl);
					InputStream is = file.getInputStream();
					int temp;
					while((temp=is.read())!=-1){
						os.write(temp);
					}
					os.flush();
					os.close();
					is.close();
	    		}
	   		}
					
			this.gs.goodAdd(good.getGoodName(), good.getGoodType(), good.getGoodPrice(), good.getGoodIntroduce(),name,good.getGoodLord(),"1");
			model.addAttribute("goodLord", good.getGoodIntroduce());
		return "redirect:../request/index";
	}
	
	@RequestMapping("/goodUpdate")
	public String goodUpdate(Good good,Model model){
		try{
			this.gs.informationUpdate(good.getId(), good.getGoodName(), good.getGoodType(), good.getGoodPrice(), good.getGoodIntroduce(),null,good.getGoodLord(),good.getStatus());
		}catch (RuntimeException e) {
			model.addAttribute("message", e.getMessage());
		}
		return "redirect:../request/background/main";
	}
	
	@RequestMapping("/goodUpdateF")
	public String goodUpdateF(Good good,Model model){
		try{
			this.gs.informationUpdate(good.getId(), good.getGoodName(), good.getGoodType(), good.getGoodPrice(), good.getGoodIntroduce(),null,good.getGoodLord(),good.getStatus());
			model.addAttribute("goodLord", good.getGoodIntroduce());
		}catch (RuntimeException e) {
			model.addAttribute("message", e.getMessage());
		}
		return "redirect:../request/index";
	}
	@RequestMapping("/success")
	public String success(Good good,Model model){
		try{
			this.bs.Update("2", good.getId());
			this.gs.informationUpdate(good.getId(), null, null, null, null,null,null,"3");
			model.addAttribute("goodLord", good.getGoodIntroduce());
		}catch (RuntimeException e) {
			model.addAttribute("message", e.getMessage());
		}
		return "redirect:queryLord";
	}
	@RequestMapping("/failed")
	public String failed(Good good,Model model){
		try{
			this.bs.Update("3", good.getId());
			this.gs.informationUpdate(good.getId(), null, null, null, null,null,null,"1");
			model.addAttribute("goodLord", good.getGoodIntroduce());
		}catch (RuntimeException e) {
			model.addAttribute("message", e.getMessage());
		}
		return "redirect:queryLord";
	}
	
	@RequestMapping("/goodDelete")
	public String goodDelete(Integer id,Model model){
		try{
			this.gs.informationDelete(id);
		}catch (RuntimeException e) {
			model.addAttribute("message", e.getMessage());
		}
		return "redirect:queryB";
	}

}
