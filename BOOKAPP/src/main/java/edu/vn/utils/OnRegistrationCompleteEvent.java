package edu.vn.utils;

import java.util.Locale;

import org.springframework.context.ApplicationEvent;

import edu.vn.models.Users;
public class OnRegistrationCompleteEvent extends ApplicationEvent {
  /**
   * 
   */
  private static final long serialVersionUID = 1L;
  private String appUrl;
  private Locale locale;
  private Users users;
  public OnRegistrationCompleteEvent(String appUrl,
      Locale locale, Users users) {
    super(users);
    this.appUrl = appUrl;
    this.locale = locale;
    this.users = users;
  }
  /**
   * @return the appUrl
   */
  public String getAppUrl() {
    return appUrl;
  }
  /**
   * @param appUrl the appUrl to set
   */
  public void setAppUrl(String appUrl) {
    this.appUrl = appUrl;
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
