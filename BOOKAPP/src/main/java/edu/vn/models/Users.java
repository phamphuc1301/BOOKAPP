package edu.vn.models;

import java.io.Serializable;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToOne;


@Entity

public class Users implements Serializable {

  private static final long serialVersionUID = 1L;
  @Id
  @GeneratedValue(strategy = GenerationType.IDENTITY)
  private int userId;
  private String email;
  private String userName;
  private String fullName;
  private String password;
  @OneToOne
  private Address address;
  private String roles;

  public Users(String email, String userName, String fullName, String password,
      Address address, String roles) {
    super();
    this.email = email;
    this.userName = userName;
    this.fullName = fullName;
    this.password = password;
    this.address = address;
    this.roles = roles;
  }
  
  public Users(String userName, String password) {
    super();
    this.userName = userName;
    this.password = password;
  }

  public Users() {
    super();
  }

  public int getUserId() {
    return userId;
  }

  public void setUserId(int userId) {
    this.userId = userId;
  }

  public String getEmail() {
    return email;
  }

  public void setEmail(String email) {
    this.email = email;
  }

  public String getUserName() {
    return userName;
  }

  public void setUserName(String userName) {
    this.userName = userName;
  }

  public String getFullName() {
    return fullName;
  }

  public void setFullName(String fullName) {
    this.fullName = fullName;
  }

  public String getPassword() {
    return password;
  }

  public void setPassword(String password) {
    this.password = password;
  }

  public Address getAddress() {
    return address;
  }

  public void setAddress(Address address) {
    this.address = address;
  }

  public String getRoles() {
    return roles;
  }

  public void setRoles(String roles) {
    this.roles = roles;
  }
  
}
