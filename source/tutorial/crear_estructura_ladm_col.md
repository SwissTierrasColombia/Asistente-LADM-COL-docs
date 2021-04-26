# Crear Estructura LADM-COL

1. Para configurar el asistente se debe asignar el modelo conceptual, el cual será la base para el desarrollo de operaciones, que ayuden de forma organizada en el registro y recopilación de información, para ello es necesario ir al menú de opciones y seleccionar el asistente **LADM-COL,** luego ir **administración de datos** y finalmente en **crear estructura LADM-COL.**
    
    (<a class="" data-lightbox="Paso 1" href="../3bdf0bfc4dbe59b5bc383ba532092588e8d70acb/source/_static/tutorial/Paso%201.png" title="Paso 1" data-title="Paso 1"><img src="../3bdf0bfc4dbe59b5bc383ba532092588e8d70acb/source/_static/tutorial/Paso%201.png" class="align-center" width="800px" alt="Paso 1"/></a>)

2. Posteriormente se procede a configurar la base de datos donde se almacenará toda la información  registrada por el usuario. Para ello seleccionar el botón “**configurar conexión**

    (<a class="" data-lightbox="Paso 2" href="../3bdf0bfc4dbe59b5bc383ba532092588e8d70acb/source/_static/tutorial/paso%202.png" title="Paso 2" data-title="Paso 2"><img src="../3bdf0bfc4dbe59b5bc383ba532092588e8d70acb/source/_static/tutorial/Paso%201.png" class="align-center" width="800px" alt="Paso 2"/></a>)

3. Inmediatamente el cuadro de diálogo cambiara solicitando los datos necesarios para desarrollar una conexión a cualquiera de los siguientes gestores de base de datos :

     -   PostgresSQL/PostGis

     -   Geopackage

     -   MS SQL Server

     Los datos necesarios para lograr la conexión son:

     -   Host: localhost

     -   Puerto: 5432

     -   Usuario: Postgres

     -   Contraseña: (definida por el usuario al momento de instalar postgres)

    Como ejemplo usamos los datos de conexión de una base de datos de PostgresSQL.
    
     (<a class="" data-lightbox="Paso 3" href="../3bdf0bfc4dbe59b5bc383ba532092588e8d70acb/source/_static/tutorial/paso%203.png" title="Paso 3" data-title="Paso 3"><img src="../3bdf0bfc4dbe59b5bc383ba532092588e8d70acb/source/_static/tutorial/paso%203.png" class="align-center" width="800px" alt="Paso 3"/></a>)

4.  Ahora es necesario crear una base de datos y un esquema el cual agrupará toda la información trabajada por el asistente, para ello es necesario activar el botón **Refrescar bases de datos y esquemas**

     (<a class="" data-lightbox="Paso 4" href="../3bdf0bfc4dbe59b5bc383ba532092588e8d70acb/source/_static/tutorial/paso%204.png" title="Paso 4" data-title="Paso 4"><img src="../3bdf0bfc4dbe59b5bc383ba532092588e8d70acb/source/_static/tutorial/paso%204.png" class="align-center" width="800px" alt="Paso 4"/></a>)

5.  Para la creación de la base de datos presionar el icono <a class="" data-lightbox="icono_1" href="../3bdf0bfc4dbe59b5bc383ba532092588e8d70acb/source/_static/tutorial/icono%201.png" title="icono_1" data-title="icono_1"><img src="../3bdf0bfc4dbe59b5bc383ba532092588e8d70acb/source/_static/tutorial/icono%201.png" class="align-center" width="800px" alt="icono_1"/></a>) de inmediato saldrá un cuadro de diálogo solicitando el nombre a asignar, posterior a ello se deberá activar el botón **Crear database** y después de ver el mensaje de verificación de dicho proceso finalmente dar clic en el botón **Cerrar.**

     (<a class="" data-lightbox="Paso 5" href="../3bdf0bfc4dbe59b5bc383ba532092588e8d70acb/source/_static/tutorial/paso%205.png" title="Paso 5" data-title="Paso 5"><img src="../3bdf0bfc4dbe59b5bc383ba532092588e8d70acb/source/_static/tutorial/paso%205.png" class="align-left" width="800px" alt="Paso 5"/></a>)(<a class="" data-lightbox="Paso 6" href="../3bdf0bfc4dbe59b5bc383ba532092588e8d70acb/source/_static/tutorial/paso%206.png" title="Paso 6" data-title="Paso 6"><img src="../3bdf0bfc4dbe59b5bc383ba532092588e8d70acb/source/_static/tutorial/paso%206.png" class="align-center" width="800px" alt="Paso 6"/></a>)(<a class="" data-lightbox="Paso 7" href="../3bdf0bfc4dbe59b5bc383ba532092588e8d70acb/source/_static/tutorial/Paso%207.png" title="Paso 7" data-title="Paso 7"><img src="../3bdf0bfc4dbe59b5bc383ba532092588e8d70acb/source/_static/tutorial/Paso%207.png" class="align-Right" width="800px" alt="Paso 7"/></a>)

6.  Para la creación del esquema presionar el icono  <a class="" data-lightbox="icono_2" href="../3bdf0bfc4dbe59b5bc383ba532092588e8d70acb/source/_static/tutorial/icono%202.png" title="icono_2" data-title="icono_2"><img src="../3bdf0bfc4dbe59b5bc383ba532092588e8d70acb/source/_static/tutorial/icono%202.png" class="align-center" width="800px" alt="icono_2"/></a>) saldrá un cuadro de diálogosolicitando el nombre a asignar, posterior a ello se deberá activar el botón **Crear Shema,** se procede a dar clic en el botón **Aceptar**


     (<a class="" data-lightbox="Paso 8" href="../3bdf0bfc4dbe59b5bc383ba532092588e8d70acb/source/_static/tutorial/paso%2010.png" title="Paso 8" data-title="Paso 8"><img src="../3bdf0bfc4dbe59b5bc383ba532092588e8d70acb/source/_static/tutorial/paso%2010.png" class="align-left" width="800px" alt="Paso 8"/></a>)(<a class="" data-lightbox="Paso 9" href="../3bdf0bfc4dbe59b5bc383ba532092588e8d70acb/source/_static/tutorial/paso%209.png" title="Paso 9" data-title="Paso 9"><img src="../3bdf0bfc4dbe59b5bc383ba532092588e8d70acb/source/_static/tutorial/paso%209.png" class="align-center" width="800px" alt="Paso 9"/></a>)(<a class="" data-lightbox="Paso 10" href="../3bdf0bfc4dbe59b5bc383ba532092588e8d70acb/source/_static/tutorial/paso8.png" title="Paso 10" data-title="Paso 10"><img src="../3bdf0bfc4dbe59b5bc383ba532092588e8d70acb/source/_static/tutorial/paso8.png" class="align-Right" width="800px" alt="Paso 10"/></a>)
    
7.  Finalmente volverá al cuadro de diálogo inicial con un mensaje de verificación del proceso realizado, presionar el botón Cerrar para continuar con el proceso.

     (<a class="" data-lightbox="Paso 11" href="../3bdf0bfc4dbe59b5bc383ba532092588e8d70acb/source/_static/tutorial/paso%2011.png" title="Paso 11" data-title="Paso 11"><img src="../3bdf0bfc4dbe59b5bc383ba532092588e8d70acb/source/_static/tutorial/paso%2011.png" class="align-center" width="800px" alt="Paso 11"/></a>)

