Tarea FullStack:
Libros y Autores 
Objetivos

Comprender y aplicar el concepto de rutas con PostMapping.
Aplicar formularios para conectar con rutas POST y mostrar su contenido con redireccionamiento.
Practicar la creación de controladores en la aplicación de Spring Boot.
 

Desarrollar una aplicación web en Spring Boot donde el usuario pueda agregar nombres de libros y sus respectivos autores a una lista. La información será almacenada en un HashMap.

 

Requerimientos

Crea un nuevo proyecto en llamado libros_y_autores.
Asigna el paquete base com.tunombre para que ahí se cree el archivo principal de la aplicación.
Agrega un paquete para tus controladores: com.tunombre.controladores.
Dentro de ese nuevo paquete agrega una clase llamada ControladorLibros.java
Agrega el siguiente atributo que contiene un HashMap para almacenar los nombres de los libros y sus autores:
private static HashMap<String, String> listaLibros = new HashMap<String, String>();
Ahora agrega el siguiente constructor que se encarga de llenar el HashMap con información de prueba de autores y libros:
public ControladorLibros() {
	listaLibros.put("Odisea", "Homero");	
	listaLibros.put("Don Quijote de la Mancha", "Miguel de Cervantes");
	listaLibros.put("El Código Da Vinci", "Dan Brown");		
	listaLibros.put("Alicia en el país de las maravillas", "Lewis Carroll");
	listaLibros.put("El Hobbit", "J.R.R. Tolkien");	
	listaLibros.put("El alquimista", "Paulo Coelho");	
}
Implementa los siguientes métodos:
obtenerTodosLosLibros(): Método que responde a la ruta /libros y retorna un JSP llamado libros.jsp para cargar todos los libros dentro de la lista.
obtenerInformacionDeLibro(): Método que responde a la ruta /libros/{nombre} y retorna la información de un libro en específico, devuelve el nombre del libro y su autor al JSP llamado detalleLibro.jsp.. En caso de que el libro no exista en la lista devolver un mensaje como el siguiente:  «El libro no se encuentra en nuestra lista.»
formularioLibro(): Método que responde a la ruta /libros/formulario y retorna un JSP llamado formularioLibros.jsp para cargar un formulario para poder dar de alta un nuevo libro y su respectivo autor.
procesaLibro(): Método que responde a la ruta /procesa/libro y se encarga de recibir los parámetros del formulario para agregarlos a la lista de libros. Recibe únicamente dos parámetros: nombreLibro y nombreAutor. Tras agregar el libro con su autor a la lista se redirecciona a la ruta de /libros.
 
Ahora implementa las siguientes vistas JSP. 
libros.jsp: Se encarga de desplegar en pantalla la lista de todos los libros sin inlcuir su autor. Cada libro es una etiqueta de <a> que contiene la referencia hacía la vista de detalle del mismo libro. Ejemplo:
<ul>
	<li>
		<a href="/libros/Don Quijote de la Mancha"> Don Quijote de la Mancha </a>
	</li>
</ul>
detalleLibro.jsp: Se encarga de desplegar en pantalla la información del libro actual: nombre del libro y su autor. Si el libro no se encuentra mostrar el mensaje «El libro no se encuentra en nuestra lista.». Agregar un botón para regresar a la vista de todos los libros.
formularioLibros: Se encarga de desplegar en pantalla un formulario para agregar un nuevo libro a la lista de libros. El formulario necesita dos <input> uno para el nombre del libro y otro para su autor. Además del formulario agregar un botón para regresar a la vista de todos los libros.
Ejecuta la aplicación utilizando Spring Boot. Asegúrate de que la aplicación se ejecuta sin errores.
Utiliza un navegador web para acceder a las rutas y verificar que cada una retorne la información esperada.
