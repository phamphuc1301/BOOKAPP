package edu.vn.models;

import java.io.Serializable;
import java.sql.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;

import org.hibernate.annotations.Check;

@Entity
@Check(constraints = "status = 'Publisher' or status = 'Draft' "
    + "AND rate between 1 and 5")
public class Article implements Serializable {

  private static final long serialVersionUID = 1L;
  @Id
  private String articleId;
  private String title;
  private Date date;
  @Column(name = "status")
  private String status;
  @Column(name = "rate")
  private int rate;
  @ManyToOne
  private Book book;
  @OneToOne
  private Users authorOfArticle;

  public String getArticleId() {
    return articleId;
  }

  public void setArticleId(String articleId) {
    this.articleId = articleId;
  }

  public String getTitle() {
    return title;
  }

  public void setTitle(String title) {
    this.title = title;
  }

  public Date getDate() {
    return date;
  }

  public void setDate(Date date) {
    this.date = date;
  }

  public String getStatus() {
    return status;
  }

  public void setStatus(String status) {
    this.status = status;
  }

  public Book getBook() {
    return book;
  }

  public void setBook(Book book) {
    this.book = book;
  }

  public Users getAuthorOfArticle() {
    return authorOfArticle;
  }

  public void setAuthorOfArticle(Users authorOfArticle) {
    this.authorOfArticle = authorOfArticle;
  }

  public Article(String articleId, String title, Date date, String status,
      Book book, Users authorOfArticle) {
    super();
    this.articleId = articleId;
    this.title = title;
    this.date = date;
    this.status = status;
    this.book = book;
    this.authorOfArticle = authorOfArticle;
  }

  public Article() {
    super();
  }

}
