package edu.vn.controller;

import java.io.File;
import java.security.Principal;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import edu.vn.models.Article;
import edu.vn.models.Users;
import edu.vn.services.ArticleServices;
import edu.vn.services.CommentServices;
import edu.vn.services.UserService;
import edu.vn.utils.Constant;
import edu.vn.utils.ConvertContent;

@Controller
public class ArticleController {
  @Autowired
  private CommentServices commentServices;
  @Autowired
  private ArticleServices articleService;
  @Autowired
  private UserService userServices;
  @RequestMapping(value = "/readArticle", method = RequestMethod.GET)
  public String readArticle(HttpServletRequest request, ModelMap model) {
    String id = request.getParameter("id");
    System.out.println(id);
    Article article = articleService.findById(id);
    System.out.println(article);
    if (article != null) {
      model.addAttribute("article", article);
      model.addAttribute("samecontent",
          articleService.relatedArticle(article.getType()));
    }
    System.out.println(ConvertContent.convert(article));
    System.out.println("IMAGES : " + article.getAuthorOfArticle().getImages());
    model.addAttribute("comment", commentServices.findByArticle(article));
    return "article";
  }

  @RequestMapping(value = "/findArticle", method = RequestMethod.GET)
  public String findArticle(ModelMap modelMap, HttpServletRequest request) {
    String value = request.getParameter("value");
    if ("".equals(value)) {
      modelMap.addAttribute("listArticle",
          articleService.getArticle(Constant.AR_5NEWEST));
    } else {
      modelMap.addAttribute("listArticle", articleService.findByTitle(value));
    }
    return "articleindex";
  }

  @RequestMapping(value = "/myArticle", method = RequestMethod.GET)
  public String myArticle(ModelMap modelMap, HttpSession session,
      Principal principal) {
    String userName = principal.getName();
    List<Article> listArticle = articleService.myArticle("1", userName);
    if (listArticle.size() > 0) {
      modelMap.addAttribute("listArticle", listArticle);
    } else {
      modelMap.addAttribute("nullable", true);
    }
    return "myArticle";
  }

  @RequestMapping(value = "/createNewArticle", method = RequestMethod.GET)
  public String showPageCreate() {
    return "createArticle";
  }

  @RequestMapping(value = "/excuteCreate", method = RequestMethod.POST)
  public String excuteCreate(HttpServletRequest request, ModelMap modelMap,
      @RequestParam("fileDatas") MultipartFile multipath,
      @ModelAttribute("article") Article article, Principal principal) {
    String fileName = multipath.getOriginalFilename();
    String dirFile = request.getServletContext().getRealPath("hinhanh");
    System.out.println(dirFile + fileName);
    File fileDir = new File(dirFile);
    if (!fileDir.exists()) {
      fileDir.mkdir();
    }
    try {
      multipath.transferTo(new File(fileDir + File.separator + fileName));
    } catch (Exception e) {
      e.printStackTrace();
    }
    Users user = userServices.finByUserName(principal.getName());
    article.setImages(fileName);
    article.setAuthorOfArticle(user);
    article.setAuthorOfArticle(user);
    articleService.save(article);
    return "redirect:index";
  }
  
  @RequestMapping(value="/rate", method=RequestMethod.GET)
  @ResponseBody
  public String rate(@RequestParam("id") String id,@RequestParam("rate") String rate) {
    if(articleService.rate(id, rate)) {
      return "SUCESS";
    }
    return "FALSE";
  }
}
