<!DOCTYPE html>
<html>
    <head>
        <title>Pavan's Book Store</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width">
        <link rel="stylesheet" type="text/css" href="style.css">   
    </head>
    
    <body>
        <div class="img_container">
            <a href="index.jsp"><abbr title="Pavan's Book Store"> <img alt="sorry!!!!" src="images/header.jpg" ></abbr></a>     
        </div>

        <div class="links_container">             
            <span class="links">Home</span>
            <span class="links"><a href='search.jsp'>Search Book</a></span>
            <span class="links"><a href='allbooks.jsp'>All books</a></span>                  
            <span class="links"><a href='contact.jsp'>Contact us</a></span>
            <span class="links">
                <%HttpSession sess = request.getSession(false);
                if(sess.getAttribute("uname") == null){%>
                    <a href='login.jsp'>login</a><%
                }
                else{%>
                    <a href='logout.jsp'>logout</a><%
                }%>
            </span>
        </div>
        
        <div class="form_container">
            Hello <%String uname = (String)sess.getAttribute("uname"); %>
            <%=uname%> "/// username got using sessions"
            <%sess.setAttribute("uname", uname);%>
            
            <form method="POST" action=<%=response.encodeURL("cart")%>>
                Enter book name      :<input name="book" type="text"><br>
                Enter Author name    :<input name="author" type="text"><br>
                Price willing to pay :<input name="price" type="number"><br>
                <input type="submit" value="Submit" name="Submit" />
            </form>
        </div>
        
       
        
    </body>
</html>
