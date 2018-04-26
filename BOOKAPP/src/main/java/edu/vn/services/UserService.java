package edu.vn.services;

import edu.vn.models.Users;

public interface UserService {
  void save(Users user);
  
  Users checkLogin(Users user);
}
