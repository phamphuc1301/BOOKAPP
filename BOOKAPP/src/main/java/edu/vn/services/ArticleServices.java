package edu.vn.services;

import java.util.List;

import edu.vn.models.Article;

public interface ArticleServices {
  void save(List<Article> articles);
  void save(Article article);
  List<Article> getArticle(String action);
}
