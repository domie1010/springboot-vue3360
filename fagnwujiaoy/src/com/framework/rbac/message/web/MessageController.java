package com.framework.rbac.message.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.framework.base.pager.Pager;
import com.framework.rbac.message.model.Message;
import com.framework.rbac.message.service.impl.MessageServiceImpl;
import com.framework.rbac.message.service.inte.MessageService;

@Controller
@RequestMapping("/sys/message")
public class MessageController {

	@Autowired
	private MessageService ms = new MessageServiceImpl();
	@RequestMapping("/query")
	public String query(Pager pager,Message message,Model model){
		try{
			model.addAttribute("pager", this.ms.Query(pager, message));
		}catch (RuntimeException e) {
			model.addAttribute("mess", e.getMessage());
			model.addAttribute("goodId", message.getGoodId());
		}
		return "jsp/foreground/MessageTable";
	}
	@RequestMapping("/background/query")
	public String queryB(Pager pager,Message message,Model model){
		try{
			model.addAttribute("pager", this.ms.Query(pager, message));
		}catch (RuntimeException e) {
			model.addAttribute("message", e.getMessage());
			model.addAttribute("goodId", message.getGoodId());
		}
		return "jsp/background/MessageTable";
	}
	@RequestMapping("/messageAdd")
	public String messageAdd(Pager pager,Message message,Model model){
		try{
			model.addAttribute("goodId", message.getGoodId());
		this.ms.messageAdd(message.getGoodId(), message.getUserMessage());
		}catch (RuntimeException e) {
			model.addAttribute("message", e.getMessage());
		}
		return "redirect:query";
	}
	@RequestMapping("/background/messageDelete")
	public String messageDelete(Integer id,Model model){
		try{
		this.ms.informationDelete(id);
		}catch (RuntimeException e) {
			model.addAttribute("message", e.getMessage());
		}
		return "redirect:query";
	}
	
}
