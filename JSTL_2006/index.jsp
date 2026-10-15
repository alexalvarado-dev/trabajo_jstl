<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="x" uri="http://java.sun.com/jsp/jstl/xml" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/5.1.0/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    <link rel="stylesheet" href="../css/estilo.css">
    <title>JSTL_2006 - Ejercicios JSTL</title>
</head>
<body>
    <header class="container-fluid bg-danger d-flex justify-content-center">
        <p class="text-light mb-0 p-2 fs-6">Ejercicios JSTL - JSTL_2006</p>
    </header>

    <nav class="navbar navbar-expand-lg navbar-light p-3" id="menu">
        <div class="container">
            <a class="navbar-brand" href="../index.jsp">
                <span class="marca-icono"><i class="fas fa-book"></i></span>
                <span class="marca">JSTL_2006</span>
            </a>
            <div class="collapse navbar-collapse show">
                <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                    <li class="nav-item"><a class="nav-link active" href="index.jsp">Ejercicios</a></li>
                    <li class="nav-item"><a class="nav-link" href="../index.jsp">Inicio</a></li>
                </ul>
                <a class="btn btn-outline-dark" href="../index.jsp">Volver al inicio</a>
            </div>
        </div>
    </nav>

    <main class="contenido">
        <div class="container">
            <nav class="migas" aria-label="breadcrumb">
                <a href="../index.jsp">Inicio</a><span class="separador">/</span>
                <span class="actual">JSTL_2006</span>
            </nav>

            <h1 class="titulo-pagina">Ejercicios JSTL - JSTL_2006</h1>
            <p class="subtitulo-pagina">
                Núcleo de la librería con JSTL 1.2
            </p>

            <div class="alert alert-warning mb-4">
                <strong><i class="fas fa-circle-info me-1"></i> Compatibilidad:</strong>
                esta guía usa la API <code>javax</code> con <code>jstl-1.2.jar</code>, por lo que requiere
                <strong>Tomcat 9</strong> o inferior.
            </div>

            <div class="encabezado-seccion">
                <h2>Catálogo de ejercicios</h2>
                <span class="contador">8 ejercicios</span>
            </div>

            <div class="row g-4">
                <div class="col-12 col-md-6 col-xl-3">
                    <div class="card tarjeta-ejercicio h-100">
                        <div class="card-body d-flex flex-column">
                            <span class="numero">Ejercicio 1</span>
                            <h3>c:out</h3>
                            <p class="descripcion">Impresión de literales y expresiones aritméticas.</p>
                            <div class="acciones">
                                <a href="Ejercicio1.jsp" class="btn btn-outline-primary w-100">Abrir</a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-12 col-md-6 col-xl-3">
                    <div class="card tarjeta-ejercicio h-100">
                        <div class="card-body d-flex flex-column">
                            <span class="numero">Ejercicio 2</span>
                            <h3>c:set y parámetros</h3>
                            <p class="descripcion">Formulario, ámbito de variables y lectura de parámetros.</p>
                            <div class="acciones">
                                <a href="Ejercicio2.jsp" class="btn btn-outline-primary w-100">Abrir</a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-12 col-md-6 col-xl-3">
                    <div class="card tarjeta-ejercicio h-100">
                        <div class="card-body d-flex flex-column">
                            <span class="numero">Ejercicio 3</span>
                            <h3>c:if y c:redirect</h3>
                            <p class="descripcion">Validación de datos y redirección con mensaje de error.</p>
                            <div class="acciones">
                                <a href="Ejercicio3.jsp" class="btn btn-outline-primary w-100">Abrir</a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-12 col-md-6 col-xl-3">
                    <div class="card tarjeta-ejercicio h-100">
                        <div class="card-body d-flex flex-column">
                            <span class="numero">Ejercicio 4</span>
                            <h3>c:choose when otherwise</h3>
                            <p class="descripcion">Ramificaciones condicionales según el lenguaje elegido.</p>
                            <div class="acciones">
                                <a href="Ejercicio4.jsp" class="btn btn-outline-primary w-100">Abrir</a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-12 col-md-6 col-xl-3">
                    <div class="card tarjeta-ejercicio h-100">
                        <div class="card-body d-flex flex-column">
                            <span class="numero">Ejercicio 5</span>
                            <h3>c:catch</h3>
                            <p class="descripcion">Captura de excepciones sin abortar el renderizado.</p>
                            <div class="acciones">
                                <a href="Ejercicio5.jsp" class="btn btn-outline-primary w-100">Abrir</a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-12 col-md-6 col-xl-3">
                    <div class="card tarjeta-ejercicio h-100">
                        <div class="card-body d-flex flex-column">
                            <span class="numero">Ejercicio 6</span>
                            <h3>c:forEach</h3>
                            <p class="descripcion">Iteración con begin, end, step y varStatus.</p>
                            <div class="acciones">
                                <a href="Ejercicio6.jsp" class="btn btn-outline-primary w-100">Abrir</a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-12 col-md-6 col-xl-3">
                    <div class="card tarjeta-ejercicio h-100">
                        <div class="card-body d-flex flex-column">
                            <span class="numero">Ejercicio 7</span>
                            <h3>c:forTokens</h3>
                            <p class="descripcion">Tokenización de un texto a partir de un delimitador.</p>
                            <div class="acciones">
                                <a href="Ejercicio7.jsp" class="btn btn-outline-primary w-100">Abrir</a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-12 col-md-6 col-xl-3">
                    <div class="card tarjeta-ejercicio h-100">
                        <div class="card-body d-flex flex-column">
                            <span class="numero">Ejercicio 8</span>
                            <h3>SQL JSTL</h3>
                            <p class="descripcion">Alta de empleados con sql:update y consulta con sql:query.</p>
                            <div class="acciones">
                                <a href="Ejercicio8.jsp" class="btn btn-outline-primary w-100">Abrir</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </main>

    <footer>
        <div class="container py-4 d-flex flex-wrap justify-content-between align-items-center gap-2">
            <p class="mb-0 firma"><strong>Autores</strong> &copy; Derechos Reservados.</p>
            <p class="mb-0">JSTL_2006</p>
        </div>
    </footer>
</body>
</html>
