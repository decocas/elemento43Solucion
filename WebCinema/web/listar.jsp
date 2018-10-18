<%-- 
    Document   : Listar
    Created on : 14/10/2018, 07:22:50 PM
    Author     : USUARIO
--%>
<%@include file="conectar.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Listar peliculas</title>
    </head>
    <body>
        <h1>Bienvenido!</h1>
        <%out.println("<a href='index.html'><h1>regresar</h1></a>");%>
                <%
                 String nombre=request.getParameter("nombre");
                 String id=request.getParameter("id");
               if (nombre!=null && id!=null){
                 String s="SELECT * FROM teatro WHERE nombre='"+nombre+"' and id='"+id+"' ";
                                 
                 if(sentencia.executeQuery(s)!=null){   
                 String s1="SELECT  nombre,cantidad FROM calificacion,pelicula WHERE id_t='"+id+"' ";
                         
            ResultSet r= sentencia.executeQuery(s1);
            while (r.next() !=false){
             
            out.print("<h2><tr>Nombre: "+r.getString("nombre")+" Cantidad: "+r.getString("cantidad")+"<td></h2> ");
            }
                                        
                 }else{
                   out.println("teatro no registrado");
                  out.println("<a href='index.html'><h1>regresar</h1></a>");
                      } 
                      }else{
                %>
        <form class="container" action="listar.jsp" method="POST">
     
     <input type="text"  name="nombre" value="" required="required"  placeholder="TEATRO"/><br>
     <input type="text"  name="id" value="" required="required"  placeholder="ID"/><br>
            
     
            <input type="submit"  value="buscar" />
            <input type="reset"   value="borrar" />

        </form>     
        <%}%>
        
    </body>
</html>
