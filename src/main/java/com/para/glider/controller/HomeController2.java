package com.para.glider.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.para.glider.dao.ParagliderDao;
import com.para.glider.model.Paraglider;

@Controller
public class HomeController2 {
	
	@Autowired
	private ParagliderDao paraDao;
	
	@RequestMapping(value = "/deleteContact", method = RequestMethod.GET)
	public ModelAndView deleteContact(HttpServletRequest request) {
		int contactId = Integer.parseInt(request.getParameter("id"));
		paraDao.delete(contactId);
		return new ModelAndView("redirect:/LP");
	}
	
	@RequestMapping(value = "/editContact", method = RequestMethod.GET)
	public ModelAndView editContact(HttpServletRequest request) {
		int paraId = Integer.parseInt(request.getParameter("id"));
		Paraglider para = paraDao.get(paraId);
		ModelAndView model = new ModelAndView("ContactForm");
		model.addObject("contact", para);
		
		return model;
	}
	
	@RequestMapping(value = "/")
	public ModelAndView listContact(ModelAndView model) throws IOException {
		
		List<Paraglider> listOfPara = paraDao.list();
		model.addObject("contact", listOfPara);
		model.addObject("opis", "Paralotnie");
		model.setViewName("home");
		
		return model;
	}
	
	@RequestMapping(value = "/newContact", method = RequestMethod.GET)
	public ModelAndView newContact(ModelAndView model) {
		
		Paraglider newParaglider = new Paraglider();
		model.addObject("contact", newParaglider);
		model.setViewName("ContactForm");
		return model;
	}
	
	@RequestMapping(value = "/saveContact", method = RequestMethod.POST)
	public ModelAndView saveContact(@ModelAttribute Paraglider contact) {
		paraDao.saveOrUpdate(contact);
		return new ModelAndView("redirect:/LP");
	}
	
	//**********************************************************************************************************
	// testowa
	@RequestMapping(value="/LP")
	public ModelAndView test( ModelAndView model) throws IOException{
		List<Paraglider> listOfPara = paraDao.list();
		model.addObject("contact", listOfPara);
		model.setViewName("testowa");
		model.addObject("opis", "Paralotnie");
		return model; }
	
	@RequestMapping(value="/editAndRemove")
	public ModelAndView test2( ModelAndView model) throws IOException{
		List<Paraglider> listOfPara = paraDao.list();
		model.addObject("contact", listOfPara);
		model.setViewName("editAndRemove");
		return model; }

	
}
