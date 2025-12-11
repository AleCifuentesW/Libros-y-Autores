<%--detalleLibro.jsp:
Se encarga de desplegar en pantalla la información del libro actual: nombre del libro y su autor.
Si el libro no se encuentra mostrar el mensaje «El libro no se encuentra en nuestra lista.».
Agregar un botón para regresar a la vista de todos los libros.--%>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>Detalle del Libro</title>
    <link rel="stylesheet" href="/css/styles.css">
</head>

<body>
    <%--Se encarga de desplegar en pantalla la información del libro actual: nombre del libro y su autor.--%>
    <div class="contenedor">
        <h1>Detalle del Libro</h1>
        <%--Si el libro no se encuentra mostrar el mensaje «El libro no se encuentra en nuestra lista.».--%>
        <c:if test="${not empty Auch}">
            <p class="error"> 
                <c:out value="${Auch}"></c:out>
            </p>
        </c:if>

        <c:if test="${empty Auch}">
        
            <p class="libro">
            Nombre libro:
            <c:out value="${nombreLibro}"></c:out>
            </p>

            <p class="autor">
                Autor:
            <c:out value="${nombreAutor}"></c:out>
            </p>
        </c:if>

        <%--Agregar un botón para regresar a la vista de todos los libros.--%>
        <a href="/libros" class="btn">Volver a la lista de libros</a>
    </div>
</body>
</html>
