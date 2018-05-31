package edu.vn.repository;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.SQLQuery;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import edu.vn.models.Article;
import edu.vn.models.Users;

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

  /* (non-Javadoc)
   * @see edu.vn.repository.ArticleRepository#save(java.util.List)
   */
  @Override
  public void save(List<Article> articles) {
    Session session = sessionFactory.getCurrentSession();
    for (Article article : articles) {
      session.save(article);
      System.out.println(article.getAuthorOfArticle());
    }
  }

  @Override
  public void save(Article article) {
    Session session = sessionFactory.openSession();
    session.save(article);
  }

  @SuppressWarnings("unchecked")
  @Override
  public List<Article> getArticle(String action) {
    Session session = sessionFactory.getCurrentSession();
    SQLQuery query = session.createSQLQuery("usp_getArticle ?");
    query.setParameter(0, action);
    query.addEntity(Article.class);
    return query.list();
  }

  @Override
  public Article findById(String id) {
    Session session = sessionFactory.getCurrentSession();
    Query query = session.createQuery("FROM Article WHERE articleId = :id");
    
    query.setInteger("id", Integer.parseInt(id));
    return (Article) query.uniqueResult();
  }

  @SuppressWarnings("unchecked")
  @Override
  public List<Article> relatedArticle(String articleType) {
    Session session = sessionFactory.getCurrentSession();
    SQLQuery query = session.createSQLQuery("usp_articlelienquan ?");
    query.setParameter(0, articleType);
    query.addEntity(Article.class);
    return query.list();
  }


  @SuppressWarnings("unchecked")
  @Override
  public List<Article> findByTitle(String value) {
    Session session = sessionFactory.getCurrentSession();
    Query qry = session.createQuery("From Article as ar where ar.title like ?");
    qry.setString(0, "%"+value+"%");
    return (List<Article>)qry.list();
  }


  @SuppressWarnings("unchecked")
  @Override
  public List<Article> myArticle(String page,String userName) {
    Session session = sessionFactory.getCurrentSession();
    Users currentUser = (Users) session.createQuery("FROM Users Where userName = '"+userName+"'").list().get(0);
    Query qry = session.createQuery("From Article as ar where ar.authorOfArticle = ?");
    qry.setInteger(0, currentUser.getUserId());
    return qry.list();
  }

  @Override
  public Boolean rate(String idArticle, String rate) {
    try {
      Session session = sessionFactory.getCurrentSession();
      Article article = session.get(Article.class, Integer.parseInt(idArticle));
      int avgRate = (article.getRate()+Integer.parseInt(rate))/2;
      System.out.println("CCCCCCCCC : "+avgRate);
      article.setRate(avgRate);
      session.update(article);
      return true;
    } catch (Exception ex) {
      ex.printStackTrace();
      return false;      
    }
  }
  
  
  
}
