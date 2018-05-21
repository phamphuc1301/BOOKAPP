package edu.vn.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import edu.vn.services.UserService;

@Controller
public class AdminController {
  @Autowired
  private UserService userService;

  @GetMapping("/accessdenied")
  public String accessFail() {
    return "accessdenied";
  }
  
  @GetMapping("/admin/dashboard")
  public String showDashBoard() {
    return "dashboard";
  }
  
  @GetMapping("/admin/login")
  public String showLogin() {
    return "adminlogin";
  }
  @GetMapping("/pageAdmin")
  public String showPageAdmin(@RequestParam String page, ModelMap model ) {
    System.out.println("Vao page: "+page );
    switch (page) {
    case "dashboard":
      return "contentdashboard";
    case "user" :
      model.addAttribute("listUser", userService.listAll());
      return "contentuser";
    case "article":
     return "article";
    case "comment":
      return "comment";
    default:
      
    }
    return "";
  }
}
