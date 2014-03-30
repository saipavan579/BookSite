<!DOCTYPE html>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<html>
    <head>
        <title>Thank you</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width">
        <link rel="stylesheet" type="text/css" href="style.css">   
        <script type="text/javascript" src="getstates.js"></script>
    </head>
    
    <body>
        <div class="img_container">
            <a href="index.jsp"><acronym title="Pavan's Book Store"> <img alt="sorry!!!!" src="images/header.jpg" ></acronym></a>     
        </div>

        <div class="links_container">             
            <span class="links"><a href="index.jsp">Home</a></span>
            <span class="links"><a href='search.jsp'>Search Book</a></span>
            <span class="links"><a href='allbooks.jsp'>All books</a></span>                  
            <span class="links"><a href='contact.jsp'>Contact us</a></span>
            <span class="links"><a href='logout.jsp'>logout</a></span>
        </div>
    
        <div class="form_container">             
        <center>
             <% HttpSession sess = request.getSession(false);
                String uname = (String)sess.getAttribute("uname");
                String msg = (String)sess.getAttribute("msg"); %>
                <h2><%=msg%></h2>
                
            <form method="POST" id="thankyou">
                hello <%=" "+uname+" "%>                //Enter country name as INDIA//
                Enter Country  :<input name="country" id="country" type="text" onchange="getStates();"><br>
                Enter State    :<select name="state" id="state" ><option>-----------</option></select>
                <input type="submit" value="Submit" name="Submit" onclick="thankyou()"  />
            </form>
                
        </center> 
        </div>
    </body>
</html>