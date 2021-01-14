<%-- 
    Document   : deleteUser
    Created on : 13/01/2021, 01:35:25 PM
    Author     : Carlos Loaeza
--%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="UTF-8"%>
<%@page import="java.sql.*,java.util.*"%>

<%
    int id_usuario = Integer.parseInt(request.getParameter("id_usuario"));
    try {
        Class.forName("com.mysql.jdbc.Driver");
        Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/bdmaylu?user=root&password=");
        Statement st = conn.createStatement();
        int i = st.executeUpdate("DELETE FROM usuario WHERE id_usuario=" + id_usuario);
        out.println("Eliminado correctamente");
    } catch (Exception e) {
        System.out.print(e);
        e.printStackTrace();
    }
%>