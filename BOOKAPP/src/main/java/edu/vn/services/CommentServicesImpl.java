package edu.vn.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import edu.vn.models.Article;
import edu.vn.models.Comment;
import edu.vn.repository.CommentRepository;

@Service
public class CommentServicesImpl implements CommentServices {
  @Autowired
  private CommentRepository commentRepository;

  @Override
  public void save(Comment comment) {
    commentRepository.save(comment);
  }

  @Override
  public List<Comment> findByArticle(Article article) {
    return commentRepository.findByArticle(article);
  }


  @Override
  public void save(Comment comment, String userName) {
    commentRepository.save(comment, userName);
  }

  /* (non-Javadoc)
   * @see edu.vn.services.CommentServices#findAll(edu.vn.models.Article)
   */
  @Override
  public List<Comment> findAll() {
    return commentRepository.findAll();
  }
  
  
}
