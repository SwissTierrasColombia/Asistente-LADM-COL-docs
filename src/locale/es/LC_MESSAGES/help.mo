��          �   %   �      0  R   1  _   �  W   �     <  0   Z  X   �  m   �  7   R     �     �  $   �     �     �  �     S   �  u   �    _  �   h  X   �     V     ^  w   g     �  w  �  i   o
  e   �
  a   ?  '   �  3   �  b   �  ~   `  H   �     (  "   >  *   a     �     �  �   �  ^   j  �   �    Q  �   n  R        g     o  �   ~                                                      	                                                                       
       **Database File**: Disk location of the GeoPakage file that contains the database. **Database**: Name of the database that contains or will contain the physical model of LADM_COL **Host**: address where the database is hosted *localhost* is equivalent to *127.0.0.1* **Password**: user's password **Port**: listening port number for the database **Schema**: Name of the schema that stores the objects of the physical model of LADM_COL **Source**: define the origin of the data, it can be a spatial database *PostgreSQL/PostGIS* or *GeoPackage*. **User**: User name that has permission on the database *Common parameters* *Only GeoPackage parameters* *Only PostgreSQL/PostGIS parameters* Automatic Values Database Connection For data quality issues in this tab, the tolerance limit allowed for too long boundary segments is established, this must be defined in meters. If you want to fill those values by youtself, uncheck the check boxes in this form. In this tab, the parameters are defined to connect to the database in which the physical model of LADM_COL is stored. Most of the classes in LADM_COL have two attibutes that combined must be unique in the whole ``schema/database``. They are called **namespace** and **local_id**. To make it easier to fill those attibutes, the *LADM_COL assistant* can set automatic values for them. Namely, **namespace** will correspond to an optional pefix (e.g., MY_ORGANIZATION) plus the class name (e.g., BOUNDARY): `MY_ORGANIZATION_BOUNDARY`. On the other hand, **local_id** will correspond to the id of the record in the database. Quality Settings The *Test Connection* button is used to know if the entered parameters are correct and allow connection to the database These parameters are: \ Project-Id-Version: LADM_COL Assistant
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2018-04-13 15:33-0500
PO-Revision-Date: 2018-04-13 16:14-0500
Last-Translator: 
Language: es
Language-Team: 
Plural-Forms: nplurals=2; plural=(n != 1);
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.5.3
X-Generator: Poedit 2.0.6
 ** Archivo de base de datos **: Ubicación del disco del archivo GeoPakage que contiene la base de datos. **Base de datos**: Nombre de la base de datos que contiene o contendrá el modelo físico de LADM_COL **Host**: dirección donde la base de datos esta alojada *localhost* es equivalente a *127.0.0.1* **Contraseña**: Contraseña de usuario **Puerto**: puerto de escucha para la base de datos **Esquema**: Nombre del esquema en el cual se almacenan los objetos del modelo físico de LADM_COL **Fuente**: define el origen de los datos, estos pueden ser una base de datos espacial de *PostgreSQL/PostGIS* o *GeoPackage*. **Usuario**: Nombre de usuario que tiene permisos sobre la base de datos *Parámetros comunes* *Parámetros solo para GeoPackage* *Parámetros solo para PostgreSQL/PostGIS* Valores Automaticos Conexión a base de datos Para problemas de calidad de datos en esta pestaña, se establece el límite de tolerancia permitido para segmentos de límite demasiado largos, esto debe definirse en metros. Si por el contrario quieres llenar los datos manualmente, desmarca las cajas en el formulario. En esta pestaña, los parámetros son definidos para conectarse a la base de datos en la que se almacena el modelo físico de LADM_COL. La mayoría de las clase en  LADM_COL tienen dos atributos cuya combinación debe ser única en el ``schema/database``. Estos son llamados **espacio_de_nombres** y **local_id**. Para facilitar el llenado de dichos atributos, el *Asistente LADM_COL* puede definir valores automáticos. Concretamente, *espacio_de_nombres* corresponderá a un prefijo opcional (p.e., MI_ORGANIZACION) más el nombre de la clase (p.e., LINDERO): MI_ORGANIZACION_LINDERO. Por otro lado, **local_id** corresponderá al ID del registro en la base de datos. Calidad Configuración El botón *Probar conexión* se usa para saber si los parámetros ingresados son correctos y permiten la conexión a la base de datos Estos parámetros son: \ 