<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%!int valor = 0;%><%-- Declarando variable tipo int. El parseo del parámetro lo hace Java; c:catch captura la excepción sin abortar la página --%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Ejercicio 5 - c:catch</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/5.1.0/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    <link rel="stylesheet" href="../css/estilo.css">
</head>
<body>
    <div id="encabezado" class="w-100 d-flex flex-row justify-content-between align-items-center px-3 py-2">
        <div>
            <img src="../img/javalog2.png" alt="Java">
        </div>
        <div>
            <a href="index.jsp" class="btn btn-outline-light">Volver</a>
        </div>
    </div>

    <main class="contenido">
        <div class="container">
            <nav class="migas" aria-label="breadcrumb">
                <a href="../index.jsp">Inicio</a><span class="separador">/</span>
                <a href="index.jsp">JSTL_2006</a><span class="separador">/</span>
                <span class="actual">Ejercicio 5</span>
            </nav>

            <h1 class="titulo-pagina">Uso de la etiqueta c:catch</h1>
            <p class="subtitulo-pagina">Manejo de excepciones sin abortar el renderizado de la página</p>

            <div class="tarjeta-panel">
                <div class="panel-top">Resultado del intento de conversión</div>
                <div class="panel-body">
                    <c:catch var="error01">
                        <%valor = Integer.parseInt(request.getParameter("parametro")); %>
                    </c:catch>
                    <c:if test="${not empty error01}">
                        <div class="alert alert-danger">
                            <strong>Se produjo un error:</strong> ${error01}
                        </div>
                    </c:if>
                    <c:if test="${valor != 0 && empty error01}">
                        <div class="alert alert-info">
                            <strong>Valor recibido: <%out.print(valor);%></strong>
                        </div>
                    </c:if>
                </div>
            </div>

            <div class="encabezado-seccion mt-4">
                <h2>Pruebas</h2>
                <span class="contador">3 casos</span>
            </div>

            <div class="d-flex flex-row flex-wrap gap-2">
                <form role="form" action="Ejercicio5.jsp">
                    <input type="hidden" name="parametro" value="prueba"/>
                    <input type="submit" class="btn btn-outline-dark" value="Enviar 'prueba'"/>
                </form>
                <form role="form" action="Ejercicio5.jsp">
                    <input type="hidden" name="parametro" value="1234"/>
                    <input type="submit" class="btn btn-outline-info" value="Enviar '1234'"/>
                </form>
                <form role="form" action="Ejercicio5.jsp">
                    <input type="submit" class="btn btn-outline-success" value="No enviar el parámetro"/>
                </form>
            </div>

            <div class="d-flex justify-content-between align-items-center mt-4">
                <a href="index.jsp" class="btn btn-link">Volver al inicio de la guía</a>
            </div>
        </div>
    </main>

    <footer>
        <div class="container py-4 d-flex flex-wrap justify-content-between align-items-center gap-2">
            <p class="mb-0">JSTL_2006 - Ejercicio 5 || <code>c:catch</code></p>
            <p class="mb-0">JSTL 1.2</p>
        </div>
    </footer>
</body>
</html>
