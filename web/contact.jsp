<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->

<html>
    <head>
        <title>Pavan's Book Store</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width">
        <link rel="stylesheet" type="text/css" href="style.css">   
    </head>
    
    <body>
        <div class="img_container">
            <a href="index.jsp"> <img alt="sorry!!!!" src="images/header.jpg" ></a>     
        </div>

        <div class="links_container">             
            <span class="links"><a href="index.jsp">Home</a></span>
            <span class="links"><a href='search.jsp'>Search Book</a></span>
            <span class="links"><a href='allbooks.jsp'>All books</a></span>                  
            <span class="links">Contact us</span>
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
            <p>email : psp.pavan.sai@gmail.com</p>
        </div> 
    </body>
</html>

