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
  
  /**
   * @return the articleRepository
   */
  public ArticleRepository getArticleRepository() {
    return articleRepository;
  }
  /**
   * @param articleRepository the articleRepository to set
   */
  public void setArticleRepository(ArticleRepository articleRepository) {
    this.articleRepository = articleRepository;
  }
  @Override
  public void save(List<Article> articles) {
    articleRepository.save(articles);
  }
  /* (non-Javadoc)
   * @see edu.vn.services.ArticleServices#save(edu.vn.models.Article)
   */
  @Override
  public void save(Article article) {
      articleRepository.save(article);
  }
  /* (non-Javadoc)
   * @see edu.vn.services.ArticleServices#getArticle(java.lang.String)
   */
  @Override
  public List<Article> getArticle(String action) {
    return articleRepository.getArticle(action);
  }
  /* (non-Javadoc)
   * @see edu.vn.services.ArticleServices#findById(java.lang.String)
   */
  @Override
  public Article findById(String id) {
    return articleRepository.findById(id);
  }
  /* (non-Javadoc)
   * @see edu.vn.services.ArticleServices#relatedArticle(java.lang.String)
   */
  @Override
  public List<Article> relatedArticle(String articleType) {
    return articleRepository.relatedArticle(articleType);
  }
  /* (non-Javadoc)
   * @see edu.vn.services.ArticleServices#findByTitle(java.lang.String)
   */
  @Override
  public List<Article> findByTitle(String value) {
    return articleRepository.findByTitle(value);
  }
  /* (non-Javadoc)
   * @see edu.vn.services.ArticleServices#myArticle(java.lang.String, edu.vn.models.Users)
   */
  @Override
  public List<Article> myArticle(String page, String userName) {
    return articleRepository.myArticle(page, userName);
  }
  /* (non-Javadoc)
   * @see edu.vn.services.ArticleServices#rate(java.lang.String, java.lang.String)
   */
  @Override
  public Boolean rate(String idArticle, String rate) {
    return articleRepository.rate(idArticle, rate);
  }
  
  
}
