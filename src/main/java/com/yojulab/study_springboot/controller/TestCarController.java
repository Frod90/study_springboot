package com.yojulab.study_springboot.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

import com.yojulab.study_springboot.service.CarInforsService;

@Controller
public class TestCarController {

	CarInforsService carInforsService;

	public TestCarController(@Autowired CarInforsService carInforsService) {
		this.carInforsService = carInforsService;
	}

	@GetMapping("/findAll")
	public ModelAndView findAll(ModelAndView modelAndView) {

		Object result = carInforsService.findAll();

		modelAndView.addObject("result", result);
		modelAndView.setViewName("/WEB-INF/views/testCar/findAll.jsp");

		return modelAndView;

	}

}
