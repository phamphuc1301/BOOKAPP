package edu.vn.models;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.NamedNativeQueries;
import javax.persistence.NamedNativeQuery;
import javax.persistence.OneToOne;

import org.hibernate.annotations.Check;

@Entity
@Check(constraints = "status = 'Publisher' or status = 'Draft' "
    + "AND rate between 1 and 5")
@NamedNativeQueries({
  @NamedNativeQuery( name = "ar_getlist", query = "CALL usp_getArticle(:action)")
})
public class Article implements Serializable {

  private static final long serialVersionUID = 1L;
  @Id
  @GeneratedValue(strategy=GenerationType.IDENTITY)
  private int articleId;
  @Column(columnDefinition = "ntext")
  private String title;
  private Date date;
  @Column(name = "status")
  private String status;
  @Column(name = "rate")
  private int rate;
  @Column(columnDefinition="nvarchar(255)")
  private String images;
  @Column(columnDefinition = "ntext")
  private String content;
  @ManyToOne(cascade=CascadeType.ALL)
  private Book book;
  @OneToOne(cascade=CascadeType.ALL)
  private Users authorOfArticle;
  @Column(columnDefinition="nvarchar(60)")
  private String type;
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
   * @return the images
   */
  public String getImages() {
    return images;
  }

  /**
   * @param images the images to set
   */
  public void setImages(String images) {
    this.images = images;
  }
  

  /**
   * @return the type
   */
  public String getType() {
    return type;
  }

  /**
   * @param type the type to set
   */
  public void setType(String type) {
    this.type = type;
  }

  public Article() {
    super();
  }



  public Article(int articleId, String title, Date date, String status,
      int rate, String images, String content, Book book, Users authorOfArticle,
      String type) {
    super();
    this.articleId = articleId;
    this.title = title;
    this.date = date;
    this.status = status;
    this.rate = rate;
    this.images = images;
    this.content = content;
    this.book = book;
    this.authorOfArticle = authorOfArticle;
    this.type = type;
  }

  /* (non-Javadoc)
   * @see java.lang.Object#toString()
   */
  @Override
  public String toString() {
    return "Article [articleId=" + articleId + ", title=" + title + ", date="
        + date + ", status=" + status + ", rate=" + rate + ", content="
        + content + ", book=" + book + ", authorOfArticle=" + authorOfArticle
        + "]";
  }

}