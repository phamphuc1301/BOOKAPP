package edu.vn.services;

import java.util.List;

import org.springframework.security.core.userdetails.User;

import edu.vn.models.Users;

public interface UserService {
  String save(Users user);

  Users checkLogin(Users user);

  public List<User> listAll();
  
  public Users finByUserName(String userName);
}
