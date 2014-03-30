package com.login;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet(name = "states", urlPatterns = {"/states"})
public class states extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        PrintWriter out = response.getWriter();
        String country = request.getParameter("country");
        String xml = "<?xml version=\"1.0\" encoding=\"UTF-8\" standalone=\"no\" ?>";
        xml += "<state>";
        
        if(country.equals("INDIA")){
            xml += "<name>Andhra Paradesh</name>";
            xml += "<name>Karnataka</name>";
        }
        
        xml += "</state>";
        out.write(xml);
        out.flush();
    }

}
