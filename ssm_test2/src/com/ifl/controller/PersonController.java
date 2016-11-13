package com.ifl.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ifl.domain.Person;
import com.ifl.service.PersonService;

@Controller
public class PersonController {
	@Autowired
	private PersonService ps;
	@RequestMapping("person")
	public String person(Model model){
		List<Person>list=ps.getPersonHobbyMap();
		model.addAttribute("plist",list);
		for(Person p:list){
			System.out.println(p);
		}
		return "restaurant";
	}
	
	@RequestMapping("home")
	public String home(){
		return "home";
	}
	
	@RequestMapping("goRestAdd")
	public String goRestAdd(){
		return "rest_add";
	}
	
	@RequestMapping("restedit")
	public String restedit(int id,Model model){
		Person p=ps.getPersonById(id);
		model.addAttribute("person",p);
		return "rest_edit";
	}
	@RequestMapping("getMenuList")
	public String getMenuList(int id,Model model){
		model.addAttribute("plist",ps.getPersonById(id));
		return "menu";
	}
	
	@RequestMapping("menuedit")
	public String menuedit(int id,Model model){
		model.addAttribute("person",ps.getPersonById(id));
		return "menu_edit";
	}
}
