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
    <link rel="stylesheet" href="css/estilo.css">
    <title>Trabajo JSTL - Ejercicios</title>
</head>
<body>
    <div class="barra-institucional">
        <div class="container d-flex justify-content-between align-items-center py-2 flex-wrap gap-2">
            <span class="titulo-barra"><i class="fas fa-layer-group me-2"></i>Trabajo JSTL</span>
            <span class="subtitulo-barra">JavaServer Pages Standard Tag Library</span>
        </div>
    </div>

    <main class="contenido">
        <div class="container">
            <div class="text-center mb-5">
                <span class="chip neutra mb-3 d-inline-block">Programación en Java</span>
                <h1 class="titulo-pagina">Ejercicios JSTL</h1>
                <p class="subtitulo-pagina mb-0">
                    JSTL_2006 (8 ejercicios) + JSTL_2024 (8 ejercicios) = 16 ejercicios
                </p>
            </div>

            <div class="alert alert-warning mb-5">
                <strong><i class="fas fa-circle-info me-1"></i> Librerías instaladas:</strong>
                JSTL_2006 usa JSTL 1.2 (<code>javax</code>, <code>jstl-1.2.jar</code>) y corre en <strong>Tomcat 9</strong>;
                JSTL_2024 usa JSTL 3.0 (<code>jakarta</code>, <code>jakarta.servlet.jsp.jstl</code>) y corre en <strong>Tomcat 10/11</strong>.
            </div>

            <div class="encabezado-seccion">
                <h2>Selecciona una guía</h2>
                <span class="contador">2 guías disponibles</span>
            </div>

            <div class="row g-4">
                <div class="col-12 col-lg-6">
                    <div class="card tarjeta-guia h-100">
                        <div class="card-body d-flex flex-column">
                            <div class="icono-guia"><i class="fas fa-book-open"></i></div>
                            <h2 class="card-title h5">JSTL_2006</h2>
                            <p class="card-text text-muted mb-3">
                                Núcleo de la librería:
                                <code>c:out</code>, <code>c:set</code>, <code>c:if</code>, <code>c:choose</code>,
                                <code>c:catch</code>, <code>c:forEach</code>, <code>c:forTokens</code> y SQL.
                            </p>
                            <div class="meta">
                                <span class="chip neutra">JSTL 1.2</span>
                                <span class="chip neutra">javax.servlet</span>
                                <span class="chip neutra">Tomcat 9</span>
                            </div>
                            <a href="JSTL_2006/index.jsp" class="btn btn-primary w-100 mt-3">
                                <i class="fas fa-arrow-right me-2"></i>Ver ejercicios JSTL_2006
                            </a>
                        </div>
                    </div>
                </div>
                <div class="col-12 col-lg-6">
                    <div class="card tarjeta-guia verde h-100">
                        <div class="card-body d-flex flex-column">
                            <div class="icono-guia"><i class="fas fa-laptop-code"></i></div>
                            <h2 class="card-title h5">JSTL_2024</h2>
                            <p class="card-text text-muted mb-3">
                                Núcleo de la librería:
                                <code>c:out</code>, <code>c:set</code>, <code>c:if</code>, <code>c:choose</code>,
                                <code>c:catch</code>, <code>c:forEach</code>, <code>c:forTokens</code> y SQL.
                            </p>
                            <div class="meta">
                                <span class="chip verde">JSTL 3.0</span>
                                <span class="chip verde">jakarta.servlet</span>
                                <span class="chip verde">Tomcat 10/11</span>
                            </div>
                            <a href="JSTL_2024/index.jsp" class="btn btn-success w-100 mt-3">
                                <i class="fas fa-arrow-right me-2"></i>Ver ejercicios JSTL_2024
                            </a>
                        </div>
                    </div>
                </div>
            </div>

            <hr class="separador">

            <div class="row g-3 text-center">
                <div class="col-12 col-md-4">
                    <div class="d-flex flex-column align-items-center gap-1">
                        <span class="chip">c:out</span>
                        <span class="small text-muted">Salida y escapado de valores</span>
                    </div>
                </div>
                <div class="col-12 col-md-4">
                    <div class="d-flex flex-column align-items-center gap-1">
                        <span class="chip">c:set / c:if / c:choose</span>
                        <span class="small text-muted">Variables, condiciones y ramificaciones</span>
                    </div>
                </div>
                <div class="col-12 col-md-4">
                    <div class="d-flex flex-column align-items-center gap-1">
                        <span class="chip">c:forEach / c:forTokens</span>
                        <span class="small text-muted">Iteración y tokenización</span>
                    </div>
                </div>
            </div>
        </div>
    </main>

    <footer>
        <div class="container py-4 d-flex flex-wrap justify-content-between align-items-center gap-2">
            <p class="mb-0">Derechos reservados &copy; Trabajo JSTL — Programación en Java</p>
        </div>
    </footer>
</body>
</html>
