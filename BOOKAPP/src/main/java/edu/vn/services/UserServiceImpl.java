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
  public String save(Users user) {
    if("".equals(user.getUserName()) || "".equals(user.getEmail()) || user.getPassword().length() < 5) {
      return null;
    }
    user.setEnabled(1);
    user.setRoles("ROLE_USER");
    return userRepository.save(user);
  }

  @Override
  public Users checkLogin(Users user) {
    return userRepository.checkLogin(user);
  }

  @Override
  public List<User> listAll() {
    return userRepository.listAll();
  }

  @Override
  public Users finByUserName(String userName) {
    return userRepository.findByUserName(userName);
  }
  
  
}
