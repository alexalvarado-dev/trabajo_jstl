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
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    <link rel="stylesheet" href="../css/estilo.css">
</head>
<body>
    <header class="container-fluid bg-danger d-flex justify-content-center">
        <p class="text-light mb-0 p-2 fs-6">Ejercicios JSTL</p>
    </header>
    <nav class="navbar navbar-expand-lg navbar-light p-3" id="menu">
        <div class="container">
            <a class="navbar-brand" href="index.jsp">
                <span class="marca-icono"><i class="fas fa-code"></i></span>
                <span class="marca">Ejercicios JSTL</span>
            </a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarJstl">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarJstl">
                <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                    <li class="nav-item"><a class="nav-link" href="index.jsp">JSTL_2024</a></li>
                    <li class="nav-item"><a class="nav-link" href="../index.jsp">Inicio</a></li>
                </ul>
                <a class="btn btn-outline-dark" href="index.jsp">Volver al inicio</a>
            </div>
        </div>
    </nav>

    <main class="contenido">
        <div class="container">
            <nav class="migas" aria-label="breadcrumb">
                <a href="../index.jsp">Inicio</a><span class="separador">/</span>
                <a href="index.jsp">JSTL_2024</a><span class="separador">/</span>
                <a href="Datos.jsp">Ejercicio 2</a><span class="separador">/</span>
                <span class="actual">c:set por ámbito</span>
            </nav>
            <h1 class="titulo-pagina">Uso de la etiqueta c:set</h1>
            <p class="subtitulo-pagina">Variables almacenadas por ámbito: page, session y application</p>

            <div class="panel">
                <div class="panel-heading">Variables por ámbito</div>
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

            <a href="Datos.jsp" class="btn btn-link">Volver al ejercicio</a>
        </div>
    </main>

    <footer>
        <div class="container py-4 d-flex flex-wrap justify-content-between align-items-center gap-2">
            <p class="mb-0 firma">&copy; Derechos Reservados.</p>
            <p class="mb-0">JSTL_2024</p>
        </div>
    </footer>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
