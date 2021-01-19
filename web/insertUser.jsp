<%-- 
    Document   : insertUser
    Created on : 13/01/2021, 12:17:57 PM
    Author     : Carlos Loaeza
--%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="UTF-8"%>
<%@page import="java.sql.*,java.util.*"%>

<%
    if (request.getParameter("guardar") != null) {
        String nombre_com = request.getParameter("nombre_com");
        String puesto = request.getParameter("puesto");
        int id_caja = Integer.parseInt(request.getParameter("id_caja"));
        String genero = request.getParameter("genero");
        String direccion = request.getParameter("direccion");
        String tel = request.getParameter("tel");
        String correo = request.getParameter("email");
        String usuario = request.getParameter("email");
        String contraseña = request.getParameter("contra");
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/bdmaylu?user=root&password=");
            Statement st = conn.createStatement();

            int i = st.executeUpdate("insert into usuario(nombre_com,puesto,id_caja,genero,direccion,tel,email,usuario,contra)"
                    + "values('" + nombre_com + "','" + puesto + "'," + id_caja + ",'"
                    + genero + "','" + direccion + "','" + tel + "','" + correo + "','" + usuario + "','" + contraseña + "')");
            //out.println("Agregado correctamente");

            request.getRequestDispatcher("Usuario-Administrador.jsp").forward(request, response);
            //RequestDispatcher dispatcher=getServletContext().getRequestDispatcher( "Maylu/build/web/AdminCaja.jsp" ); dispatcher.forward( request, response ); 
        } catch (Exception e) {
            out.println(e);
            e.printStackTrace();
        }
    }
%>