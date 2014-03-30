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
            <a href="index.jsp"><acronym title="Pavan's Book Store"> <img alt="sorry!!!!" src="images/header.jpg" ></acronym></a>     
        </div>
 
                <%HttpSession sess = request.getSession(false);
                sess.invalidate();%>
                
        <div class="links_container">             
            <span class="links"><a href="index.jsp">Home</a></span>
            <span class="links"><a href='search.jsp'>Search Book</a></span>
            <span class="links"><a href='allbooks.jsp'>All books</a></span>                  
            <span class="links"><a href='contact.jsp'>Contact us</a></span>
            <span class="links"><a href='login.jsp'>login</a></span>
        </div>
    
        <div class="data_container">
            <p><strong>Welcome</strong> to pavan's online book stores.
            <p> Here you can buy books online or you can check the availability of our stores in the various places of our city
                   If you don't find a book you can request for the book which you are looking for.</p>
        </div> 
    </body>
</html>

