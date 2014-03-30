
package com.login;

import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class LoginServlet extends HttpServlet{

    private Connection DBConnection;
    ResultSet rs;
    Boolean State;
    
    @Override
    protected void doPost(HttpServletRequest request,HttpServletResponse response)throws ServletException, IOException{
        String msg="";
        RequestDispatcher di;
        Statement st;

        String uname=request.getParameter("username");
        String pwd=request.getParameter("password");

        String qry = "SELECT * FROM users WHERE username='"+uname+"' AND password='"+pwd+"'";
        
        try{
            DBConnection = ConnMgr.getConnection();
            st = (Statement)DBConnection.createStatement();
            this.rs = st.executeQuery(qry);
            boolean more = this.rs.next();
            if(!more){
                State = false;
            }
            else{
                State = true;
            }
        }
        catch (SQLException theException){
            System.out.println(theException);
        }
        finally{
            if(this.rs!=null){
                try{this.rs.close();}
                catch(Exception e){this.rs = null;}
            }
            if(DBConnection != null){
                try{DBConnection.close();}
                catch(Exception e){
                    System.out.println("DB Connection error");
                }
            }
        }
        if(State){ 
            HttpSession sess =request.getSession(true);
            sess.setAttribute("uname", uname);
            di = request.getRequestDispatcher("loggedIn.jsp");  //If login Success
        }
        else{
            Cookie UserName = new Cookie("Error",uname);
            UserName.setMaxAge(10);
            response.addCookie(UserName);
            di = request.getRequestDispatcher("login.jsp");
        }
        di.forward(request,response);       //send control to corresponding jsp
        
    }
}

    
        
           