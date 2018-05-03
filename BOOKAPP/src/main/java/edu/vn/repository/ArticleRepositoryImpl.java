package edu.vn.repository;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import edu.vn.models.Article;
@Repository
public class ArticleRepositoryImpl implements ArticleRepository {
  @Autowired
  private SessionFactory sessionFactory;
  
  public SessionFactory getSessionFactory() {
    return sessionFactory;
  }

  public void setSessionFactory(SessionFactory sessionFactory) {
    this.sessionFactory = sessionFactory;
  }

  @Override
  public void save(List<Article> articles) {
    Session session = sessionFactory.openSession();
    for (Article article : articles) {
      session.save(article);
      System.out.println(article.getAuthorOfArticle());
    }
    
  }

}
