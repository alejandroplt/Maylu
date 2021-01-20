<%-- 
    Document   : login
    Created on : 15/01/2021, 06:05:43 PM
    Author     : Carlos Loaeza
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%--  <%@page import="modelos.loginVal"%> --%>
<%@page import="java.sql.*,java.util.*"%>
<%@page session="true"%>

<!DOCTYPE html>
<html> 
    <head>
        <title>MayLú - Login</title>
        <meta charset="UTF-8">
        <link rel="shortcut icon" type="image/png" href="img/icon.png" />
        <link rel="stylesheet" type="text/css" href="styles/estilos-login.css">
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <link rel="stylesheet" type="text/css" href="http://fonts.googleapis.com/css?family=Tangerine">
        <link href="https://fonts.googleapis.com/css2?family=Lobster&display=swap" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css2?family=Lobster&family=Lobster+Two&display=swap" rel="stylesheet">
    </head>

    <body background="img/zapato-1.jpg">

        <section class="container">
            <section class="left" id="left" >
                <img src="img/maylu.png" alt="logo" width="530" height="510" />
            </section>
            <%

            %>
            <section class="right" id="right" >
                <h1>Bienvenido al sistema</h1>        		
                <form action="login.jsp" method="post">
                    <div class="container2">
                        <h3>Ingresa a tu cuenta</h3>
                        <label for="usuario" class="colocar_usuario">Usuario:</label>
                        <input type="text" name="introducir_usuario" id="usuario" required="obligatorio" placeholder="Ingresa tu usuario">
                        <label for="pass" class="colocar_pass">Contraseña:</label>
                        <input type="password" pattern="[A-Za-z0-9@#$%]{8,20}" minlength="8" maxlength="20"
                               name="introducir_pass" id="pass" required="obligatorio" placeholder="Ingresa tu contraeña">
                        <button type="submit" name="enviar_formulario" id="enviar">Entrar</button>
                    </div>
                </form>
                <%                    String driver = "com.mysql.jdbc.Driver";
                    String url = "jdbc:mysql://localhost/bdmaylu?user=root&password=";

                    Connection connection;
                    PreparedStatement statement;
                    ResultSet resultSet;
                    String uss = request.getParameter("introducir_usuario");
                    String pass = request.getParameter("introducir_pass");
                    int puesto = 0;
                    String sql = "select puesto from usuario where usuario = '" + uss + "' and contra = '" + pass + "'";
                    try {
                        Class.forName(driver);
                        connection = DriverManager.getConnection(url);
                        statement = connection.prepareStatement(sql);
                        resultSet = statement.executeQuery();
                        while (resultSet.next()) {
                            puesto = resultSet.getInt(1);
                        }
                        connection.close();
                    } catch (Exception e) {
                        e.printStackTrace();
                    }

                    if (request.getParameter("enviar_formulario") != null) {
                        String nombre = request.getParameter("introducir_usuario");
                        String contra = request.getParameter("introducir_pass");
                        HttpSession sesion = request.getSession();
                        switch (puesto) {
                            case 1:
                                sesion.setAttribute("user", nombre);
                                sesion.setAttribute("nivel", "1");
                                response.sendRedirect("principal-admin.jsp");
                                break;

                            case 2:
                                sesion.setAttribute("user", nombre);
                                sesion.setAttribute("nivel", "2");
                                response.sendRedirect("principal-almacen.jsp");
                                break;

                            case 3:
                                session.setAttribute("user", nombre);
                                session.setAttribute("nivel", "3");
                                response.sendRedirect("principal-vendedor.jsp");
                                break;

                            default:
                                String mensaje = "<script language='javascript'>alert('Usuario o contraseña invalida');</script>";
                                out.println(mensaje);
                                //out.write("usuario o contraseña invalida");
                                break;
                        }
                    }
                %>
            </section>

        </section>
    </body>
</hmtl>
