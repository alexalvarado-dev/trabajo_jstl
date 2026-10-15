<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Ejercicio 3 - c:if</title>
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
                <span class="actual">Ejercicio 3</span>
            </nav>

            <h1 class="titulo-pagina">Datos personales</h1>
            <p class="subtitulo-pagina">Validación con c:if y redirección con c:redirect</p>

            <div class="tarjeta-panel">
                <div class="panel-top">Ejercicio 3</div>
                <div class="panel-body">
                    <form role="form" name="persona" action="Procesarif.jsp" method="POST">
                        <div class="mb-3">
                            <label for="nombre" class="form-label">Ingrese su nombre:</label>
                            <input type="text" class="form-control" name="nombre" id="nombre" placeholder="Nombre">
                        </div>
                        <div class="mb-3">
                            <label for="apellido1" class="form-label">Ingrese su primer apellido:</label>
                            <input type="text" class="form-control" id="apellido1" name="apellido1" placeholder="Primer apellido">
                        </div>
                        <div class="mb-3">
                            <label for="apellido2" class="form-label">Ingrese su segundo apellido:</label>
                            <input type="text" class="form-control" id="apellido2" name="apellido2" placeholder="Segundo apellido">
                        </div>
                        <c:if test="${not empty param.error}">
                            <div class="alert alert-danger mb-3">
                                <strong>Error!</strong> <c:out value="${param.error}"/>
                            </div>
                        </c:if>
                        <hr class="separador">
                        <div class="d-flex justify-content-between flex-wrap gap-2">
                            <input type="submit" class="btn btn-primary" value="Enviar">
                            <a class="btn btn-link" href="index.jsp">Volver al inicio de la guía</a>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </main>

    <footer>
        <div class="container py-4 d-flex flex-wrap justify-content-between align-items-center gap-2">
            <p class="mb-0">JSTL_2006 - Ejercicio 3 || <code>c:if</code> + <code>c:redirect</code></p>
            <p class="mb-0">JSTL 1.2</p>
        </div>
    </footer>
</body>
</html>
