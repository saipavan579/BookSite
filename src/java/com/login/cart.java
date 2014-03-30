package com.login;

import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class cart extends HttpServlet {

    int count = 0;
    String bookOrdered[] = new String[100];
    String users[] = new String[100];
    private Connection DBConnection;
    ResultSet rs;
    Statement st;
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        HttpSession sess = request.getSession(false); 
        String uname = (String)sess.getAttribute("uname");
        String msg="";
        String book = request.getParameter("book");   
        
        String qry = "insert into books values('" +uname+ "','"+book+"')";
        
        try{
            DBConnection = ConnMgr.getConnection();
            st = (Statement)DBConnection.createStatement();
            int i = st.executeUpdate(qry);
            if(i<0){
                msg = "Sorry!!! We are not able to order the book for you";
            }
        }
        catch(SQLException theException){
            System.out.println(theException);
        }
        
        qry = "select username from books where bookName='"+book+"'";
        
        try{
            st = (Statement)DBConnection.createStatement();
            this.rs = st.executeQuery(qry);
            boolean more;
            while(more = rs.next())
            if(!more){
                msg = "No other user has ordered same book";
            }
            else{
                String email = rs.getString("username");
                if(!uname.equals(email))
                msg += email + " has ordered the same book<br>";
            }
        }
        catch(SQLException theException){
            System.out.println(theException);
        }
        finally{
            if(this.rs!=null){
                try{this.rs.close();}
                catch(SQLException e){this.rs = null;}
            }
            if(st!=null){
                try{st.close();}
                catch(SQLException e){st = null;}
            }
            if(DBConnection != null){
                try{DBConnection.close();}
                catch(SQLException e){}
            }
        }
        
        sess.setAttribute("msg",msg);
        RequestDispatcher di = request.getRequestDispatcher("/Acknowledge.jsp");
        di.forward(request, response);
    }
}

