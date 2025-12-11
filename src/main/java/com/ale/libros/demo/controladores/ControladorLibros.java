package com.ale.libros.demo.controladores; 
import java.util.HashMap;
import java.util.Map;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class ControladorLibros{
    //Agrega el siguiente atributo que contiene un HashMap para almacenar los nombres de los libros y sus autores:
    private static HashMap<String, String> listaLibros = new HashMap<>();
    //Ahora agrega el siguiente constructor que se encarga de llenar el HashMap con información de prueba de autores y libros:
    public ControladorLibros() {
        listaLibros.put("Odisea", "Homero");
        listaLibros.put("Don Quijote de la Mancha", "Miguel de Cervantes");
        listaLibros.put("El Código Da Vinci", "Dan Brown");
        listaLibros.put("Alicia en el país de las maravillas", "Lewis Carroll");
        listaLibros.put("El Hobbit", "J.R.R. Tolkien");
        listaLibros.put("El alquimista", "Paulo Coelho");
    }
    //Implementa los siguientes métodos:
    //obtenerTodosLosLibros(): Método que responde a la ruta /libros y retorna un JSP llamado libros.jsp para cargar todos los libros dentro de la lista.
    @GetMapping("/libros")
    public String obtenerTodosLosLibros(Model model){
        model.addAttribute("listaLibros",listaLibros.keySet());
        return "libros";
    }
    //obtenerInformacionDeLibro(): Método que responde a la ruta /libros/{nombre} y retorna la información de un libro en específico, devuelve el nombre del libro y su autor al JSP llamado detalleLibro.jsp.. En caso de que el libro no exista en la lista devolver un mensaje como el siguiente:  «El libro no se encuentra en nuestra lista.»
    @GetMapping("/libros/{nombre}")
    public String obtenerInformacionDeLibro(@PathVariable String nombre, Model model){
        String autor= listaLibros.get(nombre);

        if(autor == null){
            model.addAttribute("Auch","El libro no se encuentra en nuestra lista.");
        } else {
            model.addAttribute("nombreLibro",nombre);
            model.addAttribute("nombreAutor",autor);
        }
        return "detalleLibro";
    }
    //formularioLibro(): Método que responde a la ruta /libros/formulario y retorna un JSP llamado formularioLibros.jsp para cargar un formulario para poder dar de alta un nuevo libro y su respectivo autor.
    @GetMapping("/libros/formulario")
    public String formularioLibro(){
        return "formularioLibros";
    }
    //procesaLibro(): Método que responde a la ruta /procesa/libro y se encarga de recibir los parámetros del formulario para agregarlos a la lista de libros. Recibe únicamente dos parámetros: nombreLibro y nombreAutor. Tras agregar el libro con su autor a la lista se redirecciona a la ruta de /libros.
    @PostMapping("/procesa/libro")
    public String procesaLibro(
            @RequestParam("nombreLibro") String nombreLibro,
            @RequestParam("nombreAutor") String nombreAutor){

        if(nombreLibro != null && !nombreLibro.isBlank() && nombreAutor != null && !nombreAutor.isBlank()){
            listaLibros.put(nombreLibro,nombreAutor);
        }
        return "redirect:/libros";
    }
    @GetMapping("/")
    public String inicio(){
        return "redirect:/libros";
    }

}
