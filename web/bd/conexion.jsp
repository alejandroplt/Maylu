<%-- 
    Document   : conexion
    Created on : 11/01/2021, 12:32:57 AM
    Author     : Roberto Carlos
--%>
<%@page import="java.sql.*, java.util.*" %>
<%@page language="java" contentType="text/html" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%try{
        Class.forName("com.mysql.jdbc.Driver");
        Connection conexion=DriverManager.getConnection("jdbc:mysql://localhost/bdmaylu?user=root&password=");
        out.println("Conexi�n realizada con �xito a: "+conexion.getCatalog());
        conexion.close();
        } catch(SQLException ex)
        { %>
        <%="Se produjo una excepci�n durante la conexi�n:"+ex%>
        <%} catch(Exception ex){ %>
        <%="Se produjo una excepci�n:"+ex%>
        <%}%>
    </body>
</html>
