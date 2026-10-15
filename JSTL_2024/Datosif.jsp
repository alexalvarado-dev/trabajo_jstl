<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Ejercicio 3 - c:if y c:redirect</title>
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
                <span class="actual">Datosif</span>
            </nav>
            <h1 class="titulo-pagina">Datos de una Persona</h1>
            <p class="subtitulo-pagina">Validación de campos obligatorios con c:if</p>

            <div class="tarjeta-panel">
                <div class="panel-top" id="titulo">Ingrese los datos de la persona</div>
                <div class="panel-body">
                    <form action="Procesarif.jsp" name="persona" method="post">
                        <div id="numeros">
                            <div class="input-group mb-2">
                                <span class="input-group-text">Nombre:</span>
                                <input type="text" name="nombre" id="nombre" placeholder="Digite el Nombre" class="form-control">
                            </div>
                            <div class="input-group mb-2">
                                <span class="input-group-text">Primer Apellido:</span>
                                <input type="text" name="apellido1" id="apellido1" placeholder="Primer Apellido" class="form-control">
                            </div>
                            <div class="input-group mb-2">
                                <span class="input-group-text">Segundo Apellido:</span>
                                <input type="text" name="apellido2" id="apellido2" placeholder="Segundo Apellido" class="form-control">
                            </div>
                        </div>
                        <div class="d-flex justify-content-center mt-3">
                            <button type="submit" class="btn btn-success" name="enviar">Enviar Informacion</button>
                        </div>
                        <c:if test="${not empty param.error}">
                            <div class="alert alert-danger mt-3 mb-0">
                                <strong>Error!</strong> <c:out value="${param.error}"/>
                            </div>
                        </c:if>
                    </form>
                </div>
            </div>
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
