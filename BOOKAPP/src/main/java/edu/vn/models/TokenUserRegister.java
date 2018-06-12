package edu.vn.models;

import java.util.Calendar;
import java.util.Date;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToOne;

import com.sun.istack.internal.NotNull;

@Entity
public class TokenUserRegister {
  @Id
  @GeneratedValue(strategy = GenerationType.IDENTITY)
  private int id;
  @Column(unique = true)
  @NotNull
  private String token;
  @OneToOne(cascade = CascadeType.PERSIST)
  private Users user;
  private Date expiredDate;

  public TokenUserRegister(String token, Users user) {
    super();
    this.token = token;
    this.user = user;
    Calendar calendar = Calendar.getInstance();
    calendar.setTime(new Date());
    calendar.add(Calendar.DATE, 1);
    this.expiredDate = calendar.getTime();
  }

  /**
   * @return the token
   */
  public String getToken() {
    return token;
  }

  /**
   * @param token
   *          the token to set
   */
  public void setToken(String token) {
    this.token = token;
  }

  /**
   * @return the user
   */
  public Users getUser() {
    return user;
  }

  /**
   * @param user
   *          the user to set
   */
  public void setUser(Users user) {
    this.user = user;
  }

  /**
   * @return the expiredDate
   */
  public Date getExpiredDate() {
    return expiredDate;
  }

  public TokenUserRegister() {
    super();
  }

}
