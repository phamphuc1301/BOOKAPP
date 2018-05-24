package edu.vn.models;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;

@Entity

public class Comment implements Serializable {

  private static final long serialVersionUID = 1L;
  @Id
  @Column(name = "comment_id", nullable = false)
  @GeneratedValue(strategy = GenerationType.IDENTITY)
  private int commentId;
  private String email;
  @Column(columnDefinition="nvarchar(255)")
  private String userName;
  @OneToOne(fetch = FetchType.EAGER)
  private Users user;
  @Column(columnDefinition="ntext")
  private String content;
  @ManyToOne(cascade = CascadeType.PERSIST, fetch = FetchType.EAGER)
  private Article article;
  private Date date;
  public Comment() {
    super();
  }

  public Comment(int commentId, String email, String userName, Users user,
      String content, Article article) {
    super();
    this.commentId = commentId;
    this.email = email;
    this.userName = userName;
    this.user = user;
    this.content = content;
    this.article = article;
  }

  public Comment(String email, String userName, Users user, String content,
      Article article) {
    super();
    this.email = email;
    this.userName = userName;
    this.user = user;
    this.content = content;
    this.article = article;
  }

  public Comment(String email, String userName, String content) {
    super();
    this.email = email;
    this.userName = userName;
    this.content = content;
  }

  /**
   * @return the date
   */
  public Date getDate() {
    return date;
  }

  /**
   * @param date the date to set
   */
  public void setDate(Date date) {
    this.date = date;
  }

  /**
   * @return the commentId
   */
  public int getCommentId() {
    return commentId;
  }

  /**
   * @param commentId the commentId to set
   */
  public void setCommentId(int commentId) {
    this.commentId = commentId;
  }

  /**
   * @return the email
   */
  public String getEmail() {
    return email;
  }

  /**
   * @param email the email to set
   */
  public void setEmail(String email) {
    this.email = email;
  }

  /**
   * @return the userName
   */
  public String getUserName() {
    return userName;
  }

  /**
   * @param userName the userName to set
   */
  public void setUserName(String userName) {
    this.userName = userName;
  }

  /**
   * @return the user
   */
  public Users getUser() {
    return user;
  }

  /**
   * @param user the user to set
   */
  public void setUser(Users user) {
    this.user = user;
  }

  /**
   * @return the content
   */
  public String getContent() {
    return content;
  }

  /**
   * @param content the content to set
   */
  public void setContent(String content) {
    this.content = content;
  }

  /**
   * @return the article
   */
  public Article getArticle() {
    return article;
  }

  /**
   * @param article the article to set
   */
  public void setArticle(Article article) {
    this.article = article;
  }


}
