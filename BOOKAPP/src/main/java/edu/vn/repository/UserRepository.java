package edu.vn.repository;

import edu.vn.models.Users;

public interface UserRepository {
  public void save(Users user);

  public Users checkLogin(Users user);
}
