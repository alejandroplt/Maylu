<%-- 
    Document   : editProveedor
    Created on : 13/01/2021, 06:45:01 PM
    Author     : Roberto Carlos
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*,java.util.*"%>

<%
    String id_proveedor = request.getParameter("id_proveedor");
    Connection connection = null;
    Statement statement = null;
    ResultSet resultSet = null;
    String driver = "com.mysql.jdbc.Driver";
    connection = DriverManager.getConnection("jdbc:mysql://localhost/bdmaylu?user=root&password=");
    try {
        Class.forName(driver);
    } catch (ClassNotFoundException e) {
        e.printStackTrace();
    }
%>
<%
    try {
        connection = DriverManager.getConnection("jdbc:mysql://localhost/bdmaylu?user=root&password=");
        statement = connection.createStatement();
        String sql = "select * from proveedor where id_proveedor=" + id_proveedor;
        resultSet = statement.executeQuery(sql);
        while (resultSet.next()) {
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    <body>
        <div id="container">
            <div class="overlay2" id="overlay2">
                <div class="popup2" id="popup2">
                    <a href="#" id="btn-cerrar-popup2" class="btn-cerrar-popup2"><i class="fas fa-times"></i></a>
                    <h3>Actualizar Caja</h3>
                    <h4>Ingresa los datos</h4>

                    <%--                       
                        try {
                            connection = DriverManager.getConnection("jdbc:mysql://localhost/bdmaylu?user=root&password=");
                            statement = connection.createStatement();
                            String sql2 = "select * from caja where id_caja=" + id_caja;
                            resultSet = statement.executeQuery(sql2);
                            while (resultSet.next()) {


                    --%>
                    <form action="update-processProveedor.jsp" method="post">
                        <div class="contenedor-etiquetas2">
                            <h4>Nombre empresa</h4>
                            <h4>Nombre agente</h4>
                            <h4>Direccion</h4>
                            <h4>Telefono</h4>
                            <h4>Email</h4>
                        </div>
                        <div class="contenedor-inputs2">

                            <input type="text" name="nombre_codigo" value="<%=resultSet.getString("nombre_empresa")%>" placeholder="Nombre o codigo de caja" >

                            <input type="text" name="efectivo" value="<%=resultSet.getString("nombre_agente")%>" placeholder="Cantidad de efectivo">
                            <input type="text" name="efectivo" value="<%=resultSet.getString("direccion")%>" placeholder="Cantidad de efectivo">
                            <input type="text" name="efectivo" value="<%=resultSet.getString("tel")%>" placeholder="Cantidad de efectivo">
                            <input type="text" name="efectivo" value="<%=resultSet.getString("email")%>" placeholder="Cantidad de efectivo">

                        </div>

                        <br>
                        <input type="submit" class="btn-submit" name="actualizar" value="Actualizar">
                    </form>
                    <%
                            }
                            connection.close();
                        } catch (Exception e) {
                            e.printStackTrace();
                        }
                    %>

                </div>
            </div>
        </div> 

    </body>
</html>


