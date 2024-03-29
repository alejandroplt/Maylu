<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html lang="es">

    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="description"
              content="Responsive sidebar template with sliding effect and dropdown menu based on bootstrap 3">

        <title>MayL� - Administrador</title>    
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

        <div id="container">
            <div class="overlay" id="overlay">
                <div class="popup" id="popup">
                    <a href="#" id="btn-cerrar-popup" class="btn-cerrar-popup"><i class="fas fa-times"></i></a>
                    <h3>Agregar Proveedor</h3>
                    <h4>Ingresa los datos</h4>
                    <h5>* Campo obligatorio</h5>
                    <form action="insertProveedor.jsp" method="POST">
                        <div class="contenedor-etiquetas">
                            <h4>* Nombre</h4>
                            <h4>* Agente</h4>
                            <h4>* Direccion</h4>
                            <h4>* Telefono</h4>
                            <h4>* Correo</h4>
                        </div>
                        <div class="contenedor-inputs">

                            <input type="text" name="nombre_empresa" placeholder="Nombre de la empresa">

                            <input type="text" name="nombre_agente" placeholder="Nombre del agente">

                            <input type="text" name="direccion" placeholder="Direccion">

                            <input type="text" name="tel" placeholder="Telefono">

                            <input type="text" name="email" placeholder="Correo electronico">

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
                            MayL�
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
                                    <span class="menu-text" onclick="cierra()">Cerrar sesi�n</span>
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
                            <a href="login.jsp" class="boton" id="btn-yes">SI</a>
                            <a href="#" class="boton" id="btn-no" onclick="NO()">NO</a>
                        </div>
                    </div>
                </div>
                <div id="overlay" class="overlay"></div>
                <section id="main-content">

                    <article>
                        <div id="divcerrar">
                            <a href="login.html">
                                <button class="btn-tiny btn-danger">
                                    Cerrar Sesi�n <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16"
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
                            <img id="img-inventario" class="img-responsive img-rounded" src="img/prove.png" height="150"
                                 width="150" alt="Proveedor picture">
                            <br>
                            <br>
                            <h1>Proveedores</h1>
                            <%
                                Connection con = null;
                                Statement sta = null;
                                ResultSet rs = null;

                                try {
                                    Class.forName("com.mysql.jdbc.Driver");
                                    con = DriverManager.getConnection("jdbc:mysql://localhost/bdmaylu?user=root&password=");
                                    sta = con.createStatement();

                                    rs = sta.executeQuery("SELECT * FROM proveedor ");
                            %> 
                        </header>

                        <div id="container1">
                            <form>

                                <div class="field" id="searchform">
                                    <input type="text" id="searchterm" name="ingresapro"placeholder="Ingresar nombre del proveedor" />
                                    <input class="btn btn" type="submit" id="search" value="Buscar"/>
                                    <button type="button" id="btn-abrir-popup"><svg xmlns="http://www.w3.org/2000/svg" width="25" height="25" fill="currentColor" class="bi bi-plus-circle-fill" viewBox="0 0 16 16">
                                        <path d="M16 8A8 8 0 1 1 0 8a8 8 0 0 1 16 0zM8.5 4.5a.5.5 0 0 0-1 0v3h-3a.5.5 0 0 0 0 1h3v3a.5.5 0 0 0 1 0v-3h3a.5.5 0 0 0 0-1h-3v-3z"/>
                                        </svg> Agregar</button>
                                </div>
                            </form>
                            <%
                            String id_proveedor = request.getParameter("ingresapro");
                                if (id_proveedor != null) {
                                    sta = con.createStatement();

                                    rs = sta.executeQuery("SELECT * FROM proveedor WHERE id_proveedor = '" + id_proveedor + "'");
                                } else {
                                    System.out.println("Error");
                                }
                            %>
                        </div>
                        
                        <div class="table-responsive">
                            <table border="1" class="table table-hover table-bordered" id="tabla">
                                <thead>
                                    <tr>
                                        <th>Nombre empresa</th>
                                        <th>Nombre agente</th>
                                        <th>Direccion</th>
                                        <th>Telefono</th>
                                        <th>Correo</th>
                                        <th>Opciones</th>
                                    </tr>
                                </thead>

                                <tbody>

                                    <tr>
                                        <%
                                            while (rs.next()) {
                                        %>

                                    <tr>

                                        <td><%= rs.getString("nombre_empresa")%></td>
                                        <td><%=rs.getString("nombre_agente")%></td>
                                        <td><%= rs.getString("direccion")%></td>
                                        <td><%=rs.getString("tel")%></td>
                                        <td><%=rs.getString("email")%></td>

                                        <td>
                                            <a href="editProveedor.jsp?id_proveedor=<%=rs.getString("id_proveedor")%>">
                                                <!--<button id="btn-abrir-popup2" class=" btn-abrir-popup2 btn btn-warning">-->
                                                <button class="btn btn-warning">
                                                    <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16"
                                                         fill="currentColor" class="bi bi-arrow-repeat" viewBox="0 0 16 16">
                                                    <path
                                                        d="M11.534 7h3.932a.25.25 0 0 1 .192.41l-1.966 2.36a.25.25 0 0 1-.384 0l-1.966-2.36a.25.25 0 0 1 .192-.41zm-11 2h3.932a.25.25 0 0 0 .192-.41L2.692 6.23a.25.25 0 0 0-.384 0L.342 8.59A.25.25 0 0 0 .534 9z" />
                                                    <path fill-rule="evenodd"

                                                          d="M8 3c-1.552 0-2.94.707-3.857 1.818a.5.5 0 1 1-.771-.636A6.002 6.002 0 0 1 13.917 7H12.9A5.002 5.002 0 0 0 8 3zM3.1 9a5.002 5.002 0 0 0 8.757 2.182.5.5 0 1 1 .771.636A6.002 6.002 0 0 1 2.083 9H3.1z" />
                                                    </svg>

                                                </button>
                                            </a>
                                            <a href="deleteProveedor.jsp?id_proveedor=<%=rs.getString("id_proveedor")%>">
                                                <button class="btn btn-danger">
                                                    <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16"
                                                         fill="currentColor" class="bi bi-trash-fill" viewBox="0 0 16 16">
                                                    <path fill-rule="evenodd"
                                                          d="M2.5 1a1 1 0 0 0-1 1v1a1 1 0 0 0 1 1H3v9a2 2 0 0 0 2 2h6a2 2 0 0 0 2-2V4h.5a1 1 0 0 0 1-1V2a1 1 0 0 0-1-1H10a1 1 0 0 0-1-1H7a1 1 0 0 0-1 1H2.5zm3 4a.5.5 0 0 1 .5.5v7a.5.5 0 0 1-1 0v-7a.5.5 0 0 1 .5-.5zM8 5a.5.5 0 0 1 .5.5v7a.5.5 0 0 1-1 0v-7A.5.5 0 0 1 8 5zm3 .5a.5.5 0 0 0-1 0v7a.5.5 0 0 0 1 0v-7z" />
                                                    </svg>
                                                </button>
                                            </a>
                                        </td>
                                    </tr>
                                    <%
                                            }
                                            sta.close();
                                            rs.close();
                                            con.close();

                                        } catch (Exception e) {
                                        }
                                    %>
                                    </tr>
                                </tbody>
                            </table>
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

        <script src="js/popups.js"></script>
        <script src="js/administrador/principal-admin.js"></script>
    </body>
</html>
