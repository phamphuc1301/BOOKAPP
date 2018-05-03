package edu.vn.utils;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.jsoup.Connection;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import edu.vn.models.Address;
import edu.vn.models.Article;
import edu.vn.models.Book;
import edu.vn.models.Users;
import edu.vn.repository.ArticleRepository;
import edu.vn.repository.ArticleRepositoryImpl;
@Repository
public class JsoupTest {
  @Autowired
  private static SessionFactory sessionFactory;
  public List<String> getList() throws IOException {
    List<String> listUrl = new ArrayList<>();
    Connection connection = null;
    try {
      connection = Jsoup.connect("https://reviewsach.net/trinh-tham/");
      connection.userAgent("Mozilla/5.0");
      Document doc = connection.get();
      Elements elements = doc.select("a[href]");
      for (Element element : elements) {
        String url = element.attr("href");
        if (url.contains("https://reviewsach.net")) {
          listUrl.add(url);
        }
      }
    } finally {

    }
    return listUrl;
  }
  
  public List<Article> listAllArticle() throws IOException {
    List<String> listUrl = getList();
    List<Article> listArticle = new ArrayList<>();
    SimpleDateFormat formatter = new SimpleDateFormat("MMM dd,yyyy");
    try {
      System.out.println("URL CC"+listUrl.get(listUrl.size()-1));
      for (int i = 0; i<listUrl.size() ; i++) {
        Article article = new Article();
        Connection connection = Jsoup.connect(listUrl.get(i));
        connection.userAgent("Mozilla/5.0");
        Document doc = connection.get();
        String content = doc.select(".td-ss-main-content").text();
//        String date = doc.select(".entry-date.updated.td-module-date").text();
//        article.setDate(formatter.parse(date));
        article.setStatus("Publisher");
        article.setRate(4);
        String title = doc.select(".entry-title").text();
        article.setBook(new Book(title));
        Users user = new Users("phamphuc224@gmail.com", "phamphuc", "pham van phuc", "123", new Address(), "ADMIN");
        article.setAuthorOfArticle(user);
        if(content.contains("[")) {
          article.setTitle(content);
          listArticle.add(article);
        }
        
      }
    } catch (Exception ex) {
      ex.printStackTrace();
    }
   return listArticle;
  }
  public static void main(String[] args) throws IOException, ParseException {
    JsoupTest jTest = new JsoupTest();
    List<Article> listArticle = jTest.listAllArticle();
    ArticleRepository articleRepository = new ArticleRepositoryImpl();
    articleRepository.save(listArticle);
    }
}