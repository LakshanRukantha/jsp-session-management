<%-- 
    Document   : login
    Created on : Mar 1, 2024, 10:35:13 AM
    Author     : Lakshan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="jakarta.servlet.http.HttpSession" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <jsp:include page="headers.jsp" />
        <title>Sign In</title>
    </head>
    <body>
        <jsp:include page="nav.jsp" />
        <div class="container">
        <%
            HttpSession authSession = request.getSession();
            if(authSession.getAttribute("user") != null){
                response.sendRedirect("profile.jsp");
            }
            String Error = request.getParameter("error");
            if(Error != null){
                out.print("<div class='alert alert-danger'>"+ Error +"</div>");
            }
        %>
        <form class="form" action="LoginServlet" method="POST">
            <h1 class="title">Sign In</h1>
            <div class="input-sec">
                <label for="username">Username</label>
                <input class="form-control" type="text" id="username" name="uname" placeholder="Enter username..."/>
            </div>
            <div class="input-sec">
                <label for="username">Password</label>
                <input class="form-control" type="password" id="password" name="pass" placeholder="Enter password..."/>
            </div>
            <div class="btn-wrapper">
                <input class="btn btn-danger button" type="reset" value="Cancel"/>
                <input class="btn btn-primary button" type="submit" value="Submit"/>
            </div>
        </form>
        </div>
    </body>
</html>
