<%-- 
    Document   : nav
    Created on : Mar 1, 2024, 10:35:51 AM
    Author     : Lakshan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="jakarta.servlet.http.HttpSession" %>
<nav class="nav shadow-sm">
  <div class="container nav-container">
    <h1 class="nav-title">
      <a href="index.jsp" class="text-black text-decoration-none">CyberX</a>
    </h1>
    <ul class="right-content">
    <% HttpSession navSession = request.getSession();
        if(navSession.getAttribute("user") != null){
            out.print("<li class='btn btn-primary'><a href='profile.jsp' class='text-white text-decoration-none'>Profile</a></li>");
            out.print("<li class='btn btn-primary'><a href='LogoutServlet' class='text-white text-decoration-none'>Sign Out</a></li>");
        }else{
            out.print("<li class='btn btn-primary'><a href='login.jsp' class='text-white text-decoration-none'>Sign In</a></li>");
            out.print("<li class='btn btn-primary'><a href='#' class='text-white text-decoration-none'>Sign Up</a></li>");
        } %>
    </ul>
  </div>
</nav>

