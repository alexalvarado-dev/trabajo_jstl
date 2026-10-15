<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Ejercicio 4 - Procesar c:choose</title>
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
            <a href="Ejercicio4.jsp" class="btn btn-outline-light">Atras</a>
        </div>
    </div>

    <main class="contenido">
        <div class="container">
            <nav class="migas" aria-label="breadcrumb">
                <a href="../index.jsp">Inicio</a><span class="separador">/</span>
                <a href="index.jsp">JSTL_2006</a><span class="separador">/</span>
                <a href="Ejercicio4.jsp">Ejercicio 4</a><span class="separador">/</span>
                <span class="actual">Resultado</span>
            </nav>

            <h1 class="titulo-pagina">Resultado</h1>
            <p class="subtitulo-pagina">Descripción del lenguaje seleccionado con c:choose</p>

            <div class="tarjeta-panel">
                <div class="panel-top">Resultado</div>
                <div class="panel-body">
                    <c:choose>
                        <c:when test="${param.lenguaje == 'Java'}">
                            <div class="dato-fila">
                                <span class="etiqueta">Lenguaje</span>
                                <span class="valor"><span class="chip">Java</span> El rey de los lenguajes orientados a objetos</span>
                            </div>
                        </c:when>
                        <c:when test="${param.lenguaje == 'C++'}">
                            <div class="dato-fila">
                                <span class="etiqueta">Lenguaje</span>
                                <span class="valor"><span class="chip">C++</span> Ideal para aprender</span>
                            </div>
                        </c:when>
                        <c:when test="${param.lenguaje == 'Perl'}">
                            <div class="dato-fila">
                                <span class="etiqueta">Lenguaje</span>
                                <span class="valor"><span class="chip">Perl</span> Lenguaje de scripting muy potente</span>
                            </div>
                        </c:when>
                        <c:otherwise>
                            <div class="dato-fila">
                                <span class="etiqueta">Lenguaje</span>
                                <span class="valor">No se seleccionó ninguno</span>
                            </div>
                        </c:otherwise>
                    </c:choose>
                </div>
            </div>

            <div class="d-flex justify-content-between align-items-center mt-4">
                <a href="Ejercicio4.jsp" class="btn btn-link">Volver al ejercicio</a>
            </div>
        </div>
    </main>

    <footer>
        <div class="container py-4 d-flex flex-wrap justify-content-between align-items-center gap-2">
            <p class="mb-0">JSTL_2006 - Ejercicio 4 || resultado con c:choose</p>
            <p class="mb-0">JSTL 1.2</p>
        </div>
    </footer>
</body>
</html>
