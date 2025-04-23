package com.framework.rbac.user.web;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.framework.base.pager.Pager;
import com.framework.rbac.user.model.User;
import com.framework.rbac.user.service.impl.UserServiceImpl;
import com.framework.rbac.user.service.inte.UserService;

@Controller
@RequestMapping("/sys")
public class UserController {

	@Autowired
	UserService usi = new UserServiceImpl();
	@RequestMapping("/login")
	public String login(String account,String password,Model model,HttpServletRequest request){
		try{
			String type = "1";
			User user = this.usi.login(account, password,type);
			HttpSession session = request.getSession();
			session.setAttribute("User", user);
			return "redirect:../sys/request/index";
		}catch (RuntimeException e) {
			model.addAttribute("messageLogin", e.getMessage());
			return "redirect:../sys/request/index";
		}
	}
	
	@RequestMapping("/loginVip")
	public String loginVip(String account,String password,String safe,Model model,HttpServletRequest request){
		try{
			String type = "3";
			User user = this.usi.loginVip(account, password,type,safe);
			HttpSession session = request.getSession();
			session.setAttribute("User", user);
			return "redirect:../sys/request/index";
		}catch (RuntimeException e) {
			model.addAttribute("messageLogin", e.getMessage());
			return "redirect:../sys/request/index";
		}
	}
	
	@RequestMapping("/loginAdmin")
	public String loginAdmin(String account,String password,String type,Model model,HttpServletRequest request){
		try{
			User user = this.usi.login(account, password,"2");
			HttpSession session = request.getSession();
			session.setAttribute("Admin", user);
			return "redirect:../sys/request/background/index";
		}catch (RuntimeException e) {
			model.addAttribute("messageLogin", e.getMessage());
			return "redirect:../sys/request/background/index";
		}
	}
	@RequestMapping("/logout")
	public String logout(HttpSession session){
			session.removeAttribute("User");
			return "redirect:../sys/request/index";
	}
	@RequestMapping("/logoutAdmin")
	public String logoutAdmin(HttpSession session){
			session.removeAttribute("Admin");
			return "redirect:../sys/request/background/index";
	}
	@RequestMapping("/queryB")
	public String queryB(Pager pager,User user,String search,String searchType,Model model){
		try{
		model.addAttribute("pager", this.usi.Query(pager, user));
		}catch (RuntimeException e) {
			model.addAttribute("message", e.getMessage());
		}
		return "jsp/background/UserTable";
	}
	@RequestMapping("/query")
	public String query(Pager pager,User user,String search,String searchType,Model model){
		try{
		model.addAttribute("pager", this.usi.Query(pager, user));
		}catch (RuntimeException e) {
			model.addAttribute("message", e.getMessage());
		}
		return "jsp/foreground/UserTable";
	}
	@RequestMapping("/queryOne")
	public String queryOne(Integer id,Model model){
		try{
			User user = this.usi.queryOne(id);
			model.addAttribute("user", user);
			return "jsp/foreground/information";
		}catch (RuntimeException e) {
			model.addAttribute("messageLogin", e.getMessage());
			return "redirect:../sys/user/query";
		}
	}
	@RequestMapping("/queryOneB")
	public String queryOneB(Integer id,Model model){
		try{
			User user = this.usi.queryOne(id);
			model.addAttribute("user", user);
			return "jsp/background/User";
		}catch (RuntimeException e) {
			model.addAttribute("messageLogin", e.getMessage());
			return "redirect:../sys/queryB";
		}
	}
	
	@RequestMapping("/userAdd")
	public String userAdd(User user,Model model){
		try{
			this.usi.userAdd(user.getAccount(), user.getTel(), user.getAddress(), user.getPassword(), user.getType(),user.getEmail(),user.getSafe());
			return "redirect:../sys/request/index";
		}catch (RuntimeException e) {
			model.addAttribute("messageLogin", e.getMessage());
			return "redirect:../sys/request/index";
		}
	}
	
	@RequestMapping("/userUpdate")
	public String userUpdate(User user,Model model,String control){
			String href="";
			System.out.println(control);
			if(control.equals("1")){
				href = "redirect:../sys/request/index";
			}else if(control.equals("2")){
				href = "redirect:../sys/queryB";
			}
			this.usi.informationUpdate(user.getId(),user.getAccount(), user.getTel(), user.getAddress(), user.getPassword(), user.getType(),user.getEmail(),user.getSafe());
			return href;
	}
	@RequestMapping("/delete")
	public String typeDelete(Integer id,Model model){
		try{
			this.usi.informationDelete(id);
		}catch (RuntimeException e) {
			model.addAttribute("message", e.getMessage());
		}
		return "redirect:queryB";
	}
	
	
}
