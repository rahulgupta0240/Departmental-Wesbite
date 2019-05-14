package admin;


import database.app.*;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author admin
 */
public class Login extends HttpServlet {

    
    HttpSession session;
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException
            {
              session=request.getSession();
                
               try {
                    
                
        String user=request.getParameter("email");
        
        String pass=request.getParameter("psw");
        Database ob=new Database(); 
        if(ob.check(user,pass)){
              session.setAttribute("user", user);
       
        
        
        response.sendRedirect("index.jsp");
        
           
        }
        else
        {
            
            response.sendRedirect("login.html");
            
        }
                }
                catch (Exception e) {
                }
       
    
    }

   
}
