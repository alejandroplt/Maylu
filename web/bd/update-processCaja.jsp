<%-- 
    Document   : update-processCaja
    Created on : 11/01/2021, 09:31:21 PM
    Author     : AlejandroPlatas
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*,java.util.*"%>
<%! String driverName = "com.mysql.jdbc.Driver";%>
<%!String url = "jdbc:mysql://localhost/bdmaylu";%>
<%!String user = "root";%>
<%!String psw = "";%>


<%
    String id_caja = request.getParameter("id_caja");
    String nombre_codigo = request.getParameter("nombre_codigo");
    int efectivo = Integer.parseInt(request.getParameter("efectivo"));

    if (id_caja != null) {
        Connection con = null;
        PreparedStatement ps = null;
        int personID = Integer.parseInt(id_caja);
        try {
            Class.forName(driverName);
            con = DriverManager.getConnection(url, user, psw);
            String sql = "update caja set id_caja=?,nombre_codigo=?,efectivo=? where id_caja=" + id_caja;
            ps = con.prepareStatement(sql);
            ps.setString(1, id_caja);
            ps.setString(2, nombre_codigo);
            ps.setInt(3, efectivo);

            int i = ps.executeUpdate();
            if (i > 0) {
                out.print("Record Updated Successfully");
            } else {
                out.print("There is a problem in updating Record.");
            }
        } catch (SQLException sql) {
            request.setAttribute("error", sql);
            out.println(sql);
        }
    }
%>
