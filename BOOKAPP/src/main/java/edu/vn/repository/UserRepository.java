package edu.vn.repository;

import java.util.List;

import org.springframework.security.core.userdetails.User;

import edu.vn.models.Users;

public interface UserRepository {
  public String save(Users user);

  public Users checkLogin(Users user);
  
  public List<User> listAll();
  
  public Users findByUserName(String userName);
}
