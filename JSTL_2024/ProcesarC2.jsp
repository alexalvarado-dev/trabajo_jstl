<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Ejercicio 4 - Procesar c:choose</title>
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
                    <li class="nav-item"><a class="nav-link" href="lenguaje.jsp">Lenguaje</a></li>
                </ul>
                <a class="btn btn-outline-dark" href="lenguaje.jsp">Volver</a>
            </div>
        </div>
    </nav>

    <main class="contenido">
        <div class="container">
            <nav class="migas" aria-label="breadcrumb">
                <a href="../index.jsp">Inicio</a><span class="separador">/</span>
                <a href="index.jsp">JSTL_2024</a><span class="separador">/</span>
                <a href="lenguaje.jsp">Lenguaje</a><span class="separador">/</span>
                <span class="actual">Resultado</span>
            </nav>
            <h1 class="titulo-pagina">Resultado</h1>
            <p class="subtitulo-pagina">Descripción obtenida con c:choose / c:when / c:otherwise</p>

            <div class="tarjeta-panel">
                <div class="panel-top">Lenguaje seleccionado</div>
                <div class="panel-body">
                    <c:choose>
                        <c:when test="${param.lenguaje == 'Java'}">
                            <p><span class="chip">Java</span> El rey de los lenguajes orientados a objetos</p>
                        </c:when>
                        <c:when test="${param.lenguaje == 'C++'}">
                            <p><span class="chip">C++</span> Ideal para aprender</p>
                        </c:when>
                        <c:when test="${param.lenguaje == 'Perl'}">
                            <p><span class="chip">Perl</span> Lenguaje de scripting muy potente</p>
                        </c:when>
                        <c:otherwise>
                            <p>No se seleccionó ninguno</p>
                        </c:otherwise>
                    </c:choose>
                </div>
            </div>

            <a href="lenguaje.jsp" class="btn btn-link">Volver</a>
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
