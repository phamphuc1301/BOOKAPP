package edu.vn.controller;

import java.security.Principal;
import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import edu.vn.models.Article;
import edu.vn.models.Comment;
import edu.vn.models.Users;
import edu.vn.services.ArticleServices;
import edu.vn.services.CommentServices;

@Controller
public class CommentController {
  @Autowired
  private CommentServices commentServices;
  @Autowired
  private ArticleServices articleService;
  @RequestMapping(value = "/comment")
  public String regisComment(RedirectAttributes redirectAttributes, @ModelAttribute Comment comment ,
      @RequestParam("articleId") String articleId, Model model,Principal principal) {
    if(principal != null) {
      Users user = (Users) principal;
      System.out.println("Current :"+user);
//      comment.setUserName("");
//      comment.setEmail("");

    }
    Article article = new Article(Integer.parseInt(articleId));
    Date date = new Date();
    comment.setDate(date);
    comment.setArticle(article);
    commentServices.save(comment);
    Article article2 = articleService.findById(articleId);
    System.out.println(article);
    model.addAttribute("article", article2);
    redirectAttributes.addAttribute("id", articleId);
    return "redirect:readArticle";
  }
}
