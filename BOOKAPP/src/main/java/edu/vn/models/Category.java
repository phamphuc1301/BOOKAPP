package edu.vn.models;

import java.io.Serializable;
import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Category implements Serializable {

  private static final long serialVersionUID = 1L;
  @Id
  private int categoryId;
  private String name;
  
  public Category(int categoryId, String name) {
    super();
    this.categoryId = categoryId;
    this.name = name;
  }
  
  public Category() {
    super();
  }
  
  public int getCategoryId() {
    return categoryId;
  }
  
  public void setCategoryId(int categoryId) {
    this.categoryId = categoryId;
  }
  
  public String getName() {
    return name;
  }
  
  public void setName(String name) {
    this.name = name;
  }

}
