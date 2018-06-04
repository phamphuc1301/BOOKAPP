package edu.vn.utils;

import edu.vn.models.Article;
import edu.vn.models.ArticleShow;

public class ConvertContent {
  public static ArticleShow convert(Article article) {
    ArticleShow ashow = new ArticleShow();
    System.out.println(article.getContent());
    @SuppressWarnings("unused")
    String[] content = article.getContent().split(".");
    /*StringBuilder str = new StringBuilder();
    for(int i = 0; i<2;i++) {
      str.append(content[i]);
    }*/
//    System.out.println(str.toString());
    return ashow;
  }
}
