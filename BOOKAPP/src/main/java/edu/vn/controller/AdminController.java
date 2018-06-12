package edu.vn.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import edu.vn.services.AnalysisServices;
import edu.vn.services.ArticleServices;
import edu.vn.services.CommentServices;
import edu.vn.services.UserService;
import edu.vn.utils.Constant;

@Controller
public class AdminController {
  @Autowired
  private UserService userService;
  @Autowired
  private AnalysisServices analysisServices;
  @Autowired
  private ArticleServices articleServices;
  @Autowired
  private CommentServices commentServices;
  @GetMapping("/accessdenied")
  public String accessFail() {
    return "accessdenied";
  }
  
  @GetMapping("/admin/dashboard")
  public String showDashBoard(ModelMap model) {
    model.addAttribute("valueArticle", analysisServices.analysis("Article"));
    model.addAttribute("valueUser", analysisServices.analysis("Users"));
    model.addAttribute("valueComment", analysisServices.analysis("Comment"));
    model.addAttribute("valueAnalysis", analysisServices.analysis("Comment"));
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
      showDashBoard(model);
      return "contentdashboard";
    case "user" :
      model.addAttribute("listUser", userService.listAll());
      return "contentuser";
    case "article":
      model.addAttribute("allArticle", articleServices.getArticle(Constant.AR_ALL));
     return "articleAdmin";
    case "comment":
      model.addAttribute("comments",commentServices.findAll());
      return "comment";
    default:
      
    }
    return "";
  }
}
