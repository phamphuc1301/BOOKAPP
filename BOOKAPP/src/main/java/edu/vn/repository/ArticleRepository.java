package edu.vn.repository;

import java.util.List;

import edu.vn.models.Article;
import edu.vn.models.Users;

public interface ArticleRepository {
  void save(List<Article> articles);

  void save(Article article);

  List<Article> getArticle(String action);

  Article findById(String id);
  
  List<Article> relatedArticle(String articleType);
  
  List<Article> findByTitle(String value);
  
  List<Article> myArticle(String page, String userName);
}
