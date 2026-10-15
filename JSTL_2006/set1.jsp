<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<c:set var="variableDePagina" scope="page">Esta informacion se guarda en la pagina</c:set>
<c:set var="variableDeSesion" scope="session">Esta informacion se guarda en la sesion</c:set>
<c:set var="variableDeAplicacion" scope="application">Esta informacion se guarda en la aplicacion</c:set>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Ejercicio 2 - c:set por ámbito</title>
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
                <a href="Ejercicio2.jsp">Ejercicio 2</a><span class="separador">/</span>
                <span class="actual">c:set por ámbito</span>
            </nav>

            <h1 class="titulo-pagina">Uso de la etiqueta c:set</h1>
            <p class="subtitulo-pagina">Variables almacenadas en los ámbitos page, session y application</p>

            <div class="tarjeta-panel">
                <div class="panel-top">Variables por ámbito</div>
                <div class="panel-body">
                    <div class="dato-fila">
                        <span class="etiqueta">page</span>
                        <span class="valor">${variableDePagina}</span>
                    </div>
                    <div class="dato-fila">
                        <span class="etiqueta">session</span>
                        <span class="valor">${variableDeSesion}</span>
                    </div>
                    <div class="dato-fila">
                        <span class="etiqueta">application</span>
                        <span class="valor">${variableDeAplicacion}</span>
                    </div>
                </div>
            </div>

            <div class="d-flex justify-content-between align-items-center mt-4">
                <a href="Ejercicio2.jsp" class="btn btn-link">Volver al ejercicio</a>
            </div>
        </div>
    </main>

    <footer>
        <div class="container py-4 d-flex flex-wrap justify-content-between align-items-center gap-2">
            <p class="mb-0">JSTL_2006 - Ejercicio 2 || <code>c:set</code> con scope</p>
            <p class="mb-0">JSTL 1.2</p>
        </div>
    </footer>
</body>
</html>
