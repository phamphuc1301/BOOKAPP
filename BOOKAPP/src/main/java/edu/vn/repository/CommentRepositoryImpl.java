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

}
