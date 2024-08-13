package com.yojulab.study_springboot.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

import com.yojulab.study_springboot.service.CarCompanyService;

@Controller
public class CarCompanyController {

	CarCompanyService carCompanyService;

	public CarCompanyController(@Autowired CarCompanyService carCompanyService) {
		this.carCompanyService = carCompanyService;
	}

	@GetMapping("/carcompany/list")
	public ModelAndView findAll(ModelAndView modelAndView) {

		Object result = carCompanyService.findAll();

		modelAndView.addObject("result", result);
		modelAndView.setViewName("/WEB-INF/views/carcompany/list.jsp");

		return modelAndView;

	}

}
