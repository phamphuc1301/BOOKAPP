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
    SQLQuery query = session.createSQLQuery("usp_getArticle ?");
    query.setParameter(0, action);
    query.addEntity(Article.class);
    return query.list();
  }

  /* (non-Javadoc)
   * @see edu.vn.repository.ArticleRepository#findById(java.lang.String)
   */
  @Override
  public Article findById(String id) {
    Session session = sessionFactory.getCurrentSession();
    Query query = session.createQuery("FROM Article WHERE articleId = :id");
    
    query.setInteger("id", Integer.parseInt(id));
    return (Article) query.uniqueResult();
  }

  /* (non-Javadoc)
   * @see edu.vn.repository.ArticleRepository#relatedArticle(java.lang.String)
   */
  @SuppressWarnings("unchecked")
  @Override
  public List<Article> relatedArticle(String articleType) {
    Session session = sessionFactory.getCurrentSession();
    SQLQuery query = session.createSQLQuery("usp_articlelienquan ?");
    query.setParameter(0, articleType);
    query.addEntity(Article.class);
    return query.list();
  }

  /* (non-Javadoc)
   * @see edu.vn.repository.ArticleRepository#findByTitle(java.lang.String)
   */
  @SuppressWarnings("unchecked")
  @Override
  public List<Article> findByTitle(String value) {
    Session session = sessionFactory.getCurrentSession();
    Query qry = session.createQuery("From Article as ar where ar.title like ?");
    qry.setString(0, "%"+value+"%");
    return (List<Article>)qry.list();
  }

  /* (non-Javadoc)
   * @see edu.vn.repository.ArticleRepository#myArticle(java.lang.String)
   */
  @SuppressWarnings("unchecked")
  @Override
  public List<Article> myArticle(String page,String userName) {
    Session session = sessionFactory.getCurrentSession();
    Users currentUser = (Users) session.createQuery("FROM Users Where userName = '"+userName+"'").list().get(0);
    Query qry = session.createQuery("From Article as ar where ar.authorOfArticle = ?");
    qry.setInteger(0, currentUser.getUserId());
    return qry.list();
  }
  
  
  
}
