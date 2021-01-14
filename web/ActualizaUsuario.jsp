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

        <!-- using local links -->
        <!-- <link rel="stylesheet" href="../node_modules/bootstrap/dist/css/bootstrap.min.css">
        <link rel="stylesheet" href="../node_modules/@fortawesome/fontawesome-free/css/all.min.css">
        <link rel="stylesheet" href="../node_modules/malihu-custom-scrollbar-plugin/jquery.mCustomScrollbar.css"> -->

        <link rel="stylesheet" href="styles/estilos-principal.css">
        <link rel="stylesheet" href="styles/sidebar-themes.css">
        <link rel="stylesheet" href="styles/estilos-nuevoproducto.css">
        <link rel="stylesheet" href="styles/popups.css">
        <link rel="shortcut icon" type="image/png" href="img/icon.png" />
        <link rel="preconnect" href="https://fonts.gstatic.com">
        <link href="https://fonts.googleapis.com/css2?family=Dancing+Script:wght@700&display=swap" rel="stylesheet">
    </head>

    <body>

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
                    String contrase�a = "";

        while (rs.next()) {
            nombre_com = (rs.getString("nombre_com"));%>

                    $("#nombre_com2").val($(<%=nombre_com%>).val());

            <%
                        puesto = (rs.getString("puesto"));
                        id_caja = (rs.getInt("id_caja"));
                        genero = (rs.getString("genero"));
                        direccion = (rs.getString("direccion"));
                        tel = (rs.getString("tel"));
                        correo = (rs.getString("email"));
                        usuario = (rs.getString("usuario"));
                        contrase�a = (rs.getString("contra"));
                    }
                } catch (Exception e) {
                    out.println("Error al CARGAR DATOS  " + e);
                }
            %>

        </script>

        <div id="container">
            <div class="overlay2" id="overlay2">
                <div class="popup2" id="popup2">
                    <a href="#" id="btn-cerrar-popup2" class="btn-cerrar-popup2"><i class="fas fa-times"></i></a>
                    <h3>Agregar Usuario</h3>
                    <h2>Ingresa los datos</h4>
                        <form action="bd/consultUser.jsp" method="post" name="update">
                            <div class="contenedor-etiquetas2">
                                <h4>Nombre</h4>
                                <h4>Puesto</h4>
                                <h4>Caja</h4>
                                <h4>Genero</h4>
                                <h4>Direcci�n</h4>
                                <h4>Telefono</h4>
                                <h4>Correo</h4>
                                <h4>Usuario</h4>
                                <h4>Contrase�a</h4>
                            </div> 
                            <div class="contenedor-inputs2">
                                <input type="text" name="nombre_com2" placeholder="Nombre completo" id="nombre_com2">
                                <select name="puesto2" class="select">
                                    <option selected value="0"> Elige una opci�n </option>
                                    <option value="1">Admistrador</option>
                                    <option value="2">Vendedor</option>
                                    <option value="3">Almacenista</option>
                                </select>
                                <select name="id_caja2" class="select">
                                    <option selected value="0"> Elige una opci�n </option>
                                    <option value="1">1</option>
                                </select>
                                <select name="genero2" class="select">
                                    <option selected value="0"> Elige una opci�n </option>
                                    <option value="1">Masculino</option>
                                    <option value="2">Femenino</option>
                                </select>
                                <input type="text" name="direccion2" placeholder="Direcci�n">
                                <input type="text" name="tel2" placeholder="Telefono">
                                <input type="text" name="email2" placeholder="Correo electr�nico">
                                <input type="text" name="usuario2" placeholder="Usuario">
                                <input type="text" name="contra2" placeholder="Contrase�a">
                            </div>
                            <br>
                            <input type="submit" class="btn-submit btn-block" name="guardar" value="Guardar">
                        </form>
                </div>
            </div>
        </div>

        <div class="page-wrapper default-theme sidebar-bg bg1 toggled">
            <nav id="sidebar" class="sidebar-wrapper">
                <div class="sidebar-content">
                    <!-- sidebar-brand  -->
                    <div class="sidebar-item sidebar-brand">
                        <span align="center">
                            <i class="fa fa-shoe-prints"></i>
                            MayLu
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
                                <a href="Punto-Venta-Admin.html">
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
                                <a href="reportes.html">
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
                                <a href="devoluciones.html">
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
                            <p>�Seguro que desea salir?</p>
                        </div>
                        <div class="modal_botones">
                            <a href="login.html" class="boton" id="btn-yes">SI</a>
                            <a href="#" class="boton" id="btn-no" onclick="NO()">NO</a>
                        </div>
                    </div>
                </div>
                <div id="overlay" class="overlay"></div>
                <section id="main-content">

                    <article>
                        <div id="divnombre">
                            <p id="pnombre"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16"
                                                 fill="currentColor" class="bi bi-person-fill" viewBox="0 0 16 16">
                                <path d="M3 14s-1 0-1-1 1-4 6-4 6 3 6 4-1 1-1 1H3zm5-6a3 3 0 1 0 0-6 3 3 0 0 0 0 6z" />
                                </svg> Nombre</p>
                        </div>
                        <div id="divcerrar">
                            <a href="login.html">
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
                        </header>

                        <div class="actualiza">
                            <h3>Agregar Usuario</h3>
                            <h2>Ingresa los datos</h4>
                                <form action="bd/consultUser.jsp" method="post" name="update">
                                    <div class="contenedor-etiquetas2">
                                        <h4>Nombre</h4>
                                        <h4>Puesto</h4>
                                        <h4>Caja</h4>
                                        <h4>Genero</h4>
                                        <h4>Direcci�n</h4>
                                        <h4>Telefono</h4>
                                        <h4>Correo</h4>
                                        <h4>Usuario</h4>
                                        <h4>Contrase�a</h4>
                                    </div>
                                    <div class="contenedor-inputs2">
                                        <input type="text" name="nombre_com2" placeholder="Nombre completo" id="nombre_com2">
                                        <select name="puesto2" class="select">
                                            <option selected value="0"> Elige una opci�n </option>
                                            <option value="1">Admistrador</option>
                                            <option value="2">Vendedor</option>
                                            <option value="3">Almacenista</option>
                                        </select>
                                        <select name="id_caja2" class="select">
                                            <option selected value="0"> Elige una opci�n </option>
                                            <option value="1">1</option>
                                        </select>
                                        <select name="genero2" class="select">
                                            <option selected value="0"> Elige una opci�n </option>
                                            <option value="1">Masculino</option>
                                            <option value="2">Femenino</option>
                                        </select>
                                        <input type="text" name="direccion2" placeholder="Direcci�n">
                                        <input type="text" name="tel2" placeholder="Telefono">
                                        <input type="text" name="email2" placeholder="Correo electr�nico">
                                        <input type="text" name="usuario2" placeholder="Usuario">
                                        <input type="text" name="contra2" placeholder="Contrase�a">
                                    </div>
                                    <br>
                                    <input type="submit" class="btn-submit btn-block" name="guardar" value="Guardar">
                                </form>
                        </div>
                        <br>
                        </div>
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

        <!-- using local scripts -->
        <!-- <script src="../node_modules/jquery/dist/jquery.min.js"></script>
        <script src="../node_modules/popper.js/dist/umd/popper.min.js"></script>
        <script src="../node_modules/bootstrap/dist/js/bootstrap.min.js"></script>
        <script src="../node_modules/malihu-custom-scrollbar-plugin/jquery.mCustomScrollbar.concat.min.js"></script> -->

        <script src="js/popups.js"></script>
        <script src="js/administrador/principal-admin.js"></script>

    </body>

</html>