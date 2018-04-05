package edu.vn.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class ErrorController {
	@RequestMapping(value = "/error", method = RequestMethod.GET)
	public String redirectError(HttpServletRequest request, Model model) {
		int errorCode = (int) request.getAttribute("javax.servlet.error.status_code");
		model.addAttribute("error", errorCode);
		return "error";
	}
}
