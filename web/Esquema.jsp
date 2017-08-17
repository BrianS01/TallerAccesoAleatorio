<%-- 
 *  TALLER ARCHIVOS ACCESO ALEATORIO
 *  co-Author ::: Juan Albarracin
 *  co-Author ::: Mario Bolaños
 *  co-Author ::: Brian Sterling
 *  Professor ::: Fabian Giraldo
 *    Program ::: Bases de Datos
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        
        
                    <%
                String respuesta = (String) request.getAttribute("respuesta");
                if (respuesta != null && respuesta.length() > 0) 
                {
            %>
            <h1><%=respuesta%></h1>
            <%
                }
            %>
            <%--Action: URL del Servlet --%>
            <form action="Controlador" method="POST">
                <input type="text" name="saludo"/>
                <input type="submit" name="enviar"/>
            </form>
            <%
                ArrayList<String> array = (ArrayList) request.getAttribute("array");
                if (array != null)
                {
            %>       
            <h1>Resultado Lista </h1>
            <%               
                    for (String elemento : array)
                    {
            %>
            <h2><%=elemento%>
            <%
                    }
                }
            %>
    </body>
</html>