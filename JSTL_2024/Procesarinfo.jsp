<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%@ include file="../WEB-INF/jspf/conexion.jspf" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Ejercicio 8 - Resultado SQL</title>
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
                <a class="btn btn-outline-dark" href="Sql.jsp">Volver</a>
            </div>
        </div>
    </nav>

    <c:set var="nombres" value="${param.nombres}"/>
    <c:set var="apellido1" value="${param.apellido1}"/>
    <c:set var="apellido2" value="${param.apellido2}"/>
    <c:set var="edad" value="${param.edad}"/>

    <c:if test="${not empty nombres}">
        <sql:update var="insertar" dataSource="${empleados}">
            insert into empleados (nombres, apellido1, apellido2, edad)
            values (?, ?, ?, ?)
            <sql:param value="${nombres}"/>
            <sql:param value="${apellido1}"/>
            <sql:param value="${apellido2}"/>
            <sql:param value="${edad}"/>
        </sql:update>
    </c:if>

    <main class="contenido">
        <div class="container">
            <nav class="migas" aria-label="breadcrumb">
                <a href="../index.jsp">Inicio</a><span class="separador">/</span>
                <a href="index.jsp">JSTL_2024</a><span class="separador">/</span>
                <a href="Sql.jsp">Ejercicio 8</a><span class="separador">/</span>
                <span class="actual">Empleados registrados</span>
            </nav>
            <h1 class="titulo-pagina">Empleados registrados</h1>
            <p class="subtitulo-pagina">Consulta de la tabla empleados con sql:query</p>

            <div class="panel">
                <div class="panel-heading">Empleados registrados</div>
                <div class="panel-body">
                    <table class="table table-striped mb-0">
                        <thead>
                            <tr>
                                <th>Id</th>
                                <th>Nombre</th>
                                <th>Apellidos</th>
                                <th>Edad</th>
                            </tr>
                        </thead>
                        <tbody>
                            <sql:query var="result" scope="request" dataSource="${empleados}">
                                select * from empleados;
                            </sql:query>
                            <c:forEach var="fila" items="${result.rows}">
                                <tr>
                                    <td><c:out value="${fila.id}"/></td>
                                    <td><c:out value="${fila.nombres}"/></td>
                                    <td><c:out value="${fila.apellido1}"/> <c:out value="${fila.apellido2}"/></td>
                                    <td><c:out value="${fila.edad}"/></td>
                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>
                </div>
            </div>

            <a href="Sql.jsp" class="btn btn-link">Volver al ejercicio</a>
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
