<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Ejercicio 6 - c:forEach</title>
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
                <span class="actual">Ejercicio 6</span>
            </nav>

            <h1 class="titulo-pagina">Uso de c:forEach</h1>
            <p class="subtitulo-pagina">Recorrido de 1 a 24 de dos en dos con varStatus</p>

            <div class="panel">
                <div class="panel-heading">Iteraciones generadas</div>
                <div class="panel-body">
                    <ul class="listado-resultados">
                        <c:forEach begin="1" end="24" step="2" var="hour" varStatus="status">
                            <li>
                                <span><c:out value="${hour}"/></span>
                                <c:if test="${status.first}">
                                    <span class="marca">Estoy en uno</span>
                                </c:if>
                                <c:if test="${status.count == 5}">
                                    <span class="marca">Estoy en la iteración numero 5</span>
                                </c:if>
                            </li>
                        </c:forEach>
                    </ul>
                </div>
            </div>

            <div class="d-flex justify-content-between align-items-center mt-4">
                <a href="index.jsp" class="btn btn-link">Volver al inicio de la guía</a>
            </div>
        </div>
    </main>

    <footer>
        <div class="container py-4 d-flex flex-wrap justify-content-between align-items-center gap-2">
            <p class="mb-0">JSTL_2006 - Ejercicio 6 || <code>c:forEach</code> con varStatus</p>
            <p class="mb-0">JSTL 1.2</p>
        </div>
    </footer>
</body>
</html>
