package edu.vn.utils;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.jsoup.Connection;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;
import org.springframework.stereotype.Repository;

import edu.vn.models.Article;
import edu.vn.models.Book;
import edu.vn.models.Users;
@Repository
public class JsoupTest2 {
  public static List<String> getLink() throws IOException {
    ArrayList<String> listUrl = new ArrayList<>();
    ArrayList<String> rootUrl = new ArrayList<>();
    rootUrl.add("https://reviewsach.net/trinh-tham/");
    rootUrl.add("https://reviewsach.net/trinh-tham/page/2/");
    rootUrl.add("https://reviewsach.net/sach-kinh-te/");
    rootUrl.add("https://reviewsach.net/van-hoc/");
    rootUrl.add("https://reviewsach.net/van-hoc/page/2/");
    for (String value : rootUrl) {
      Connection conn = Jsoup.connect(value);
      conn.userAgent("Mozilla/5.0");
      Document doc = conn.get();
      Elements elements = doc.select(".td-main-content-wrap.td-container-wrap .td-module-thumb a");
      for (Element element : elements) {
        String url = element.attr("href");
        listUrl.add(url);
      }
    }
    return listUrl;
  }
  public static List<Article> getAllArticle() throws IOException, ParseException {
    Article article = null;
    SimpleDateFormat simpleDateFormat = new SimpleDateFormat("MMMMM dd, yyyy");
    Users users = new Users("phamphuc","123");
    List<Article> listArticle = new ArrayList<>();
   for (String value : getLink()) {
     article = new Article();
     Connection conn = Jsoup.connect(value);
     conn.userAgent("Mozilla/5.0");
     Document doc = conn.get();
     String title = doc.select(".td-post-title h1.entry-title").text();
     article.setTitle(title);
     String content = doc.select("article .td-post-content").text();
     article.setContent(content);
     String urlImg = doc.select("article .td-post-content img").attr("src");
     article.setImages(urlImg);
     String date = doc.select(".td-post-date.td-post-date-no-dot time.entry-date.updated.td-module-date").text();
     Date date2 = simpleDateFormat.parse(date);
     article.setDate(date2);
     String type = doc.select(".entry-crumb").text();
     type = type.substring(5);
     article.setType(type);
     article.setRate(4);
     article.setStatus("Publisher");
     Book book = new Book(title);
     article.setBook(book);
     users.setImages("https://www.atomix.com.au/user-experience-design/");
     article.setAuthorOfArticle(users);
     listArticle.add(article);
  }
   return listArticle;
  }
  public static void main(String[] args) throws IOException, ParseException {
    for (Article value : getAllArticle()) {
      System.out.println("Noi dung :"+value.getContent());
    }
  }
}