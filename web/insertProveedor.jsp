<%-- 
    Document   : insertProveedor
    Created on : 11/01/2021, 11:01:37 PM
    Author     : AlejandroPlatas
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@page import="java.sql.*,java.util.*"%>

<%
    if (request.getParameter("guardar") != null) {
        String nombre_empresa = request.getParameter("nombre_empresa");
        String nombre_agente = request.getParameter("nombre_agente");
        String direccion = request.getParameter("direccion");
        String tel = request.getParameter("tel");
        //int tel = Integer.parseInt(request.getParameter("tel"));
        String email = request.getParameter("email");
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/bdmaylu?user=root&password=");
            Statement st = conn.createStatement();

            int i = st.executeUpdate("insert into proveedor(nombre_empresa,nombre_agente,direccion,tel,email)values('" + nombre_empresa + "','" + nombre_agente + "','" + direccion + "' ,'" + tel + "', '" + email + "')");
            //out.println("Agregado correctamente");

            request.getRequestDispatcher("Proveedor-Administrador.jsp").forward(request, response);
            //RequestDispatcher dispatcher=getServletContext().getRequestDispatcher( "Maylu/build/web/AdminCaja.jsp" ); dispatcher.forward( request, response ); 
        } catch (Exception e) {
            System.out.print(e);
            e.printStackTrace();
        }
    }
%>