package edu.vn.repository;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import edu.vn.models.Article;
@Repository
@Transactional
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
    Session session = sessionFactory.getCurrentSession();
    for (Article article : articles) {
      /*session.save(article.getAuthorOfArticle());
      session.save(article.getBook());*/
      session.save(article);
      System.out.println(article.getAuthorOfArticle());
    }
    
  }

  /* (non-Javadoc)
   * @see edu.vn.repository.ArticleRepository#save(edu.vn.models.Article)
   */
  @Override
  public void save(Article article) {
    Session session = sessionFactory.openSession();
    session.save(article);
  }

  /* (non-Javadoc)
   * @see edu.vn.repository.ArticleRepository#getArticle(java.lang.String)
   */
  @SuppressWarnings("unchecked")
  @Override
  public List<Article> getArticle(String action) {
    Session session = sessionFactory.getCurrentSession();
    Query query = session.getNamedQuery("ar_getlist");
    query.setParameter("action", action);
    return query.list();
  }
  
  
}
