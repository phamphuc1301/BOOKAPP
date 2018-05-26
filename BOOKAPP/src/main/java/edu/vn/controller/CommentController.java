package edu.vn.controller;

import java.security.Principal;
import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import edu.vn.models.Article;
import edu.vn.models.Comment;
import edu.vn.services.CommentServices;

@Controller
public class CommentController {
  @Autowired
  private CommentServices commentServices;

  @RequestMapping(value = "/comment")
  public String regisComment(RedirectAttributes redirectAttributes,
      @ModelAttribute Comment comment,
      @RequestParam("articleId") String articleId, Model model,
      Principal principal) {
    Article article = new Article(Integer.parseInt(articleId));
    Date date = new Date();
    comment.setDate(date);
    comment.setArticle(article);
    if (principal != null) {
      String name = principal.getName();
      System.out.println("Current :" + name);
      commentServices.save(comment, name);
    } else {
      commentServices.save(comment);
    }
    redirectAttributes.addAttribute("id", articleId);
    return "redirect:readArticle";
  }
}
