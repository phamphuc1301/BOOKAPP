package edu.vn.repository;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.User;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import edu.vn.models.TokenUserRegister;
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
  public Users save(Users user) {
    try {
      Session session = sessionFactory.getCurrentSession();
      session.save(user);
      Query query = session.createQuery("From Users where userName =:userName ");
      query.setParameter("userName", user.getUserName());
      Users saveUser = (Users) query.list().get(0);
      System.out.println("Current user save : "+saveUser);
      return saveUser;
    } catch (Exception ex) {
      return null;
    }
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

  /* (non-Javadoc)
   * @see edu.vn.repository.UserRepository#findByUserName(java.lang.String)
   */
  @Override
  public Users findByUserName(String userName) {
    Session session = sessionFactory.getCurrentSession();
    Query  query = session.createQuery("FROM Users where userName =:userName");
    query.setParameter("userName", userName);
    if(query.list().size()>0) {
      return (Users) query.list().get(0);
    }
    return null;
  }

  /* (non-Javadoc)
   * @see edu.vn.repository.UserRepository#activeUser(java.lang.String)
   */
  @Override
  public String activeUser(String token) {
    Session session = sessionFactory.getCurrentSession();
    Query  query = session.createQuery("FROM TokenUserRegister where token =:token");
    query.setParameter("token", token);
    TokenUserRegister token2 = (TokenUserRegister) query.list().get(0);
    Users user = token2.getUser();
    user.setEnabled(1);
    session.update(user);
 /*   Query query2 = session.createQuery("DELETE TokenUserRegister where token =:token2");
    query2.setParameter("token2", token);*/
    return "SUCCESS";
  }
  
  

}
