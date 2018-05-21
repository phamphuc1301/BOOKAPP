package edu.vn.repository;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.User;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import edu.vn.models.Users;

@Repository
@Transactional
public class UserRepositoryImpl implements UserRepository {
  @Autowired
  private SessionFactory sessionFactory;

  public SessionFactory getSessionFactory() {
    return sessionFactory;
  }

  public void setSessionFactory(SessionFactory sessionFactory) {
    this.sessionFactory = sessionFactory;
  }

  @Override
  public void save(Users user) {
    Session session = sessionFactory.getCurrentSession();
    session.save(user.getAddress());
    session.save(user);
  }

  @Override
  public Users checkLogin(Users user) {
    Session session = sessionFactory.getCurrentSession();
    Query  query = session.createQuery("FROM Users WHERE userName "
        + "= :userName AND password=:password");
    query.setParameter("userName", user.getUserName());
    query.setParameter("password", user.getPassword());
    if (query.list().size() == 0) {
      return null;
    }
    return (Users) query.list().get(0);
  }

  @SuppressWarnings("unchecked")
  @Override
  public List<User> listAll() {
    Session session = sessionFactory.getCurrentSession();
    Query  query = session.createQuery("FROM Users");
    return query.list();
  }

}
