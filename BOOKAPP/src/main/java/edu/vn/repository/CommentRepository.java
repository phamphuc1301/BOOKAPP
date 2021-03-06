package edu.vn.repository;

import java.util.List;

import edu.vn.models.Article;
import edu.vn.models.Comment;

public interface CommentRepository {
  void save(Comment comment);

  List<Comment> findByArticle(Article article);
  
  void save(Comment comment,String userName);
  
  List<Comment> findAll();
}
