Desafío de código Webapp Manejador de tareas _ Fundación Paraguaya
===============================================================

Instrucciones
-------------
Leer las instrucciones con atención e implementar lo que se tiene familiaridad en primer lugar.

Para el backend es requerimiento utilizar el lenguaje Java, y en general cualquier librería que facilite la implementación.

Para el frontend se recomienda utilizar Angular o React,y en general cualquier librería que facilite la implementación.

Requisitos
----------

* [Java Platform (JDK) 8](http://www.oracle.com/technetwork/java/javase/downloads/index.html)
* Recomendado [Spring Boot](https://spring.io/guides/gs/spring-boot/)
* [Apache Maven 3.x](http://maven.apache.org/)
* IDE favorito 
* Github/Gitlab


Descripción de la Evaluación
----------------------------
Esta aplicación es para un manejador de tareas.
La intención de la aplicación es la de proveer un CRUD de tareas que son manejadas desde una base de datos relacional. 




### Tareas de Backend

Agregar un servicio REST para consultar, agregar, actualizar y borrar tareas. El servicio debe responder a las siguientes URLs:

*   `api/tasks`         - lista todas las tareas con sus asignados
*   `api/tasks/active`   - lista todas las tareas activas con sus asignados
*   `api/tasks/<id>`    - obtiene detalles de una tarea identificada por su *id*
*   `api/tasks/<id>`    - actualiza una tarea existente con el *id*
*   `api/tasks/<id>`    - Borra una tarea existente con el *id* (Borrado logico)

**Requerimientos de tecnología**: 

*  Las tareas deben ser modificadas y consultadas a partir de tablas en base de datos. Para el acceso a base de datos se puede usar repositorios de Spring Boot o bien alguna otra tecnología estándar JEE.   

*  Documentar las APIs con [Swagger](https://swagger.io/) (Ya se encuentra configurado en el proyecto)

**Requerimientos funcionales**:

*   El servicio que permite actualizar una tarea debe también permitir asignar la tarea a una persona.

*   No se debe de poder asignar a una persona más de 5 tareas (para evitarle la fatiga :-)). La aplicación debe lanzar un error en caso de que se quiera asignar más de 5 tareas a una persona. 

*   El servicio que permite listar tareas también se debe de poder mostrar sus asignados. Es decir, debe haber una relación entre tareas y asignados y el servicio de listado debe reflejar esto.     



### Guías generales

Las URLs para los servicios REST deben tener el verbo HTTP apropiado para cada operación.

Los servicios deben aceptar y responder en formato JSON. Diseñar el esquema JSON que se crea apropiado dado la estructura de datos proporcionada.
 

### Tareas de Frontend

El desafío aquí es crear una aplicación WEB que permita administrar tareas y que haga uso de los servicios REST desarrollados en el backend.


La aplicación WEB debe ofrecer las funcionalidades de:

* Crear una tarea nueva
* Edición de la descripción de una tarea
* Marcar una tarea como completada
* Filtrar tareas que están activas
* Elimina una tarea
    
 Sientese libre para implememtar el diseño de pantallas y aplicar el estilo deseado.   

Criterios de evaluación y buenas prácticas
-----------------------

1.  Correctitud de la solución
    
   Naturalmente, el proyecto entregado debe ser funncional y compilar. 
   También se va a evaluar *como* la solución presentada resuelve cada problema.
    
2.  Conocmiento del lenguaje
		
   ¿Tu código demuestra conocimiento de las capacidades de las tecnologías y sus recursos utilizados?
   ¿Se supo qué librerias o anotaciones usar para cada caso?
    
3.  Estilo de codigo

   ¿Utilizas buenas practicas de desarrollo?
   ¿Está adecuadamente (pero no en exceso) documentado?
    
4.  Buena experencia del usuario
    
5.  Facilidad en probar la solución
    
    ¿Se provee todo lo necesario para ejecutar la solución entregada? Ya sea drivers, documentación adicional de pasos para deploy o ejecución, etc.
    


Pasos iniciales
---------------

### Empezando a trabajar

Para empezar crear un fork de este repositorio para implementar el desafío.

Adjuntar cualquier documentación al proyecto en forma de archivos con extensión `.md`.

Se recomienda ir haciendo commits a medida que se avanza con la solución. Agrupando estos commits si corresponde hacerlo.


### Contruyendo el proyecto

El proyecto incluye un pom.xml que permite construir un paquete jar utilizando [Maven](http://maven.apache.org). Simplemente corriendo `mvn package` descargará todas las dependencias necesarias y construirá un paquete jar estándar.


### Manejando la base de datos

Se provee en la carpeta `src/main/resources/db` scripts de creación de tablas para los ejercicios. El proyecto está configurado para el motor de base de datos PostgresSQL, pero se puede usar el de mejor conveniencia.


Enviando tu código para evaluación
------------------------------------

Luego al finalizar enviar un email con el link al fork a la persona que te envió este test.

¡Buena suerte! 🎉
