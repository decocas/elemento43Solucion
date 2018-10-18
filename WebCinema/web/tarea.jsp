<%-- 
    Document   : tarea
    Created on : 16/10/2018, 12:41:47 PM
    Author     : USUARIO
--%>

<%@include file="conectar.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Calificar pelicula</title>
    </head>
    <body>
        <h1>Bienvenido!</h1>
        <%
        String idP=request.getParameter("idP");
        String numero=request.getParameter("numero");
        String idC=request.getParameter("idC");     
        String s="SELECT * FROM pelicula WHERE 1";
       ResultSet r= sentencia.executeQuery(s);
            while(r.next()!=false){
        out.print("<h2><th><tr>Nombre: </tr>"+
                          "<tr>ID Pelicula: </tr></th></h2> "+
                     "<td><h2>"+r.getString("nombre")+":    "+r.getString("id")+"</td></h2>");
                     }%><%
                          
           if(idP!=null && idC!=null && numero!=null){                     
       
            String a="INSERT INTO calificacion(id_p,cantidad,id_c) VALUES ('"+idP+"','"+Float.parseFloat(numero)+"',"
                    + "'"+idC+"')";
            
            sentencia.executeUpdate(a);
           out.println("calificacion registrada");
              out.println("<a href='index.html'><h1>regresar</h1></a>");
           }else{ 
        %>  <form   action="tarea.jsp" class="container" method="POST">
                     
                    <input type="text" name="idP" value="" required="required" placeholder="ID-PELICULA"/> <br>
                            
                    <input type="number" name="numero" value="" required="required" placeholder="PUNTAJE"/> <br>
                    
                    <input type="text" name="idC" value="" required="required" placeholder="ID-CLIENTE"/> <br>   
                                  
             <input type="submit"  value="aceptar" />
             <input type="reset"   value="borrar" />

        </form>
        <%}%>
    </body>
</html>
