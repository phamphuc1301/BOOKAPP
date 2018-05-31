package edu.vn.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import edu.vn.models.TokenUserRegister;
import edu.vn.repository.TokenUserRepository;

@Service
public class TokenUserServicesImpl implements TokenUserServices {
  @Autowired
  private TokenUserRepository tokenUseRepository;

  @Override
  public String save(TokenUserRegister tokenUser) {
    return tokenUseRepository.save(tokenUser);
  }

}
