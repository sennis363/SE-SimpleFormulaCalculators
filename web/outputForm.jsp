<%-- 
    Document   : output
    Created on : Jan 31, 2013, 2:01:08 PM
    Author     : sennis
--%>

<%@page import="java.util.logging.Level"%>
<%@page import="java.util.logging.Logger"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Mathematical Outputs</title>
    </head>
    <body>
        <%
            if (request.getAttribute("answerRect") != null) {
                out.println("<h1><center>Area of that Rectangle</center></h1>");
                Object output = request.getAttribute("answerRect");
                out.println("AREA OF THAT RECTANGLE: " + output);
            } else if (request.getAttribute("answerCirc") != null) {
                out.println("<h1><center>Area of that Circle</center></h1>");
                Object output = request.getAttribute("answerCirc");
                out.println("AREA OF THAT CIRCLE: " + output);
            } else if (request.getAttribute("answerTri1") != null) {
                out.println("<h1><center>Hypotenuse</center></h1>");
                Object output = request.getAttribute("answerTri1");
                out.println("HYPOTENUSE: " + output);
            } else if (request.getAttribute("answerTri2") != null) {
                out.println("<h1><center>Other Leg</center></h1>");
                Object output = request.getAttribute("answerTri2");
                out.println("OTHER LEG: " + output);
            }
        %>
            <h3><a href="inputForm1.jsp">Go back</a></h3>
    </body>
</html>
