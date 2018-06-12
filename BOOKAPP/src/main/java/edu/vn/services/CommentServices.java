package edu.vn.services;

import java.util.List;

import edu.vn.models.Article;
import edu.vn.models.Comment;

public interface CommentServices {
  void save(Comment comment);

  List<Comment> findByArticle(Article article);
  
  void save(Comment comment,String userName);
  
  List<Comment> findAll();
}
