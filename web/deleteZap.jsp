<%-- 
    Document   : deleteZap
    Created on : 14/01/2021, 03:12:10 PM
    Author     : AlejandroPlatas
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*,java.util.*"%>
<%
    int id_zapato = Integer.parseInt(request.getParameter("id_zapato"));
    //String id_caja = request.getParameter("id_caja");
    try {
        Class.forName("com.mysql.jdbc.Driver");
        Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/bdmaylu?user=root&password=");
        Statement st = conn.createStatement();
        int i = st.executeUpdate("DELETE FROM zapato WHERE id_zapato=" + id_zapato);
        //out.println("Eliminado correctamente");
        request.getRequestDispatcher("Inventario-Administrador.jsp").forward(request, response);

    } catch (Exception e) {
        System.out.print(e);
        e.printStackTrace();
    }
%>