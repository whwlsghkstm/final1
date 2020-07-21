package com.example.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.example.mapper.ExhibitionMapper;

@Controller
public class ExhibitionController {
	@Autowired
	ExhibitionMapper mapper;

	@RequestMapping("exh/list")
	public void list(Model model) {
		model.addAttribute("list",mapper.list());
	}
	@RequestMapping("exh/read")
	public void read(int e_no,Model model) {
		model.addAttribute("vo", mapper.read(e_no));
	}
	
}
