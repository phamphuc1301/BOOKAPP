package edu.vn.utils;

import java.io.IOException;

import org.jsoup.Connection;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;

public class JsoupTest {
  public static void main(String[] args) throws IOException {
  //connect to the website
    Connection connection = Jsoup.connect("https://reviewsach.net");
    
    //specify user agent
    connection.userAgent("Mozilla/5.0");
    
    //get the HTML document
    Document doc = connection.get();

    Elements link = doc.select("a[href]");
    for(Element value : link) {
      String check = String.valueOf(value);
      if(Constant.CC.contains("https://reviewsach.net")) {
        Document doc2 = Jsoup.connect(String.valueOf(value)).get();
        String title = doc2.title();
        System.out.println(title);
      }
    }
  }
}
