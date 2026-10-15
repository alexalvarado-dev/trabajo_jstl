<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%!int valor = 0;%><%-- Declarando variable tipo int. El parseo del parámetro lo hace Java; c:catch captura la excepción sin abortar la página --%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Ejercicio 5 - c:catch</title>
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
                <span class="actual">Uso de etiqueta catch</span>
            </nav>
            <h1 class="titulo-pagina">Uso de etiqueta catch</h1>
            <p class="subtitulo-pagina">Manejo de excepciones con c:catch sin abortar la página</p>

            <div class="panel">
                <div class="panel-heading">Resultado del intento de conversión</div>
                <div class="panel-body">
                    <c:catch var="error01">
                        <%
                            valor = Integer.parseInt(request.getParameter("parametro"));
                        %>
                    </c:catch>
                    <c:if test="${not empty error01}">
                        <div class="alert alert-danger mb-0">
                            <strong>Se produjo un error:</strong> ${error01}
                        </div>
                    </c:if>
                    <c:if test="${valor != 0 && empty error01}">
                        <div class="alert alert-info mb-0">
                            <strong>Valor recibido: <%out.print(valor);%></strong>
                        </div>
                    </c:if>
                </div>
            </div>

            <div class="encabezado-seccion">
                <h2>Pruebas</h2>
                <span class="contador">3 casos</span>
            </div>

            <div class="d-flex flex-row flex-wrap gap-2">
                <form role="form" action="catch.jsp">
                    <input type="hidden" name="parametro" value="prueba"/>
                    <input type="submit" class="btn btn-outline-dark" value="Enviar 'prueba'"/>
                </form>
                <form role="form" action="catch.jsp">
                    <input type="hidden" name="parametro" value="1234"/>
                    <input type="submit" class="btn btn-outline-info" value="Enviar '1234'"/>
                </form>
                <form role="form" action="catch.jsp">
                    <input type="submit" class="btn btn-outline-success" value="No enviar el parámetro"/>
                </form>
            </div>

            <a href="index.jsp" class="btn btn-link">Volver</a>
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
