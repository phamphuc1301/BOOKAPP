package edu.vn.repository;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

@Repository
@Transactional
public class AnalysisRepositoryImpl implements AnalysisRepository {
  @Autowired
  private SessionFactory sessionFactory;

  /* Method analysis count field from table.
   * @param entity wanna count
   * @return int number of field
   */
  @Override
  public int analysis(String entity) {
    Session session = sessionFactory.getCurrentSession();
    return ((Long) session.createQuery("select count(*) from " + entity)
        .uniqueResult()).intValue();
  }

}
