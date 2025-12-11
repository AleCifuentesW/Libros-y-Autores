<%--formularioLibros: 
<%--Se encarga de desplegar en pantalla un formulario para agregar un nuevo libro a la lista de libros.--%>
<%--El formulario necesita dos <input> uno para el nombre del libro y otro para su autor.--%>
<%--Además del formulario agregar un botón para regresar a la vista de todos los libros.--%>
<%-- --%>
<%@ page contentType="text/html; charset=UTF-8" %>

<!DOCTYPE html>
<html>

<head>
    <title>Agregar Libro</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/styles.css">
</head>

<body>
    <div class="contenedor">
        <%--Se encarga de desplegar en pantalla un formulario para agregar un nuevo libro a la lista de libros.--%>
        <h1>Agregar un nuevo libro</h1>

        <form action="${pageContext.request.contextPath}/procesa/libro" method="post">
            <%--El formulario necesita dos <input> uno para el nombre del libro y otro para su autor.--%>
            <div>
                <label for="nombreLibro">Nombre del libro:</label><br>
                <input type="text" id="nombreLibro" name="nombreLibro" required>
            </div>

            <div>
                <label for="nombreAutor">Autor:</label><br>
                <input type="text" id="nombreAutor" name="nombreAutor" required>
            </div>
            <%--botón para guardar los libros--%>
            <div style="margin-top:10px;">
                <button type="submit">Guardar libro</button>
            </div>

        </form>
        <%--Además del formulario agregar un botón para regresar a la vista de todos los libros.--%>
        <p><a href="${pageContext.request.contextPath}/libros">Volver a la lista de libros</a></p>
    </div>
</body>
</html>
