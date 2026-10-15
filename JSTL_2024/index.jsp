<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>JSTL_2024 - Ejercicios JSTL</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    <link rel="stylesheet" href="../css/estilo.css">
</head>
<body>
    <header class="container-fluid bg-danger d-flex justify-content-center">
        <p class="text-light mb-0 p-2 fs-6">Ejercicios JSTL - JSTL_2024</p>
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
                <span class="actual">JSTL_2024</span>
            </nav>
            <h1 class="titulo-pagina">Ejercicios JSTL — JSTL_2024</h1>
            <p class="subtitulo-pagina">Guía práctica de las etiquetas JSTL</p>

            <div class="alert alert-warning" role="alert">
                Cada ejercicio es independiente: ábrelo, envía sus datos y revisa el resultado generado por el servidor.
            </div>

            <div class="encabezado-seccion">
                <h2>Ejercicios</h2>
                <span class="contador">8 ejercicios</span>
            </div>

            <div class="row g-3" id="seccion-ejercicios">
                <div class="col-12 col-sm-6 col-xl-3">
                    <div class="card tarjeta-ejercicio">
                        <span class="numero">Ejercicio 1</span>
                        <h3>c:out</h3>
                        <p class="descripcion">Impresión de literales y expresiones aritméticas.</p>
                        <div class="acciones">
                            <a class="btn btn-primary w-100" href="Eje1.jsp">Abrir ejercicio</a>
                        </div>
                    </div>
                </div>

                <div class="col-12 col-sm-6 col-xl-3">
                    <div class="card tarjeta-ejercicio">
                        <span class="numero">Ejercicio 2</span>
                        <h3>c:set y parámetros</h3>
                        <p class="descripcion">Formulario, ámbito de variables y lectura de parámetros.</p>
                        <div class="acciones">
                            <a class="btn btn-primary w-100" href="Datos.jsp">Abrir ejercicio</a>
                        </div>
                    </div>
                </div>

                <div class="col-12 col-sm-6 col-xl-3">
                    <div class="card tarjeta-ejercicio">
                        <span class="numero">Ejercicio 3</span>
                        <h3>c:if y c:redirect</h3>
                        <p class="descripcion">Validación de datos y redirección con mensaje de error.</p>
                        <div class="acciones">
                            <a class="btn btn-primary w-100" href="Datosif.jsp">Abrir ejercicio</a>
                        </div>
                    </div>
                </div>

                <div class="col-12 col-sm-6 col-xl-3">
                    <div class="card tarjeta-ejercicio">
                        <span class="numero">Ejercicio 4</span>
                        <h3>c:choose when otherwise</h3>
                        <p class="descripcion">Ramificaciones condicionales según el lenguaje elegido.</p>
                        <div class="acciones">
                            <a class="btn btn-primary w-100" href="lenguaje.jsp">Abrir ejercicio</a>
                        </div>
                    </div>
                </div>

                <div class="col-12 col-sm-6 col-xl-3">
                    <div class="card tarjeta-ejercicio">
                        <span class="numero">Ejercicio 5</span>
                        <h3>c:catch</h3>
                        <p class="descripcion">Captura de excepciones sin abortar el renderizado.</p>
                        <div class="acciones">
                            <a class="btn btn-primary w-100" href="catch.jsp">Abrir ejercicio</a>
                        </div>
                    </div>
                </div>

                <div class="col-12 col-sm-6 col-xl-3">
                    <div class="card tarjeta-ejercicio">
                        <span class="numero">Ejercicio 6</span>
                        <h3>c:forEach</h3>
                        <p class="descripcion">Iteración con begin, end, step y varStatus.</p>
                        <div class="acciones">
                            <a class="btn btn-primary w-100" href="foreach.jsp">Abrir ejercicio</a>
                        </div>
                    </div>
                </div>

                <div class="col-12 col-sm-6 col-xl-3">
                    <div class="card tarjeta-ejercicio">
                        <span class="numero">Ejercicio 7</span>
                        <h3>c:forTokens</h3>
                        <p class="descripcion">Tokenización de un texto a partir de un delimitador.</p>
                        <div class="acciones">
                            <a class="btn btn-primary w-100" href="ForTokens.jsp">Abrir ejercicio</a>
                        </div>
                    </div>
                </div>

                <div class="col-12 col-sm-6 col-xl-3">
                    <div class="card tarjeta-ejercicio">
                        <span class="numero">Ejercicio 8</span>
                        <h3>SQL JSTL</h3>
                        <p class="descripcion">Alta de empleados con sql:update y consulta con sql:query.</p>
                        <div class="acciones">
                            <a class="btn btn-primary w-100" href="Sql.jsp">Abrir ejercicio</a>
                        </div>
                    </div>
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
