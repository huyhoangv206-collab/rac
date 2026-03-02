
package controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.*;
import java.io.IOException;
public class BookingServlet extends HttpServlet {
  
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
       String name = request.getParameter("guestname");
       String email = request.getParameter("email");
       String[] roomtypes = request.getParameterValues("roomtype");
   
if (name == null || name.trim().isEmpty()
        || email == null || email.trim().isEmpty()
        || roomtypes == null) {

    response.getWriter().println("Missing input");
    return;
}
String url = request.getContextPath() + "/BookingServletDetail" + "?guestname=" + name +"&email="+ email;
for (String i:roomtypes){
    url += "&roomtype=" + i;
            
}
response.sendRedirect(url);
}
 }

