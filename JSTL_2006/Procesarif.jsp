<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Ejercicio 3 - Procesar c:if</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/5.1.0/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    <link rel="stylesheet" href="../css/estilo.css">
</head>
<body>
    <c:if test="${empty param.nombre}">
        <c:redirect url="Ejercicio3.jsp">
            <c:param name="error" value="Nombre obligatorio"/>
        </c:redirect>
    </c:if>
    <c:if test="${empty param.apellido1}">
        <c:redirect url="Ejercicio3.jsp">
            <c:param name="error" value="Primer apellido obligatorio"/>
        </c:redirect>
    </c:if>

    <div id="encabezado" class="w-100 d-flex flex-row justify-content-between align-items-center px-3 py-2">
        <div>
            <img src="../img/javalog2.png" alt="Java">
        </div>
        <div>
            <a href="Ejercicio3.jsp" class="btn btn-outline-light">Atras</a>
        </div>
    </div>

    <main class="contenido">
        <div class="container">
            <nav class="migas" aria-label="breadcrumb">
                <a href="../index.jsp">Inicio</a><span class="separador">/</span>
                <a href="index.jsp">JSTL_2006</a><span class="separador">/</span>
                <a href="Ejercicio3.jsp">Ejercicio 3</a><span class="separador">/</span>
                <span class="actual">Resultado</span>
            </nav>

            <h1 class="titulo-pagina">Imprimiendo parámetros con JSTL</h1>
            <p class="subtitulo-pagina">Parámetros validados con c:if antes de imprimirlos</p>

            <div class="tarjeta-panel">
                <div class="panel-top">Imprimiendo parámetros con JSTL</div>
                <div class="panel-body">
                    <div class="dato-fila">
                        <span class="etiqueta">Nombre</span>
                        <span class="valor"><c:out value="${param.nombre}" /></span>
                    </div>
                    <div class="dato-fila">
                        <span class="etiqueta">Primer apellido</span>
                        <span class="valor"><c:out value="${param.apellido1}" /></span>
                    </div>
                    <div class="dato-fila">
                        <span class="etiqueta">Segundo apellido</span>
                        <span class="valor"><c:out value="${param.apellido2}" /></span>
                    </div>
                </div>
            </div>

            <div class="d-flex justify-content-between align-items-center mt-4">
                <a href="Ejercicio3.jsp" class="btn btn-link">Volver al ejercicio</a>
            </div>
        </div>
    </main>

    <footer>
        <div class="container py-4 d-flex flex-wrap justify-content-between align-items-center gap-2">
            <p class="mb-0">JSTL_2006 - Ejercicio 3 || validación con c:if y c:redirect</p>
            <p class="mb-0">JSTL 1.2</p>
        </div>
    </footer>
</body>
</html>
