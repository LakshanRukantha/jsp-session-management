<%-- 
    Document   : profile
    Created on : Mar 1, 2024, 10:35:01 AM
    Author     : Lakshan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.Date" %>
<%@page import="jakarta.servlet.http.HttpSession" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <jsp:include page="headers.jsp" />
        <title>Profile</title>
    </head>
    <body>
        <jsp:include page="nav.jsp" />
        <div class="container">
        <%
        HttpSession userSession = request.getSession(false);
        
        if(userSession != null && userSession.getAttribute("user") != null) {
            String username = (String) userSession.getAttribute("user");
            out.print("<div class='alert alert-success alert-dismissible fade show'>Login Success 🎉<button type='button' class='btn-close' data-bs-dismiss='alert' aria-label='Close'></button></div>");
            out.println("<h1>Welcome, <span class='fw-bold'>" + username + "</span></h1>.");
            
            out.println(
                "<H1 ALIGN=\"CENTER\">" + "MORE INFO" + "</H1>\n" +
                "<H2>Information on Your Session:</H2>\n" +
                "<TABLE BORDER=1 ALIGN=CENTER>\n" +
                "<TR BGCOLOR=\"#FFAD00\">\n" +
                "  <TH>Info Type<TH>Value\n" +
                "<TR>\n" +
                "  <TD>ID\n" +
                "  <TD>" + session.getId() + "\n" +
                "<TR>\n" +
                "  <TD>Creation Time\n" +
                "  <TD>" + new Date(session.getCreationTime()) + "\n" +
                "<TR>\n" +
                "  <TD>Time of Last Access\n" +
                "  <TD>" + new Date(session.getLastAccessedTime()) + "\n" +
                "<TR>\n" +
                "</TABLE>\n");
            
            }else{
                response.sendRedirect("login.jsp");
            }
        %>
        </div>
    </body>
</html>

