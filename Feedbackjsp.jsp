<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="java.sql.*" %>

		<%
		
		( function(){
			var radios =document.getElementByName('rating1');
			console.log(radios);
			for(var i = 0;i < radios.length;i++)
			{
				radios.[i].onclick = function()
				{
					document.getElementById('ratVal1').innerText = this.value;
				}
   			}
		   }
		)();

		( function(){
			var radios =document.getElementByName('rating2');
			console.log(radios);
			for(var i = 0;i < radios.length;i++)
			{
				radios.[i].onclick = function()
				{
					document.getElementById('ratVal2').innerText = this.value;
				}
   			}
		   }
		)();

		( function(){
			var radios =document.getElementByName('rating3');
			console.log(radios);
			for(var i = 0;i < radios.length;i++)
			{
				radios.[i].onclick = function()
				{
					document.getElementById('ratVal3').innerText = this.value;
				}
   			}
		   }
		)();

		( function(){
			var radios =document.getElementByName('rating4');
			console.log(radios);
			for(var i = 0;i < radios.length;i++)
			{
				radios.[i].onclick = function()
				{
					document.getElementById('ratVal4').innerText = this.value;
				}
   			}
		   }
		)();
		
		String feedbacktitle=request.getParameter("feedbacktitle");
		String feedbacktext=request.getParameter("feedbacktext");

		try
		{
			Connection connection = null;
            //Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
  
            connection = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","password");
			Statement statement = connection.createStatement();
			String command = "INSERT into feedback(ratVal1,ratVal2,ratVal3,ratVal4,feedbacktitle,feedbacktext)values('"+ratVal1+"','"+ratVal2+"','"+ratVal3+"','"+ratVal4+"','"+feedbacktitle+"','"+feedbacktext+"')";
            statement.executeUpdate(command);
			//out.println("Data is successfully inserted!");
			String URL = "https://www.google.co.in/";
			response.sendRedirect(URL);
		}
		catch(Exception e)
		{
		System.out.print(e);
		e.printStackTrace();
		}
		%>