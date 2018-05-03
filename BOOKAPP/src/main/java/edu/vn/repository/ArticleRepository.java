package edu.vn.repository;

import java.util.List;

import edu.vn.models.Article;

public interface ArticleRepository {
  void save(List<Article> articles);
}
