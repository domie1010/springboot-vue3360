package com.framework.rbac.web;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.framework.base.pager.Pager;
import com.framework.rbac.good.model.Good;
import com.framework.rbac.good.service.impl.GoodServiceImpl;
import com.framework.rbac.good.service.inte.GoodService;
import com.framework.rbac.message.model.Message;
import com.framework.rbac.message.service.impl.MessageServiceImpl;
import com.framework.rbac.message.service.inte.MessageService;
import com.framework.rbac.type.service.impl.TypeServiceImpl;
import com.framework.rbac.type.service.inte.TypeService;

@Controller
@RequestMapping("/sys/request")
public class RequestController {

	@Autowired
	private MessageService ms = new MessageServiceImpl();
	@Autowired
	private GoodService gs = new GoodServiceImpl();
	@Autowired
	TypeService ts = new TypeServiceImpl();
	@RequestMapping("/index")
	public String foreIndex(Model model,String messageLogin,HttpSession session){
		Pager pagerGood = new Pager();
		Pager pagerMessage = new Pager();
		Message message = new Message();
		Good good = new Good();
		try{
			model.addAttribute("pagerGood", this.gs.Query(pagerGood, good));
		}catch (RuntimeException e) {
			model.addAttribute("messageGood", e.getMessage());
		}
		try{
			model.addAttribute("pagerMessage", this.ms.Query(pagerMessage, message));
		}catch (RuntimeException e) {
			model.addAttribute("messageMessage", e.getMessage());
		}
		model.addAttribute("messageLogin", messageLogin);
		return "jsp/foreground/Welcome";
	}
	@RequestMapping("/background/login")
	public String backgroundlogin(){
		return "jsp/background/login";
	}
	@RequestMapping("/sign")
	public String sign(){
		return "jsp/foreground/sign";
	}
	
	@RequestMapping("/background/index")
	public String index(HttpSession session,Model model,String messageLogin){
		String href = "";
		session.setAttribute("typeList", this.ts.QueryAll());
		if(session.getAttribute("Admin")!=null){
			href = "jsp/background/index";
		}else{
			model.addAttribute("messageLogin", messageLogin);
			href = "jsp/background/Login";
		}
		return href;
	}
	@RequestMapping("/background/main")
	public String main(){
		return "jsp/background/Main";
	}
	@RequestMapping("/background/left")
	public String left(){
		return "jsp/background/Left";
	}
	@RequestMapping("/background/top")
	public String top(){
		return "jsp/background/Top";
	}
	@RequestMapping("/background/goodAdd")
	public String goodAdd(){
		return "jsp/background/GoodAdd";
	}
	@RequestMapping("/goodAdd")
	public String goodAd(){
		return "jsp/foreground/GoodAdd";
	}
	@RequestMapping("/messageAdd")
	public String messageAdd(Integer goodId,Model model){
		model.addAttribute("goodId", goodId);
		return "jsp/foreground/Message";
	}
	@RequestMapping("/background/typeAdd")
	public String typeAdd(){
		return "jsp/background/TypeAdd";
	}
	@RequestMapping("/error")
	public String error(){
		return "jsp/foreground/error";
	}
}
