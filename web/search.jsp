<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head>
        <title>Pavan's Book Store</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width">
        <link rel="stylesheet" type="text/css" href="style.css">
        <script type="text/javascript" src="loadbooks.js"></script>
        <script type="text/javascript" src="clear.js"></script>
    </head>

    <body onload="fillform()">
        <div class="img_container">
            <a href="index.jsp"><acronym title="Pavan's Book Store" > <img alt="sorry!!!!" src="images/header.jpg" ></acronym></a>     
        </div>

        <div class="links_container">             
            <span class="links"><a href='index.jsp'>Home</a></span>
            <span class="links">Search Book</span>
            <span class="links"><a href='allbooks.jsp'>All books</a></span>                  
            <span class="links"><a href='contact.jsp'>Contact us</a></span>
            <span class="links">
                <%HttpSession sess = request.getSession(false);
                if(sess.getAttribute("uname") == null){%>
                    <a href='login.jsp'>login</a><%}
                else{
                    String uname = (String)sess.getAttribute("uname");%>
                    hello <%=" "+uname+" "%>
                    <a href='logout.jsp'>logout</a><%
                }%>
        </div>
        
        <div class="form_container">
            <form>
                <label for="searchitem">Search by:</label>
                <select id="choose" onchange="fillform()">
                    <option value="Title">Title</option>
                    <option value="Author">Author</option>
                    <option value="Category">Category</option>
                </select>
                <input id="text" type="text" name="searchitem" onclick="cleardata()" required/>
                <input type="image" src="images/search.jpg" alt="Submit" width="24" height="24" id="searchitem">
            </form>
        </div>
    </body>
</html>
