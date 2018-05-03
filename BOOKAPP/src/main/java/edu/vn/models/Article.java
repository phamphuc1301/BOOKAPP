package edu.vn.models;

import java.io.Serializable;
import java.sql.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;

import org.codehaus.jackson.annotate.JsonSubTypes.Type;
import org.hibernate.annotations.Check;

@Entity
@Check(constraints = "status = 'Publisher' or status = 'Draft' "
    + "AND rate between 1 and 5")
public class Article implements Serializable {

  private static final long serialVersionUID = 1L;
  @Id
  @GeneratedValue(strategy=GenerationType.IDENTITY)
  private int articleId;
  @Column(name="title",columnDefinition ="text")
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

  public int getArticleId() {
    return articleId;
  }
  
  public int getRate() {
    return rate;
  }

  public void setRate(int rate) {
    this.rate = rate;
  }

  public void setArticleId(int articleId) {
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

  public Article(int articleId, String title, Date date, String status,
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

  public Article(int articleId, String title, Date date, String status,
      int rate, Book book, Users authorOfArticle) {
    super();
    this.articleId = articleId;
    this.title = title;
    this.date = date;
    this.status = status;
    this.rate = rate;
    this.book = book;
    this.authorOfArticle = authorOfArticle;
  }
  
}