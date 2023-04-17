<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Online Calculator</title>
</head>
<body bgcolor="cyan">
<center>
<p style="font-size:45px; "><b>Calculator </b></p>
<form action="CalcServ1" method="post">
<input type="text" name="num1" placeholder="Enter First Number" style="position: relative;border: 2px solid black;border-radius: 10px;font-weight:550;color: black;width: 300px;height: 50px;margin: 15px auto;font-size: 25px; text-align: center"/>
<br>
<input type="text" name="num2" placeholder="Enter Second Number" style="position: relative;border: 2px solid black;border-radius: 10px;font-weight:550;color: black;width: 300px;height: 50px;margin: 15px auto;font-size: 25px; text-align: center"/>
<br>
<h1>Click on operant to get the result</h1>
<input type="submit" name="btnsubmit" value="+" style="background: lightgrey;width:5%;font-size: 20px;font-weight: 1000;margin: 2%;border-radius: 10px;"/>
<input type="submit" name="btnsubmit" value="-" style="background: lightgrey;width:5%;font-size: 20px;font-weight: 1000;margin: 2%;border-radius: 10px;"/>
<input type="submit" name="btnsubmit" value="x" style="background: lightgrey;width:5%;font-size: 20px;font-weight: 1000;margin: 2%;border-radius: 10px;" />
<input type="submit" name="btnsubmit" value="/" style="background: lightgrey;width:5%;font-size: 20px;font-weight: 1000;margin: 2%;border-radius: 10px;"/>
<input type="submit" name="btnsubmit" value="%" style="background: lightgrey;width:5%;font-size: 20px;font-weight: 1000;margin: 2%;border-radius: 10px;"/>
</form>
<p style="font-size:40px;background: orange; width:300 px; ">
<%
if(request.getParameter("a")!=null)
{
	out.print("Result = "+request.getParameter("a"));
}
%>
</p>
</center>
</body>
</html>
