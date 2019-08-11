/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package lontric;
/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import javax.ejb.EJB;
import javax.mail.MessagingException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import webpage.ejb.mail3;

/**
 *
 * @author Vedang
 */
@WebServlet(urlPatterns = {"/mail2"})
public class mail2 extends HttpServlet {

   @EJB
   private mail3 mailSender;
   
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, MessagingException {
        response.setContentType("text/html;charset=UTF-8");
        
        String toemail = request.getParameter("toemail");
        
        String fromemail = "vedanglad@gmail.com";
        String username = "Vedang Lad";
        String password = "ved3131998";
        
        
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            
            
            mailSender.sendEmail(fromemail,username,password,toemail);
            
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Mail Status</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Mail Sent Successfully...!!!</h1>");
            out.println("Click <a href='mail1.jsp'> Here </a>to go Back");
            out.println("</body>");
            out.println("</html>");
        }
    }


}
