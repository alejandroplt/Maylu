<%-- 
    Document   : consultUser
    Created on : 13/01/2021, 03:40:40 PM
    Author     : Carlos Loaeza
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*,java.util.*"%>


<script>
<%
                Connection con = null;
                Statement sta = null;
                ResultSet rs = null;
        int user = Integer.parseInt(request.getParameter("id_usuario"));
                try {
                    Class.forName("com.mysql.jdbc.Driver");
                    con = DriverManager.getConnection("jdbc:mysql://localhost/bdmaylu?user=root&password=");

                    sta = con.createStatement();
                    rs = sta.executeQuery("SELECT * FROM usuario WHERE id_usuario=" + user + ";");

                    String nombre_com = "";
                    String puesto = "";
                    int id_caja = 0;
                    String genero = "";
                    String direccion = "";
                    String tel = "";
                    String correo = "";
                    String usuario = "";
                    String contraseña = "";

                    while (rs.next()) {
                        nombre_com = (rs.getString("nombre_com"));%>

            $(document).ready(function(){
	$("#btn-abrir-popup2").click(function () {
	$("#nombre_com2").val($(<%=nombre_com%>).val());
	});		
});
            <%
                        puesto = (rs.getString("puesto"));
                        id_caja = (rs.getInt("id_caja"));
                        genero = (rs.getString("genero"));
                        direccion = (rs.getString("direccion"));
                        tel = (rs.getString("tel"));
                        correo = (rs.getString("email"));
                        usuario = (rs.getString("usuario"));
                        contraseña = (rs.getString("contra"));
                    }
                } catch (Exception e) {
                    out.println("Error al CARGAR DATOS  " + e);
                }
            %>

        </script>


