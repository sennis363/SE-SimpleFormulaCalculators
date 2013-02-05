<%-- 
    Document   : inputForm
    Created on : Jan 31, 2013, 2:07:26 PM
    Author     : sennis
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Simple Formula Calculators</title>
        <script type="text/javascript">
            function validateForm1()
            {
                var x=document.forms["form1"]["length1"].value;
                var y=document.forms["form1"]["width1"].value;
                if (x==null || x=="" || y==null || y=="")
                {
                    alert("Please enter length and width first");
                    return false;
                } else if (x == 0 || y == 0) {
                    alert("Length or width can't be 0");
                    return false;
                } else form1.submit();
            }

            function validateForm2()
            {
                var x=document.forms["form2"]["radius"].value;
                if (x==null || x=="")
                {
                    alert("Please enter radius first");
                    return false;
                } else if (x == 0) {
                    alert("Radius can't be 0");
                    return false;
                }
                else form2.submit();
            }
            
            function validateForm3LegLeg()
            {
                var x=document.forms["form3"]["leg1"].value;
                var y=document.forms["form3"]["leg2"].value;
                if (x==null || x=="" || x < 0 || y==null || y=="" || y < 0)
                {
                    alert("Please enter Leg1 and Leg2 first");
                    return false;
                } else if (x == 0 || y == 0) {
                    alert("Any side of a triangle can't be 0");
                    return false;
                } else form3.submit();
            }
            
            function validateForm3LegHypo()
            {
                var x=document.forms["form3"]["leg2"].value;
                var y=document.forms["form3"]["hypotenuse"].value;
                if (x==null || x=="" || x < 0 || y==null || y=="" || y < 0)
                {
                    alert("Please enter Leg2 and Hypo. first");
                    return false;
                } else if (x > y) {
                    alert("Hypotenuse can't be a lower value than a leg.")
                } else if (x == 0 || y == 0) {
                    alert("Any side of a triangle can't be 0");
                    return false;
                } else form3.submit();
            }

        </script>
    </head>
    <body>
    <center><h1>Simple Formula Calculators</h1></center>
    <p>Area of a Rectangle</p>
    <form id="form1" name="form1" method="POST" action="mainServlet.do">
        Length: <input type="text" name="length1" id="length1"><br/>
        Width: <input type="text" name="width1" id="width1">
        <input id="rectangleSubmit" name="rectangleSubmit" type="submit" value="Calculate" onclick="return validateForm1()" />
        <%
        if (1 == 1) {
            //enter request logic here
        }
        %>
    </form>
    <br/>
    <p>Area of a Circle</p>
    <form id="form2" name="form2" method="POST" action="mainServlet.do">
        Radius: <input type="text" name="radius" id="radius">
        <input id="circleSubmit" name="circleSubmit" type="submit" value="Calculate" onclick="return validateForm2()" />
    </form>
    <br/>
    <p>Sides of a Right Triangle</p>
    <form id="form3" name="form3" method="POST" action="mainServlet.do">
        Leg 1: <input type="text" name="leg1" id="leg1">
        Leg 2: <input type="text" name="leg2" id="leg2">
        Hypotenuse: <input type="text" name="hypotenuse" id="hypotenuse">
        <input id="triangleSubmit1" name="triangleSubmit1" type="submit" value="Solve for Hypotenuse" onclick="return validateForm3LegLeg()">
        <input id="triangleSubmit2" name="triangleSubmit2" type="submit" value="Solve for a Leg" onclick="return validateForm3LegHypo()">
    </form>
</body>
</html>
