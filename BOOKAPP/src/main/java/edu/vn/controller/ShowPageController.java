package edu.vn.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import edu.vn.models.Article;
import edu.vn.services.ArticleServicesImpl;
import edu.vn.utils.Constant;

@Controller
public class ShowPageController {
  @Autowired
  private ArticleServicesImpl articleService;
  @RequestMapping(value = "/index",method = RequestMethod.GET)
  public String showIndex(ModelMap model) {
    List<Article> listTop5 = articleService.getArticle(Constant.AR_5NEWEST);
    System.out.println(listTop5);
    return "index";
  }
}
