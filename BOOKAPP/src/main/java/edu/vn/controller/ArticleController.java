package edu.vn.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import edu.vn.models.Article;
import edu.vn.services.ArticleServices;
import edu.vn.utils.Constant;

@Controller
public class ArticleController {
  @Autowired
  private ArticleServices articleService;
  @RequestMapping(value = "/readArticle",method = RequestMethod.GET)
  public String readArticle(HttpServletRequest request, ModelMap model) {
    String id = request.getParameter("id");
    System.out.println(id);
    Article article = articleService.findById(id);
    if(article != null) {
      model.addAttribute("article", article);
      model.addAttribute("samecontent", articleService.relatedArticle(article.getType()));
    }
    return "article";
  }
  
  @RequestMapping(value ="/findArticle", method = RequestMethod.GET)
  public String findArticle(ModelMap modelMap,HttpServletRequest request) {
    String value = request.getParameter("value");
    if("".equals(value)) {
      modelMap.addAttribute("listArticle",articleService.getArticle(Constant.AR_5NEWEST));
    }
    else {
    modelMap.addAttribute("listArticle", articleService.findByTitle(value));
    }
    return "articleindex";
  }
  
  @RequestMapping(value ="/myArticle", method = RequestMethod.GET)
  public String myArticle(ModelMap modelMap) {
    modelMap.addAttribute("listArticle", articleService.getArticle(Constant.AR_ALL));
    return "myArticle";
  }
  
  
}
