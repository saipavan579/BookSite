<!DOCTYPE html>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<html>
    <head>
        <title>Pavan's Book Store</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width">
        <link rel="stylesheet" type="text/css" href="style.css">   
    </head>
    
    <body>
        <div class="img_container">
            <a href="index.jsp"><acronym title="Pavan's Book Store"> <img alt="sorry!!!!" src="images/header.jpg" ></acronym></a>     
        </div>

        <div class="links_container">             
            <span class="links"><a href='index.jsp'>Home</a></span>
            <span class="links"><a href='search.jsp'>Search Book</a></span>
            <span class="links"><a href='allbooks.jsp'>All books</a></span>                  
            <span class="links"><a href='contact.jsp'>Contact us</a></span>
            <span class="links">login</span>
        </div>
        <div class="form_container">
            
            <p>usernames are "saipavan" and "raju". Password for both is 12345.</p>
            <%Cookie cookie[] = request.getCookies();
                for (int i = 0; i < cookie.length; i++){
                    //if(cookie[i].getName().equals("Error")){
                        out.print(cookie[i].getName( ) + ",  " + cookie[i].getValue( )+" <br/>");
                      //  cookie[i].setMaxAge(-1);
                   // }
                }%>
                
            <form method="post" action=<%=response.encodeURL("LoginServlet")%>>
                Username:<input type="text" name="username"/><br/><br/>
                Password:<input type="password" name="password"/><br/><br/>
                <input type="submit" value="submit"/><br/>
            </form>
                
        </div>
    </body>
</html>
