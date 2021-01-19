<%-- 
    Document   : deleteProveedor
    Created on : 12/01/2021, 01:19:23 AM
    Author     : AlejandroPlatas
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*,java.util.*"%>
<%
    int id_proveedor = Integer.parseInt(request.getParameter("id_proveedor"));
    //String id_caja = request.getParameter("id_caja");
    try {
        Class.forName("com.mysql.jdbc.Driver");
        Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/bdmaylu?user=root&password=");
        Statement st = conn.createStatement();
        int i = st.executeUpdate("DELETE FROM proveedor WHERE id_proveedor=" + id_proveedor);
        //out.println("Eliminado correctamente");
        request.getRequestDispatcher("Proveedor-Administrador.jsp").forward(request, response);

    } catch (Exception e) {
        System.out.print(e);
        e.printStackTrace();
    }
%>
