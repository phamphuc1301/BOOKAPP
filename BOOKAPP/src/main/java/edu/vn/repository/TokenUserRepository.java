package edu.vn.repository;

import edu.vn.models.TokenUserRegister;

public interface TokenUserRepository {
  String save(TokenUserRegister tokenUser);
}
