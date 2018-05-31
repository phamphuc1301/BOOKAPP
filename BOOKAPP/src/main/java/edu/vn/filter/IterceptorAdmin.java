package edu.vn.filter;

import java.util.Collection;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;
public class IterceptorAdmin extends HandlerInterceptorAdapter {

  @Override
  public boolean preHandle(HttpServletRequest request,
      HttpServletResponse response, Object handler) throws Exception {
    String url = request.getRequestURL().toString();
    @SuppressWarnings("unchecked")
    Collection<SimpleGrantedAuthority> authorities = (Collection<SimpleGrantedAuthority>)SecurityContextHolder.getContext().getAuthentication().getAuthorities();
    if (url.matches(".*(css|jpg|png|gif|js|dashboard|woff2|woff|svg)")) {
      return true;
    }
    if("ROLE_ADMIN".equals(authorities.toArray()[0].toString())) {
      response.sendRedirect("/BOOKAPP/admin/dashboard");
    } else {
      request.getRequestDispatcher("/views/admin/adminlogin.jsp").forward(request, response);
    }
    return false;
  }

  @Override
  public void postHandle(HttpServletRequest request,
      HttpServletResponse response, Object handler, ModelAndView modelAndView)
      throws Exception {
    super.postHandle(request, response, handler, modelAndView);
  }


  @Override
  public void afterCompletion(HttpServletRequest request,
      HttpServletResponse response, Object handler, Exception ex)
      throws Exception {
    super.afterCompletion(request, response, handler, ex);
  }
  
}
