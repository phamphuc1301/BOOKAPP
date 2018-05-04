package edu.vn.models;

import java.io.Serializable;
import javax.persistence.Column;
import javax.persistence.Entity;
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
  @OneToOne
  private Users user;
  @Column(columnDefinition="ntext")
  private String content;
  @ManyToOne
  private Book book;

  public Comment(Users user, String content, Book book) {
    super();
    this.user = user;
    this.content = content;
    this.book = book;
  }

  public int getCommentId() {
    return commentId;
  }

  public void setCommentId(int commentId) {
    this.commentId = commentId;
  }

  public Users getUser() {
    return user;
  }

  public void setUser(Users user) {
    this.user = user;
  }

  public String getContent() {
    return content;
  }

  public void setContent(String content) {
    this.content = content;
  }

  public Book getBook() {
    return book;
  }

  public void setBook(Book book) {
    this.book = book;
  }

}
