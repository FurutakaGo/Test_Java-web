package com.ifl.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ifl.domain.Login;
import com.ifl.service.LoginService;

@Controller
public class LoginController {
	@Autowired
	private LoginService ls;
	@RequestMapping("index")
	public String index(){
		return "index";
	}
	@RequestMapping("index2")
	public String index2(){
		return "login";
	}
	@RequestMapping("login")
	public String login(){
		return "login";
	}
	@RequestMapping("chackLoginById")
	public void chacklogid(String logid ,HttpServletResponse response) throws IOException{
		System.out.println("logid"+logid);
		boolean flag=false;
		System.out.println("flag1"+flag);
		flag=ls.checkLoginByName(logid);
		System.out.println("flag2"+flag);
		PrintWriter pw = response.getWriter();
		pw.print(flag);
		pw.flush();
	}
	@RequestMapping("chacklog")
	public String chacklog(Login login,Model model,HttpSession session){
		System.out.println("log"+login.getlogId()+"pswd "+login.getPswd());
		System.out.println("loginchack"+ls.loginchack(login));
		if(ls.loginchack(login)){
			session.setAttribute("log", login.getlogId());
			model.addAttribute("logid",login.getlogId());
			return "main";
		}else{
			return "login";
		}
		
	}
}
