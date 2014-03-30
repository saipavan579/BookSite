<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
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
        <link rel="stylesheet" type="text/css" href="style.css"/>  
        <script type="text/javascript" src="loadallbooks.js"></script>
    </head>
    
    <body onload="allbooks()">
        
        <div class="img_container">
            <a href="index.jsp"> <img alt="sorry!!!!" src="images/header.jpg" ></a>     
        </div>

        <div class="links_container">             
            <span class="links"><a href='index.jsp'>Home</a></span>
            <span class="links"><a href='search.jsp'>Search Book</a></span>
            <span class="links">All books</span>                  
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
            </span>
        </div>

        <div class="image_container" >
            <table border="1" id="discription" cellpadding="10" width="500" align="center">
                <tr>
                    <td align="center"></td>
                </tr>
                <tr>
                    <td id="prev" align="center">
                        <button type="submit" onclick="prevImage()">Previous</button>
                        <button type="submit" onclick="makeOrder()">order</button>
                        <button type="submit" onclick="nextImage()">Next</button></td>
                </tr>
            </table>
        </div> 
       
    </body>
</html>

