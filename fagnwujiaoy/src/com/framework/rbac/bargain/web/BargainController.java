package com.framework.rbac.bargain.web;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.framework.base.pager.Pager;
import com.framework.rbac.bargain.model.Bargain;
import com.framework.rbac.bargain.service.impl.BargainServiceImpl;
import com.framework.rbac.bargain.service.inte.BargainService;
import com.framework.rbac.good.service.impl.GoodServiceImpl;
import com.framework.rbac.good.service.inte.GoodService;
import com.framework.rbac.user.model.User;

@Controller
@RequestMapping("/sys/bargain")
public class BargainController {
	
	@Autowired
	BargainService bs = new BargainServiceImpl();
	
	@Autowired
	GoodService gs = new GoodServiceImpl();
	
	@RequestMapping("/query")
	public String query(Pager pager,Bargain bargain,String search,Model model,HttpSession session){
		try{
			if((User)session.getAttribute("User")!=null){
			User user = (User)session.getAttribute("User");
		bargain.setCustomName(user.getAccount());
			}
		model.addAttribute("pager", this.bs.Query(pager,bargain));
		model.addAttribute("search", search);
		}catch (RuntimeException e) {
			model.addAttribute("message", e.getMessage());
		}
		return "jsp/foreground/Bargain";

	}
	@RequestMapping("/queryB")
	public String queryB(Pager pager,Bargain bargain,String search,Model model,HttpSession session){
		try{
		model.addAttribute("pager", this.bs.Query(pager,bargain));
		model.addAttribute("search", search);
		}catch (RuntimeException e) {
			model.addAttribute("message", e.getMessage());
		}
		return "jsp/background/BargainTable";

	}
	@RequestMapping("/add")
	public String add(Bargain bargain,Model model){
			this.bs.bargainAdd(bargain.getGoodName(), bargain.getGoodType(), bargain.getGoodPrice(), bargain.getCustomName(),bargain.getCustomTel(),bargain.getCustomAddress(),bargain.getStatus(), bargain.getGoodNumber(),bargain.getGoodId());
			this.gs.informationUpdate(bargain.getGoodId(), null, null, null, null, null, null, "2");
		return "redirect:query";
	}
	@RequestMapping("/update")
	public String update(Bargain bargain,Model model){
		this.bs.informationUpdate(bargain.getId(), bargain.getGoodName(), bargain.getGoodType(), bargain.getGoodPrice(), bargain.getCustomName(), bargain.getCustomTel(), bargain.getCustomAddress(), bargain.getStatus(), bargain.getGoodNumber(), bargain.getGoodId());
		return "redirect:query";
	}
	@RequestMapping("/updateB")
	public String updateB(Bargain bargain,Model model){
		this.bs.informationUpdate(bargain.getId(), bargain.getGoodName(), bargain.getGoodType(), bargain.getGoodPrice(), bargain.getCustomName(), bargain.getCustomTel(), bargain.getCustomAddress(), bargain.getStatus(), bargain.getGoodNumber(), bargain.getGoodId());
		model.addAttribute("status", "1");
		return "redirect:queryB";
	}
	
	@RequestMapping("/delete")
	public String delete(Integer id,Model model){
			this.bs.informationDelete(id);
		return "redirect:query";
	}
}
