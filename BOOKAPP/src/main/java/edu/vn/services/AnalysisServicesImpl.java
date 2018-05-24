package edu.vn.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import edu.vn.repository.AnalysisRepository;
@Service
public class AnalysisServicesImpl implements AnalysisServices {
  @Autowired
  private AnalysisRepository analysisImpl;

  @Override
  public int analysis(String entity) {
    // TODO Auto-generated method stub
    return analysisImpl.analysis(entity);
  }
}
