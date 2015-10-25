<%-- 
    Document   : UsersPics
    Created on : Sep 24, 2014, 2:52:48 PM
    Author     : Administrator
--%>

<%@page import="java.util.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="uk.ac.dundee.computing.aec.instagrim.stores.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Instagrim</title>
        <link rel="stylesheet" type="text/css" href="/Instagrim/Styles.css" />
    </head>
    <body>
        <header>
        
        <h1>InstaGrim ! </h1>
        <h2>Your world in Black and White</h2>
        </header>
        
        <nav>
            <ul>
                <li class="nav"><a href="/Instagrim/upload.jsp">Upload</a></li>
                <li class="nav"><a href="/Instagrim/Images/majed">Sample Images</a></li>
            </ul>
        </nav>
 
        <article>
            <h3>Your Pics</h3>
        <%
            java.util.LinkedList<Pic> lsPics = (java.util.LinkedList<Pic>) request.getAttribute("Pics");
            if (lsPics == null) {
        %>
        <p>No Pictures found</p>
        <%
        } else {
            Iterator<Pic> iterator;
            iterator = lsPics.iterator();
            while (iterator.hasNext()) {
                Pic p = (Pic) iterator.next();

        %>
        <a href="/Instagrim/Image/<%=p.getSUUID()%>" ><img src="/Instagrim/Thumb/<%=p.getSUUID()%>"></a><br/>
        <%
            java.util.LinkedList<Comment> lsCom = (java.util.LinkedList<Comment>) request.getAttribute("Comments");
            if (lsCom == null) {
         %>
        <p>No Comments for this Picture </p>
        <%
            } else {
                Iterator<Comment> iteratorC;
                iteratorC = lsCom.iterator();
                while (iteratorC.hasNext()) {
                    Comment c = (Comment) iteratorC.next();
                    <a href = "/Instgrim/Image/Comments/<%=c.getSUUID()%>" ><src = "/Instagrim/Image/Comments/<%=c.getComment()%>"></a>
                }
                 
            }
        <article>
            <h4>Login</h4>
            <form method="POST"  action="Make Comment">
                <ul>
                    <li>Comment <input type="text" name="comment"></li>
                </ul>
                <br/>
                <input type="submit" value="Make Comment"> 
            </form>
        </article>
        
        <%

            }
            }
        %>
        </article>
        <footer>
            <ul>
                <li class="footer"><a href="/Instagrim">Home</a></li>
            </ul>
        </footer>
    </body>
</html>
