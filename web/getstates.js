/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

function getStates(){
    var request;
    var country = document.getElementById("country");
    var countryName = country.value;
    
    request = new XMLHttpRequest();
    request.open("POST","states?country="+countryName,true);
    
    request.onreadystatechange = function(){
        if(request.readyState == 4)
        {
            var i=0;
            var states;
            var res = request.responseXML;
            var root = res.getElementsByTagName("state");
           
            for(i=0;i<root[0].childNodes.length;i++)
                states += "<option>"+root[0].childNodes[i].firstChild.nodeValue+"</option>";
            
            document.getElementById("state").innerHTML = states;
        }
        if(request.readyState == 3)
            document.getElementById("state").innerHTML = "Processing...";
        if(request.readyState == 2)
            document.getElementById("state").innerHTML = "Loaded";
        if(request.readyState == 1)
            document.getElementById("state").innerHTML = "Loading...";
    
    }
    request.send(null);
}
function thankyou(){
            document.getElementById("thankyou").innerHTML = "Thankyou";          
}
