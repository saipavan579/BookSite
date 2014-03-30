/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


 function fillform()
 {
    var option = document.getElementById("choose");
    if(option.selectedIndex===0)
    {
        var filldata = document.getElementById("text");
        filldata.value = "Enter title";
    }
    if(option.selectedIndex===1)
    {
        var filldata = document.getElementById("text");
        filldata.value = "Enter author name";
    }
    if(option.selectedIndex===2)
    {
        var filldata = document.getElementById("text");
        filldata.value = "Enter category";
    }
}