package edu.vn.controller;

import java.io.IOException;
import java.text.ParseException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import edu.vn.models.Article;
import edu.vn.services.ArticleServicesImpl;
import edu.vn.utils.Constant;

@Controller
public class ShowPageController {
  @Autowired
  private ArticleServicesImpl articleService;
//  @Autowired
//  private ArticleRepository articleRepository;
  @RequestMapping(value = {"/index","/"},method = RequestMethod.GET)
  public String showIndex(ModelMap model) throws IOException, ParseException {
    List<Article> listTop5 = articleService.getArticle(Constant.AR_5NEWEST);
//    articleRepository.save(JsoupTest2.getAllArticle());
//    List<Article> listVanHoc = articleService.getArticle(Constant.AR_LISTVANHOC);
    model.addAttribute("listArticle", listTop5);
    return "index";
  }
  
  @GetMapping("/login")
  public String showLogin() {
    return "login";
  }
}
