package edu.vn.controller;

import java.io.IOException;
import java.text.ParseException;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import edu.vn.models.Users;
import edu.vn.repository.ArticleRepository;
import edu.vn.services.UserService;
import edu.vn.utils.JsoupTest2;

@Controller
public class UserController {
  @Autowired
  private UserService userService;
//  @Autowired
//  private ArticleRepository articleRepository;

  
  @RequestMapping(value = "/appLogin", method = RequestMethod.POST) 
  public String login(ModelMap modelMap,@ModelAttribute Users user,HttpSession session) throws IOException, ParseException {
    System.out.println(user);
    Users currentuser = userService.checkLogin(user);
//    articleRepository.save(JsoupTest2.getAllArticle());
    if (currentuser != null) {
      modelMap.addAttribute("currentuser", currentuser);
      session.setAttribute("currentUser", currentuser);
      return "redirect:index";
    }
    
    return "login";
  }
  
  @GetMapping(value = "/logout")
  public String logout(HttpSession httpSession) {
    httpSession.removeAttribute("currentUser");
    return "login";
  }
  

  
}
