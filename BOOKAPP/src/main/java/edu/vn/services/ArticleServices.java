package edu.vn.services;

import java.util.List;

import edu.vn.models.Article;

public interface ArticleServices {
  void save(List<Article> articles);

  void save(Article article);

  List<Article> getArticle(String action);

  Article findById(String id);
  
  List<Article> relatedArticle(String articleType);
  
  List<Article> findByTitle(String value);
  
  List<Article> myArticle(String page,String userName);
  
  Boolean rate(String idArticle,String rate);
}
