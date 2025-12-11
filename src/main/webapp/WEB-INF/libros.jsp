<%--libros.jsp: 
Se encarga de desplegar en pantalla la lista de todos los libros sin inlcuir su autor. 
Cada libro es una etiqueta de <a> que contiene la referencia hacía la vista de detalle del mismo libro. --%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>Lista de todos los libros</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/styles.css">
</head>

<body>
    <div class="contenedor">
        <h1>Libros y Autores</h1>
        <%--Se encarga de desplegar en pantalla la lista de todos los libros sin inlcuir su autor. --%>
        <h2>Lista de libros</h2>
        <ul>
            <c:forEach var="libro" items="${listaLibros}">
                <li>
                <%--Cada libro es una etiqueta de <a> que contiene la referencia hacía la vista de detalle del mismo libro. --%>
                    <a href="${pageContext.request.contextPath}/libros/${libro}">
                        ${libro}
                    </a>
                </li>
            </c:forEach>
        </ul>
    
        <p><a href="${pageContext.request.contextPath}/libros/formulario" class="btn">Agregar nuevo libro</a></p>
    </div>
</body>
</html>
