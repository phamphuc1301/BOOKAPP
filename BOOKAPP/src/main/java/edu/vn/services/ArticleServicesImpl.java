package edu.vn.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import edu.vn.models.Article;
import edu.vn.repository.ArticleRepository;
@Service
public class ArticleServicesImpl implements ArticleServices {
  @Autowired
  private ArticleRepository articleRepository;
  @Override
  public void save(List<Article> articles) {
    articleRepository.save(articles);
  }
  
}
