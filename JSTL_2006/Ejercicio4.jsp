<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Ejercicio 4 - c:choose when otherwise</title>
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
                <span class="actual">Ejercicio 4</span>
            </nav>

            <h1 class="titulo-pagina">c:choose, c:when y c:otherwise</h1>
            <p class="subtitulo-pagina">Página de prueba del uso de choose, when y otherwise</p>

            <div class="tarjeta-panel">
                <div class="panel-top">Ejercicio 4</div>
                <div class="panel-body">
                    <form role="form" name="lenguaje" action="ProcesarC2.jsp" method="POST">
                        <div class="mb-3">
                            <label for="lenguaje" class="form-label">¿Cuál es tu lenguaje de programación favorito?</label>
                            <select name="lenguaje" id="lenguaje" class="form-control">
                                <option value="">--Seleccionar un Lenguaje</option>
                                <option value="Java">Java</option>
                                <option value="C++">C++</option>
                                <option value="Perl">Perl</option>
                            </select>
                        </div>
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
            <p class="mb-0">JSTL_2006 - Ejercicio 4 || <code>c:choose</code> / <code>c:when</code> / <code>c:otherwise</code></p>
            <p class="mb-0">JSTL 1.2</p>
        </div>
    </footer>
</body>
</html>
