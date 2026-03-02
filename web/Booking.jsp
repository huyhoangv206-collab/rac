<%-- 
    Document   : Booking
    Created on : Jan 24, 2026, 6:07:06 PM
    Author     : admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Booking</title>
    </head>
    <body>
        <h1>Booking Form</h1>
        <form action="BookingServlet" method = "post" >
            Name: <input type="text" name="guestname"><br><!-- comment -->
            Email:<input type="text" name="email"><br><!-- comment -->
            Roomtype: <br><!-- comment -->
            <input type="checkbox" name="roomtype" value="single" > Single <br><!-- comment -->
            <input type="checkbox" name="roomtype" value="double" > Double <br><!-- comment -->
            <input type="submit" name="submit"  >            
        </form>
        
    </body>
</html>
