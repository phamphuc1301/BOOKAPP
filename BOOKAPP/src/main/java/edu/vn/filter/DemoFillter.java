package edu.vn.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import edu.vn.models.Users;

public class DemoFillter implements Filter {

  @Override
  public void init(FilterConfig filterConfig) throws ServletException {
    // TODO Auto-generated method stub
    
  }

  @Override
  public void doFilter(ServletRequest request, ServletResponse response,
      FilterChain chain) throws IOException, ServletException {
    if (request instanceof HttpServletRequest) {
      String url = ((HttpServletRequest) request).getRequestURL().toString();
      System.out.println(url);
      if (url.matches(".*(css|jpg|png|gif|js|appLogin|woff2|woff|svg)")) {
        System.out.println("INSIDE METHOD");
        chain.doFilter(request, response);
      } else {
        HttpSession session = ((HttpServletRequest) request).getSession();
        Users user = (Users) session.getAttribute("currentUser");
        System.out.println(user);
        if (user == null) { 
          RequestDispatcher requestDispatcher = request.getRequestDispatcher(""
              + "/views/login.jsp");
          requestDispatcher.forward(request, response);
        } else {
          chain.doFilter(request, response);
        }
      }
    }
  }

  @Override
  public void destroy() {
    // TODO Auto-generated method stub
    
  }
  
}
