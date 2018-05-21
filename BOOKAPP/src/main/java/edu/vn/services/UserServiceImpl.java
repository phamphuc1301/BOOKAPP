package edu.vn.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.User;
import org.springframework.stereotype.Service;

import edu.vn.models.Users;
import edu.vn.repository.UserRepository;

@Service
public class UserServiceImpl implements UserService {
 

  @Autowired
  private UserRepository userRepository;

  @Override
  public void save(Users user) {
    userRepository.save(user);
  }

  @Override
  public Users checkLogin(Users user) {
    return userRepository.checkLogin(user);
  }

  @Override
  public List<User> listAll() {
    return userRepository.listAll();
  }
  
  
}
