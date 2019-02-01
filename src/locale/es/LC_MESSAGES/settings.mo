��          �               �  R   �  _   0  W   �     �  0     X   5  m   �  7   �     4     H  $   e     �     �  �   �  S   ?  u   �  ]   	  �   g           �   #  X   �     	     	     "	  w   *	     �	  �  �	  g   >  d   �  b     '   n  ?   �  W   �  q   .  H   �     �      �  (         I     ^  �   x  `   O  }   �  ]   .  �   �     K  ;  R  �   �  S   8     �     �     �  �   �     1   **Database File**: Disk location of the GeoPakage file that contains the database. **Database**: Name of the database that contains or will contain the physical model of LADM_COL **Host**: address where the database is hosted *localhost* is equivalent to *127.0.0.1* **Password**: user password **Port**: listening port number for the database **Schema**: Name of the schema that stores the objects of the physical model of LADM_COL **Source**: define the origin of the data, it can be a spatial database *PostgreSQL/PostGIS* or *GeoPackage*. **User**: User name that has permission on the database *Common parameters* *Only GeoPackage parameters* *Only PostgreSQL/PostGIS parameters* Automatic Values Database Connection For data quality issues in this tab, the tolerance limit allowed for too long boundary segments is established, this must be defined in meters. If you want to fill those values by youtself, uncheck the check boxes in this form. In this tab, the parameters are defined to connect to the database in which the physical model of LADM_COL is stored. In this tab, you can select whether you want to use the repository of local or remote models. It's possible to configure through a data repository a URL path to upload administrative sources and spatial sources associated with the information collected in LADM-COL. Models Most of the classes in LADM_COL have two attibutes that combined must be unique in the whole ``schema/database``. They are called **namespace** and **local_id**. To make it easier to fill those attibutes, the *LADM_COL assistant* can set automatic values for them. Namely, **namespace** will correspond to an optional pefix (e.g., MY_ORGANIZATION) plus the class name (e.g., BOUNDARY): `MY_ORGANIZATION_BOUNDARY`. On the other hand, **local_id** will correspond to the id of the record in the database. Quality Settings Sources The *Test Connection* button is used to know if the entered parameters are correct and allow connection to the database These parameters are: \ Project-Id-Version: LADM_COL Assistant
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2019-01-31 12:53-0500
PO-Revision-Date: YEAR-MO-DA HO:MI+ZONE
Last-Translator: FULL NAME <EMAIL@ADDRESS>
Language: es
Language-Team: es <LL@li.org>
Plural-Forms: nplurals=2; plural=(n != 1)
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.4.0
 **Archivo de Base de Datos**: Ubicación en disco del archivo Geopackage que contiene la base de datos. **Base de Datos**:Nombre de la base de datos que contiene o contendrá el modelo físico de LADM_COL **Host**: dirección donde la base de datos es almacenada *localhost* es equivalente a *127.0.0.1* **Contraseña**: Contraseña de Usuario **Puerto**: Número del puerto de escucha para la base de datos **Esquema**: Nombre del esquema que almacena los objetos del modelo físico de LADM_COL **Fuente**: Define el origen de los datos, esta puede ser una base de datos espacial *PostgreSQL* o *GeoPackage*. **Usuario**: Nombre del Usuario que tiene permiso sobre la base de datos *Parámetros comunes* *Solo parámetros de GeoPackage* *Solo párametros de PostgreSQL/PostGIS* Valores Automáticos Conexión a Base de Datos En esta pestaña se definen parámetros para validaciones de calidad. Por ejemplo, se establece el límite de tolerancia permitido para segmentos de linderos demasiado largos, el cual debe estar definido en metros. Si deseas llenar esos valores por tu cuenta desmarca las siguientes opciones en este formulario. En esta pestaña, se definen los parámetros para conectarse con la base de datos que almacena el modelo físico de LADM_COL. In this tab, you can select whether you want to use the repository of local or remote models. Es posible configurar a través de un repositorio de datos una ruta de acceso URL para subir fuentes administrativas y fuentes espaciales asociadas a la información recolectada en LADM-COL. Models La mayoría de las clases en LADM_COL tiene dos atributos que combinados deben ser únicos en todo el ``esquema/base de datos``. Se denominan  **espacio_de_nombres** y **local_id**. Para hacer más fácil el llenado de estos atributos, el *asistente LADM_COL* puede configurarse con valores automáticos para ellos. Concretamente, **espacio_de_nombres** corresponderá a un prefijo opcional (p.e., MI_ORGANIZACION) más el nombre de la clase (p.e., LINDERO): `MI_ORGANIZATION_LINDERO`. Por otra parte , **local_id** correspondera al ID del registro en la base de datos. Calidad Configuración Fuentes El botón *Probar Conexión* se usa para saber si los parámetros ingresados son correctos y permiten la conexión a la base de datos Estos parámetros son:\ 