<%-- 
Document   : ActualizaUsuario
Created on : 13/01/2021, 05:55:33 PM
Author     : Carlos Loaeza
--%>

<%@page import="java.sql.*,java.util.*"%>

<!DOCTYPE html>
<html lang="es">

    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="description"
              content="Responsive sidebar template with sliding effect and dropdown menu based on bootstrap 3">
        <title>MayLu - Administrador</title>

        <!-- using online links -->
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css"
              integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS" crossorigin="anonymous">
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css"
              integrity="sha384-oS3vJWv+0UjzBfQzYUhtDYW+Pj2yciDJxpsK1OYPAYjqT085Qq/1cq5FLXAZQ7Ay" crossorigin="anonymous">
        <link rel="stylesheet" href="//malihu.github.io/custom-scrollbar/jquery.mCustomScrollbar.min.css">

        <link rel="stylesheet" href="styles/estilos-principal.css">
        <link rel="stylesheet" href="styles/sidebar-themes.css">
        <link rel="stylesheet" href="styles/estilos-nuevoproducto.css">
        <link rel="stylesheet" href="styles/popups.css">

        <link rel="shortcut icon" type="image/png" href="img/icon.png" />
        <link rel="preconnect" href="https://fonts.gstatic.com">
        <link href="https://fonts.googleapis.com/css2?family=Dancing+Script:wght@700&display=swap" rel="stylesheet">
    </head>

    <body>
        <div class="page-wrapper default-theme sidebar-bg bg1 toggled">
            <nav id="sidebar" class="sidebar-wrapper">
                <div class="sidebar-content">
                    <!-- sidebar-brand  -->
                    <div class="sidebar-item sidebar-brand">
                        <span align="center">
                            <i class="fa fa-shoe-prints"></i>
                            MayLú
                        </span>
                    </div>
                    <!-- sidebar-header  -->
                    <div class="sidebar-item sidebar-header d-flex flex-nowrap">
                        <div class="user-pic">
                            <img class="img-responsive img-rounded" src="img/user.png" alt="User picture">
                        </div>
                        <div class="user-info">
                            <span class="user-name"><strong>Carlos
                                    Loaeza</strong>
                            </span>
                            <span class="user-role">Administrador</span>
                            <span class="user-status">
                                <i class="fa fa-circle"></i>
                                <span>Online</span>
                            </span>
                        </div>
                    </div>
                    <!-- sidebar-menu  -->
                    <div class=" sidebar-item sidebar-menu">
                        <ul>
                            <li class="header-menu">
                                <span>General</span>
                            </li>
                            <li>
                                <a href="principal-admin.jsp">
                                    <i class="fa fa-tachometer-alt"></i>
                                    <span class="menu-text">Dashboard</span>
                                </a>
                            </li>
                            <li>
                                <a href="PuntoVenta-Admin.jsp">
                                    <i class="fa fa-shopping-cart"></i>
                                    <span class="menu-text">Punto de Venta</span>
                                </a>
                            </li>
                            <li>
                                <a href="Inventario-Administrador.jsp">
                                    <i class="fa fa-warehouse"></i>
                                    <span class="menu-text">Inventario</span>
                                </a>
                            </li>
                            <li>
                                <a href="reportes.jsp">
                                    <i class="fa fa-chart-line"></i>
                                    <span class="menu-text">Reportes</span>
                                </a>
                            </li>
                            <li>
                                <a href="AdminCaja.jsp">
                                    <i class="fa fa-cash-register"></i>
                                    <span class="menu-text">Caja</span>
                                </a>
                            </li>
                            <li>
                                <a href="apartados.jsp">
                                    <i class="fa fa-cart-plus"></i>
                                    <span class="menu-text">Apartados</span>
                                </a>
                            </li>
                            <li>
                                <a href="devoluciones.jsp">
                                    <i class="fa fa-sync-alt"></i>
                                    <span class="menu-text">Devoluciones</span>
                                </a>
                            </li>
                            <li>
                                <a href="Usuario-Administrador.jsp">
                                    <i class="fa fa-users"></i>
                                    <span class="menu-text">Usuarios</span>
                                </a>
                            </li>
                            <li>
                                <a href="Proveedor-Administrador.jsp">
                                    <i class="fa fa-truck"></i>
                                    <span class="menu-text">Proveedores</span>
                                </a>
                            </li>
                            <li class="header-menu">
                                <span>Extra</span>
                            </li>
                            <li>
                                <a href="#">
                                    <i class="fa fa-question"></i>
                                    <span class="menu-text">Ayuda</span>
                                    <span class="badge badge-pill badge-primary">Prox</span>
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <i class="fa fa-calendar"></i>
                                    <span class="menu-text">Calendario</span>
                                    <span class="badge badge-pill badge-primary">Prox</span>
                                </a>
                            </li>
                            <li>
                                <a href="#" id="btnabrir" >
                                    <i class="fa fa-power-off"></i>
                                    <span class="menu-text" onclick="cierra()">Cerrar sesión</span>
                                </a>
                            </li>
                        </ul>
                    </div>
                    <!-- sidebar-menu  -->
                </div>
                <div class="sidebar-footer">
                    <div class="dropdown">
                        <a href="#" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            <i class="fa fa-laptop-code"></i>
                            <i class="fa fa-terminal"></i>
                            <span> codiguITO</span>
                        </a>
                    </div>
                </div>
            </nav>

            <!-- contenido  -->
            <main class="page-content pt-2">
                <div class="fondo_transparente">
                    <div class="modal">
                        <div class="modal_titulo">ADVERTENCIA</div>
                        <div class="modal_mensaje">
                            <p>¿Seguro que desea salir?</p>
                        </div>
                        <div class="modal_botones">
                            <a href="login.jsp" class="boton" id="btn-yes">SI</a>
                            <a href="#" class="boton" id="btn-no" onclick="NO()">NO</a>
                        </div>
                    </div>
                </div>
                <div id="overlay" class="overlay"></div>
                <section id="main-content">

                    <article>
                        <div id="divcerrar">
                            <a href="login.jsp">
                                <button class="btn-tiny btn-danger">
                                    Cerrar Sesion <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16"
                                                       fill="currentColor" class="bi bi-box-arrow-right" viewBox="0 0 16 16">
                                    <path fill-rule="evenodd"
                                          d="M10 12.5a.5.5 0 0 1-.5.5h-8a.5.5 0 0 1-.5-.5v-9a.5.5 0 0 1 .5-.5h8a.5.5 0 0 1 .5.5v2a.5.5 0 0 0 1 0v-2A1.5 1.5 0 0 0 9.5 2h-8A1.5 1.5 0 0 0 0 3.5v9A1.5 1.5 0 0 0 1.5 14h8a1.5 1.5 0 0 0 1.5-1.5v-2a.5.5 0 0 0-1 0v2z" />
                                    <path fill-rule="evenodd"
                                          d="M15.854 8.354a.5.5 0 0 0 0-.708l-3-3a.5.5 0 0 0-.708.708L14.293 7.5H5.5a.5.5 0 0 0 0 1h8.793l-2.147 2.146a.5.5 0 0 0 .708.708l3-3z" />
                                    </svg>
                                </button>
                            </a>
                        </div>
                        <header id="encabezado">
                            <img id="img-inventario" class="img-responsive img-rounded" src="img/usuario.png" height="150"
                                 width="150" alt="Usuario picture">
                            <br>
                            <br>
                            <h1>Usuarios</h1>
                            <div class="puestos2"><h4>   Puesto: <br>    1.- Administrador <br>    2.- Almacén <br>    3.- Vendedor</h2></div>
                                    </header>

                                    <div class="actualiza">
                                        <h3>Actualizar Usuario</h3>
                                        <h4>Ingresa los datos</h4>
                                        <h5>* Campo obligatorio <br>
                                            ** La contraseña debe tener una longitud entre 8 y 15 caracteres 
                                            (Debe contener letras minúsculas, mayúsculas, números y símbolos)</h5>
                                        <!--<form action="bd/consultUser.jsp" method="post" name="update">-->
                                        <%
                                            Connection con;
                                            String url = "jdbc:mysql://localhost/bdmaylu";
                                            String Driver = "com.mysql.jdbc.Driver";
                                            String user = "root";
                                            String clave = "";
                                            Class.forName(Driver);
                                            con = DriverManager.getConnection(url, user, clave);

                                            PreparedStatement ps;
                                            ResultSet rs;
                                            int id_usuario = Integer.parseInt(request.getParameter("id_usuario"));
                                            ps = con.prepareStatement("select * from usuario where id_usuario=" + id_usuario);
                                            rs = ps.executeQuery();
                                            while (rs.next()) {

                                        %>


                                        <form action="" method="post"> 
                                            <div class="contenedor-etiquetas-actualiza">
                                                <h4>  Id_usuario</h4>
                                                <h4>* Nombre</h4>
                                                <h4>* Puesto</h4>
                                                <h4>* Caja</h4>
                                                <h4>* Genero</h4>
                                                <h4>* Dirección</h4>
                                                <h4>* Telefono</h4>
                                                <h4>* Correo</h4>
                                                <h4>* Usuario</h4>
                                                <h4>** Contraseña</h4>
                                            </div>
                                            <div class="contenedor-inputs-actualiza">

                                                <input type="text" readonly="" value="<%=rs.getInt("id_usuario")%>" > 
                                                <input type="text" name="nombre_com2" value="<%=rs.getString("nombre_com")%>" placeholder="Nombre completo">
                                                <select name="puesto2" class="select">
                                                    <option selected value="0"> <%=rs.getString("puesto")%></option>
                                                    <option value="1">Admistrador</option>
                                                    <option value="2">Vendedor</option>
                                                    <option value="3">Almacenista</option>
                                                </select>
                                                <select name="id_caja2" class="select">
                                                    <option selected value="0"> <%=rs.getString("id_caja")%> </option>
                                                    <option value="1">1</option>
                                                </select>
                                                <select name="genero2" class="select">
                                                    <option selected value="0"> <%=rs.getString("genero")%> </option>
                                                    <option value="1">Masculino</option>
                                                    <option value="2">Femenino</option>
                                                </select>
                                                <input type="text" name="direccion2" value="<%=rs.getString("direccion")%>" placeholder="Dirección">
                                                <input type="text" name="tel2" value="<%=rs.getString("tel")%>" placeholder="Telefono">
                                                <input type="text" name="email2" value="<%=rs.getString("email")%>" placeholder="Correo electrónico">
                                                <input type="text" name="usuario2" value="<%=rs.getString("usuario")%>" placeholder="Usuario">
                                                <input type="text" name="contra2" value="<%=rs.getString("contra")%>" placeholder="Contraseña">


                                            </div>
                                            <br>

                                            <input type="submit" class="btn-submit btn-block" name="actualizar" value="Actualizar">
                                        </form>
                                        <%
                                            }
                                        %>
                                        <%
                                            String nombre_com = request.getParameter("nombre_com");
                                            String puesto = request.getParameter("puesto");
                                            String id_caja = request.getParameter("id_caja");
                                            String genero = request.getParameter("genero");
                                            String direccion = request.getParameter("direccion");
                                            String tel = request.getParameter("tel");
                                            String correo = request.getParameter("email");
                                            String usuario = request.getParameter("usuario");
                                            String contraseña = request.getParameter("contra");
                                            //int efectivo = Integer.parseInt(request.getParameter("efectivo"));

                                            if (nombre_com != null && puesto != null && id_caja != null && genero != null && direccion != null && tel != null && correo != null && usuario != null && contraseña != null) {
                                                //ps = con.prepareStatement("update caja set nombre_codigo ='" + nombre_codigo + "', efectivo ='" + efectivo + "' where id_caja= " + id_caja);
                                                ps = con.prepareStatement("update usuario set nombre_com ='" + nombre_com + "', puesto ='" + puesto + "', id_caja='" + id_caja + "',genero='" + genero + "', direccion='" + direccion + "', tel= '" + tel + "', correo= '" + correo + "', usuario= '" + usuario + "', contraseña= '" + contraseña + "' where id_usuario= " + id_usuario);

                                                ps.executeUpdate();
                                                out.println("Actualizado");
                                                request.getRequestDispatcher("Usuario-Administrador.jsp").forward(request, response);

                                            }
                                        %>
                                    </div>

                                    <br>
                                    </article>
                                    </section>
                                    </main>
                                    <!-- page-content" -->
                                    </div>
                                    <!-- page-wrapper -->
                                    <!-- using online scripts -->
                                    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
                                    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js"
                                            integrity="sha384-wHAiFfRlMFy6i5SRaxvfOCifBUQy1xHdJ/yoi7FRNXMRBu5WHdZYu1hA6ZOblgut" crossorigin="anonymous">
                                    </script>
                                    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js"
                                            integrity="sha384-B0UglyR+jN6CkvvICOB2joaf5I4l3gm9GU6Hc1og6Ls7i6U/mkkaduKaBhlAXv9k" crossorigin="anonymous">
                                    </script>
                                    <script src="//malihu.github.io/custom-scrollbar/jquery.mCustomScrollbar.concat.min.js"></script>

                                    <script src="js/administrador/principal-admin.js"></script>

                                    </body>
                                    </html>