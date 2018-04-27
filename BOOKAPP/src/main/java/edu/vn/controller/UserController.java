package edu.vn.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import edu.vn.models.Address;
import edu.vn.models.Users;
import edu.vn.services.UserService;

@Controller
public class UserController {
  @Autowired
  private UserService userService;
  
  /**
   * execute.
   * @return
   */
  @RequestMapping(value = "/excute", method = RequestMethod.GET)
  public String excute() {
    Address address = new Address("123123", "Thai Nguyen", "Thành phố",
        "Hồ tùng mậu", "Số nhà 23");
    userService.save(new Users("chicken", "ducky", "parrot", 
        "turtle", address, "tiger"));
    return "index";
  }
  
  @RequestMapping(value = "/appLogin", method = RequestMethod.POST) 
  public String login(ModelMap modelMap,@ModelAttribute Users user,HttpSession session) {
    System.out.println(user);
    Users currentuser = userService.checkLogin(user); 
    if (currentuser != null) {
      modelMap.addAttribute("currentuser", currentuser);
      session.setAttribute("currentUser", currentuser);
      return "index";
    }
    return "login";
  }
  
  @GetMapping(value = "/logout")
  public String logout(HttpSession httpSession) {
    httpSession.removeAttribute("currentUser");
    return "login";
  }
  
  @RequestMapping(value = "/index",method = RequestMethod.GET)
  public String showIndex() {
    return "index";
  }
  
}
