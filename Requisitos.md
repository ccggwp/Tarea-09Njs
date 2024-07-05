Cree una aplicación con interfaz gráfica que realice las 4 operaciones CRUD (insertar, editar, eliminar y seleccionar) con una una base de datos relacional a través del mecanismo ORM. Tanto el lenguaje de programación y el gestor de base de datos son de su elección.

En un informe redacte la forma como ha logrado el uso del ORM, lo que incluye: 

Resumen de la aplicación

Conexión con la BD, 

Modelo entrada al ORM, 

Ejecución de las operaciones CRUD con ORM, 

Conclusiones, 

Referencias y la 

URL del repositorio donde esté su programa. 

-------------------------------------------
--node -v
--npm -v


*Inicializamos un proyecto de Node.js

    npm init -y

*dependencias necesarias:

    npm install express prisma @prisma/client ejs body-parser

Inicializamos Prisma
    npx prisma init


Conexion BD
    DATABASE_URL="postgresql://postgres:admin4@localhost:5432/BD2Tarea01"


Cambio archivo schema.prisma para definir bd estudiante:

migrar la base de datos
    npx prisma generate
