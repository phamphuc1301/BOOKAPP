package edu.vn.controller;

import java.io.IOException;
import java.text.ParseException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import edu.vn.models.Article;
import edu.vn.services.ArticleServices;
import edu.vn.utils.Constant;

@Controller
public class ShowPageController {
  @Autowired
  private ArticleServices articleService;

//   @Autowired
//   private ArticleRepository articleRepository;
  @RequestMapping(value = { "/index", "/" }, method = RequestMethod.GET)
  public String showIndex(ModelMap model, HttpServletRequest request)
      throws IOException, ParseException {
    List<Article> listTop5 = articleService.getArticle(Constant.AR_5NEWEST);
//     articleRepository.save(JsoupTest2.getAllArticle());
    List<Article> listTrinhTham = articleService
        .getArticle(Constant.AR_LISTTRINHTHAM);
    List<Article> listVanHoc = articleService.getArticle(Constant.AR_LISTVANHOC);
/*    fillter(listTop5, request);
    fillter(listTrinhTham, request);*/
    model.addAttribute("listVanHoc", listVanHoc);
    model.addAttribute("listArticle", listTop5);
    model.addAttribute("listTrinhTham", listTrinhTham);
    return "index";
  }

  @GetMapping("/login")
  public String showLogin() {
    return "login";
  }

  public List<Article> fillter(List<Article> articles,
      HttpServletRequest request) {
    for (Article article : articles) {
      if (!article.getImages().contains("https")) {
        String temp = article.getImages();
        System.out.println("IMAGES CHECK "+temp);
        article.setImages("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTzvsF9IUezFlMe4UhgPgSSxxaYXzZKjDezcJ8jVQus0ZfktYdJww");
      }
    }
    return articles;
  }
  @GetMapping(value="/aboutus")
  public String aboutus() {
    return "aboutus";
  }
}
