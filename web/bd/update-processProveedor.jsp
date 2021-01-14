<%-- 
    Document   : update-processProveedor
    Created on : 13/01/2021, 07:09:36 PM
    Author     : Roberto Carlos
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*,java.util.*"%>


<%
    try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/bdmaylu?user=root&password=");
            Statement st = conn.createStatement();
            ResultSet resultSet = null;
            String id_proveedor = request.getParameter("id_proveedor");
            String nombre_empresa = request.getParameter("nombre_empresa");
            String nombre_agente = request.getParameter("nombre_agente");
            String direccion = request.getParameter("direccion");
            String tel = request.getParameter("tel");
            String email = request.getParameter("email");
            String sql = "UPDATE proveedor SET nombre_empresa='"+nombre_empresa+"',nombre_agente='"+nombre_agente+"',direccion='"+direccion+"',tel='"+tel+"',email='"+email+"' WHERE id_proveedor=" + id_proveedor;
            st = conn.prepareStatement(sql);
            int res = st.executeUpdate(); 
            out.println("Agregado correctamente");

            //request.getRequestDispatcher("AdminCaja.jsp").forward(request, response);
            //RequestDispatcher dispatcher=getServletContext().getRequestDispatcher( "Maylu/build/web/AdminCaja.jsp" ); dispatcher.forward( request, response ); 
        } catch (Exception e) {
            System.out.print(e);
            e.printStackTrace();
        }
%>
