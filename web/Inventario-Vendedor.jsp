<%-- 
    Document   : Inventario-Almacen
    Created on : 13/01/2021, 07:30:48 PM
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
        <title>MayLú - Almacén</title>

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
                    <h3>Agregar Producto</h3>
                    <h4>Ingresa los datos</h4>
                    <form action="">
                        <div class="contenedor-etiquetas">
                            <h4>Modelo</h4>
                            <h4>Proveedor</h4>
                            <h4>Número</h4>
                            <h4>Color</h4>
                            <h4>Precio Compra</h4>
                            <h4>Precio Venta</h4>
                            <h4>Stock</h4>
                        </div>
                        <div class="contenedor-inputs">

                            <input type="text" placeholder="Modelo">

                            <select name="Proveedor" class="select">
                                <option selected value="0"> Elige una opción </option>
                                <option value="1">Windows Vista</option>
                                <option value="2">Windows 7</option>
                                <option value="3">Windows XP</option>
                                <option value="4">Fedora</option>
                                <option value="5">Debian</option>
                                <option value="6">Suse</option>
                            </select>

                            <input type="text" placeholder="Número">

                            <input type="text" placeholder="Color">

                            <input type="text" placeholder="Precio Compra">

                            <input type="text" placeholder="Precio Venta">

                            <input type="text" placeholder="Stock">
                        </div>
                        <div class="contenedor-imagen">
                            <input type="file" placeholder="Cargar">
                        </div>
                        <br>
                        <input type="submit" class="btn-submit" value="Guardar">
                    </form>
                </div>
            </div>
        </div>


        <div id="container">
            <div class="overlay2" id="overlay2">
                <div class="popup2" id="popup2">
                    <a href="#" id="btn-cerrar-popup2" class="btn-cerrar-popup2"><i class="fas fa-times"></i></a>
                    <h3>Actualizar Producto</h3>
                    <h4>Ingresa los datos</h4>
                    <form action="">
                        <div class="contenedor-etiquetas2">
                            <h4>Modelo</h4>
                            <h4>Proveedor</h4>
                            <h4>Talla</h4>
                            <h4>Color</h4>
                            <h4>Precio Compra</h4>
                            <h4>Precio Venta</h4>
                            <h4>Stock</h4>
                        </div>
                        <div class="contenedor-inputs2">

                            <input type="text" placeholder="Modelo">

                            <select name="Proveedor" class="select">
                                <option selected value="0"> Elige una opción </option>
                                <option value="1">Windows Vista</option>
                                <option value="2">Windows 7</option>
                                <option value="3">Windows XP</option>
                                <option value="10">Fedora</option>
                                <option value="11">Debian</option>
                                <option value="12">Suse</option>
                            </select>

                            <input type="text" placeholder="Talla">

                            <input type="text" placeholder="Color">

                            <input type="text" placeholder="Precio Compra">

                            <input type="text" placeholder="Precio Venta">

                            <input type="text" placeholder="Stock">
                        </div>
                        <div class="contenedor-imagen">
                            <input type="file" placeholder="Cargar">
                        </div>
                        <br>
                        <input type="submit" class="btn-submit" value="Guardar">
                    </form>
                </div>
            </div>
        </div>

        <div class="page-wrapper default-theme sidebar-bg bg1 toggled">
            <nav id="sidebar" class="sidebar-wrapper">
                <div class="sidebar-content">
                    <!-- sidebar-brand  -->
                    <div class="sidebar-item sidebar-brand">
                        <a href="#" align="center">
                            <i class="fa fa-shoe-prints"></i>
                            MayLú</a>
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
                            <span class="user-role">Almacén</span>
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
                                <a href="principal-vendedor.jsp">
                                    <i class="fa fa-tachometer-alt"></i>
                                    <span class="menu-text">Dashboard</span>
                                </a>
                            </li>
                            <li>
                                <a href="PuntoVenta-Vendedor.jsp">
                                    <i class="fa fa-shopping-cart"></i>
                                    <span class="menu-text">Punto de Venta</span>
                                </a>
                            </li>
                            <li>
                                <a href="Inventario-Vendedor.jsp">
                                    <i class="fa fa-warehouse"></i>
                                    <span class="menu-text">Inventario</span>
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
                            <button class="btn-tiny btn-danger">
                                Cerrar Sesión <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16"
                                                   fill="currentColor" class="bi bi-box-arrow-right" viewBox="0 0 16 16">
                                <path fill-rule="evenodd"
                                      d="M10 12.5a.5.5 0 0 1-.5.5h-8a.5.5 0 0 1-.5-.5v-9a.5.5 0 0 1 .5-.5h8a.5.5 0 0 1 .5.5v2a.5.5 0 0 0 1 0v-2A1.5 1.5 0 0 0 9.5 2h-8A1.5 1.5 0 0 0 0 3.5v9A1.5 1.5 0 0 0 1.5 14h8a1.5 1.5 0 0 0 1.5-1.5v-2a.5.5 0 0 0-1 0v2z" />
                                <path fill-rule="evenodd"
                                      d="M15.854 8.354a.5.5 0 0 0 0-.708l-3-3a.5.5 0 0 0-.708.708L14.293 7.5H5.5a.5.5 0 0 0 0 1h8.793l-2.147 2.146a.5.5 0 0 0 .708.708l3-3z" />
                                </svg></button>
                        </div>
                        <header id="encabezado">
                            <img id="img-inventario" class="img-responsive img-rounded" src="img/inventario.png"
                                 height="150" width="150" alt="Inventario picture">
                            <br>
                            <br>
                            <h1>Inventario</h1>
                        </header>

                        <div id="container1">
                            <div>
                                <div class="field" id="searchform">
                                    <input type="text" id="searchterm" placeholder="Ingresar Modelo" />
                                    <button type="button" id="search">Buscar</button>
                                </div>
                            </div>


                        </div>

                        <div class="table-responsive">
                            <table class="table table-hover" id="tablee">
                                <thead>
                                    <tr>
                                        <th>Modelo</th>
                                        <th>Proveedor</th>
                                        <th>Descripción</th>
                                        <th>Número</th>
                                        <th>Color</th>
                                        <th>Precio Compra</th>
                                        <th>Precio Venta</th>
                                        <th>Stock</th>
                                    </tr>
                                </thead>

                                <tbody>
                                    <tr>
                                        <%
                                            Connection con = null;
                                            Statement sta = null;
                                            ResultSet rs = null;

                                            try {
                                                Class.forName("com.mysql.jdbc.Driver");
                                                con = DriverManager.getConnection("jdbc:mysql://localhost/bdmaylu?user=root&password=");

                                                sta = con.createStatement();
                                                rs = sta.executeQuery("SELECT * FROM zapato");

                                                while (rs.next()) {
                                        %>
                                    </tr>
                                    <tr>

                                        <td><%= rs.getString("modelo")%></td>
                                        <td><%=rs.getString("proveedor")%></td>
                                        <td><%=rs.getString("talla")%></td>
                                        <td><%=rs.getString("color")%></td>
                                        <td><%=rs.getString("precio_compra")%></td>
                                        <td><%=rs.getString("precio_venta")%></td>
                                        <td><%=rs.getString("descuento")%></td>
                                        <td><%=rs.getString("stock")%></td>
                                    </tr>
                                    <tr>
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
            <!--page-content" -->
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
        <script src="js/almacen/principal-almacen.js"></script>

    </body>

</html>