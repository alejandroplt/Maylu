<%-- 
    Document   : update-processCaja
    Created on : 11/01/2021, 09:31:21 PM
    Author     : AlejandroPlatas
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*,java.util.*"%>


<%
    
    int id_cajaa = Integer.parseInt(request.getParameter("id_cajaa"));
    if (request.getParameter("guardar") != null) {
        String nombre_codigo = request.getParameter("nombre_codigo");
        int efectivo = Integer.parseInt(request.getParameter("efectivo"));
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/bdmaylu?user=root&password=");
            Statement st = conn.createStatement();

            //int i = st.executeUpdate("insert into caja(nombre_codigo,efectivo)values('" + nombre_codigo + "'," + efectivo + ")");
            int i= st.executeUpdate("UPDATE caja SET nombre_codigo='"+nombre_codigo+"',efectivo="+efectivo+" WHERE id_caja='"+id_cajaa+"'");
            out.println("Actualizado correctamente");

            //request.getRequestDispatcher("AdminCaja.jsp").forward(request, response);
            //RequestDispatcher dispatcher=getServletContext().getRequestDispatcher( "Maylu/build/web/AdminCaja.jsp" ); dispatcher.forward( request, response ); 
        } catch (Exception e) {
            out.print(e);
            e.printStackTrace();
        }
    }
%>
