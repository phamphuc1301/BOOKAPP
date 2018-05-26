package edu.vn.models;

import java.io.Serializable;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToOne;

import org.hibernate.annotations.Check;

@Entity
@Check(constraints = "enabled = 0 or enabled = 1")
public class Users implements Serializable {

  private static final long serialVersionUID = 1L;
  @Id
  @GeneratedValue(strategy = GenerationType.IDENTITY)
  private int userId;
  private String email;
  @Column(unique = true)
  private String userName;
  private String fullName;
  private String password;
  @OneToOne(cascade = CascadeType.ALL)
  private Address address;
  private String roles;
  private int enabled;
  private String images;

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

  /**
   * @return the images
   */
  public String getImages() {
    return images;
  }

  /**
   * @param images
   *          the images to set
   */
  public void setImages(String images) {
    this.images = images;
  }

  public Users(int userId, String email, String userName, String fullName,
      String password, Address address, String roles, int enabled,
      String images) {
    super();
    this.userId = userId;
    this.email = email;
    this.userName = userName;
    this.fullName = fullName;
    this.password = password;
    this.address = address;
    this.roles = roles;
    this.enabled = enabled;
    this.images = images;
  }

  public Users(String userName, String password) {
    super();
    this.userName = userName;
    this.password = password;
  }

  public Users() {
    super();
  }

  public int getEnabled() {
    return enabled;
  }

  public void setEnabled(int enabled) {
    this.enabled = enabled;
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
