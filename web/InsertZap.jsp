<%-- 
    Document   : InsertZap
    Created on : 14/01/2021, 02:56:30 PM
    Author     : AlejandroPlatas
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*,java.util.*"%>

<%
    if (request.getParameter("guardar") != null) {
        String modelo = request.getParameter("modelo");
        //int proveedor = Integer.parseInt(request.getParameter("proveedor"));
        int talla = Integer.parseInt(request.getParameter("talla"));
        //Blob img = request.getParameter("img");
        String color = request.getParameter("color");
        String descripcion=request.getParameter("descripcion");
        int precio_compra = Integer.parseInt(request.getParameter("precio_compra"));
        int precio_venta = Integer.parseInt(request.getParameter("precio_venta"));
        int existencias = Integer.parseInt(request.getParameter("existencias"));
        String proveedor = request.getParameter("proveedor");
        //int efectivo = Integer.parseInt(request.getParameter("efectivo"));
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/bdmaylu?user=root&password=");
            Statement st = conn.createStatement();

            int i = st.executeUpdate("insert into zapato(modelo,descripcion,talla,color,precio_compra,precio_venta,stock, existencias, proveedor)"
                    + "values('" + modelo +","+descripcion+ "'," + talla + ",'" + color + "'," + precio_compra + "," + precio_venta + "," + 5 + "," + existencias + ",'" + proveedor + "' )");
            //out.println("Agregado correctamente");

            request.getRequestDispatcher("Inventario-Administrador.jsp").forward(request, response);
            //RequestDispatcher dispatcher=getServletContext().getRequestDispatcher( "Maylu/build/web/AdminCaja.jsp" ); dispatcher.forward( request, response ); 
        } catch (Exception e) {
            System.out.print(e);
            e.printStackTrace();
        }
    }
%>