package edu.vn.utils;

import java.util.Locale;

import org.springframework.context.ApplicationEvent;

import edu.vn.models.Users;
public class OnRegistrationCompleteEvent extends ApplicationEvent {
  /**
   * 
   */
  private static final long serialVersionUID = 1L;
  private Locale locale;
  private Users users;
  public OnRegistrationCompleteEvent(
      Locale locale, Users users) {
    super(users);
    this.locale = locale;
    this.users = users;
  }
  /**
   * @return the locale
   */
  public Locale getLocale() {
    return locale;
  }
  /**
   * @param locale the locale to set
   */
  public void setLocale(Locale locale) {
    this.locale = locale;
  }
  /**
   * @return the users
   */
  public Users getUsers() {
    return users;
  }
  /**
   * @param users the users to set
   */
  public void setUsers(Users users) {
    this.users = users;
  }

}
