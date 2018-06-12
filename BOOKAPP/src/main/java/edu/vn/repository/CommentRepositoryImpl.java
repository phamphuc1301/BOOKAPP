package edu.vn.repository;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import edu.vn.models.Article;
import edu.vn.models.Comment;
import edu.vn.models.Users;

@Repository
@Transactional
public class CommentRepositoryImpl implements CommentRepository {
  @Autowired
  private SessionFactory sessionFactory;

  @Override
  public void save(Comment comment) {
    Session session = sessionFactory.getCurrentSession();
    session.save(comment);
  }

  @SuppressWarnings("unchecked")
  @Override
  public List<Comment> findByArticle(Article article) {
    try {
      Session session = sessionFactory.getCurrentSession();
      Query query = session.createQuery("From Comment where article = :article ");
      query.setParameter("article", article);
      return query.list();
    } catch (Exception e) {
      e.printStackTrace();
      return null;
    }
  }

  @Override
  public void save(Comment comment, String userName) {
    Session session = sessionFactory.getCurrentSession();
    Query query = session.createQuery("From Users WHERE userName =:userName");
    query.setParameter("userName", userName);
    if(query.list() != null) {
      Users user = (Users) query.list().get(0);
      comment.setUser(user);
      session.save(comment);
    }
    else {
      save(comment);
    }
  }

  /* (non-Javadoc)
   * @see edu.vn.repository.CommentRepository#findAll(edu.vn.models.Article)
   */
  @SuppressWarnings("unchecked")
  @Override
  public List<Comment> findAll() {
    Session session = sessionFactory.getCurrentSession();
    Query query = session.createQuery("From Comment C Order by date DESC");
    return query.list();
  }
  
}
