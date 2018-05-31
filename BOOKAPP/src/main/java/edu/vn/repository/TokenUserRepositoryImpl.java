package edu.vn.repository;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import edu.vn.models.TokenUserRegister;

@Repository
@Transactional
public class TokenUserRepositoryImpl implements TokenUserRepository {
  @Autowired
  private SessionFactory sessionFactory;

  @Override
  public String save(TokenUserRegister tokenUser) {
    Session session = sessionFactory.getCurrentSession();
    session.save(tokenUser);
    return "SUCCESS";
  }

}
