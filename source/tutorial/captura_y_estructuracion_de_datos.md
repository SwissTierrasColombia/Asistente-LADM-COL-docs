# Captura y Estructuración de Datos
## Preprocesamiento de insumos
Se iniciará con el proceso de importación de datos, para el desarrollo de este documento, se harán con información en formato Geopackage, cabe aclarar que se puede implementar otras fuentes de información en sus diversos formatos ya sea shapefile, archivos CSV etc. Se ha dispuesto un material de práctica que podrá descargar de manera gratuita con el fin de que desarrolle el siguiente ejercicio de aplicación de la herramienta.

<http://bit.ly/TallerAsistente>

Se comenzará con el proceso de conexión, a partir del panel de navegación ubicado a la izquierda de la interfaz de Qgis , ubicar el gestor **Geopackage** con clic derecho y posteriormente seleccionar la opción de **Conexión nueva** para ubicar la base de datos que posee la información necesaria para seguir avanzando.

Como resultado de este proceso se tendrá conexión a una base de datos que posee diversa información, de la cual se hará uso a medida que se avance en los capítulos de este documento.

   <a class="" data-lightbox="Paso 1" href="../_static/tutorial/cap4preinsumos1.gif" title="Paso 1" data-title="Paso 1"><img src="../_static/tutorial/cap4preinsumos1.gif" class="align-center" width="800px" alt="Paso 1"/></a>

Con el fin de tener una mejor perspectiva de manera visual es recomendable instalar el complemento **Quick Map Server** ya que, proporciona un set de imágenes satelitáles que podrá utilizar para entender un poco más lo realizado en campo.

   <a class="" data-lightbox="Paso 2" href="../_static/tutorial/cap4preinsumos1.gif" title="Paso 2" data-title="Paso 2"><img src="../_static/tutorial/cap4preinsumos1.gif" class="align-center" width="800px" alt="Paso 2"/></a>
   <div class="note">

<p class="admonition-title">IMPORTANTE</p>
<p> Para mas información de este plugin, podrá consultar el siguiente link donde se detalla el proceso de instalación: [Quick Map
    server](https://mappinggis.com/2016/09/plugin-quickmapservices-capas-base-de-google-landsat-openstreetmap-para-qgis/)</p>
</div>

## Paquete de topografía y representación
### Puntos de lindero

1.  Entiéndase como puntos linderos aquellos que definen los límites de un terreno, entonces siguiendo la **ruta LADM-COL – captura y estructuración de datos – levantamiento Catastral- Topografía y representación – crear punto**.

  <a class="" data-lightbox="Paso 1" href="../_static/tutorial/cap4preinsumos3.png" title="Paso 1" data-title="Paso 1"><img src="../_static/tutorial/cap4preinsumos3.png" class="align-center" width="800px" alt="Paso 1"/></a>

2.  De forma inmediata se desplegará un cuadro de diálogo con la opción de seleccionar que clase de punto desea importar, en este caso será **punto lindero,** presionar **Siguiente**

  <a class="" data-lightbox="Paso 2" href="../_static/tutorial/cap4preinsumos4.png" title="Paso 2" data-title="Paso 2"><img src="../_static/tutorial/cap4preinsumos4.png" class="align-center" width="800px" alt="Paso 2"/></a>
  
3. Ahora se selecciona el set de datos ya sea de una fuente archivo CSV o una capa vectorial, en este caso elegir el conjunto de datos que ya esta cargado en el interfaz de Qgis. Que es **topo_punto_lindero**, y procedemos a dar clic en el botón **importar.**
  
 <a class="" data-lightbox="Paso 4" href="../_static/tutorial/cap4preinsumos5.png" title="Paso 4" data-title="Paso 4"><img src="../_static/tutorial/cap4preinsumos5.png" class="align-center" width="800px" alt="Paso 4"/></a>
 
4. Se genera un cuadro de diálogo, donde se lleva a cabo un muestreo de la información levantada contra la información que requiere el modelo. Se considera de gran importancia detallar esta sección ya que, es la base del resto de importaciones que se explicarán en este documento. Para ello es necesario observar el modelo.

 <a class="" data-lightbox="Paso 5" href="../_static/tutorial/cap4preinsumos6.png" title="Paso 5" data-title="Paso 5"><img src="../_static/tutorial/cap4preinsumos6.png" class="align-center" width="800px" alt="Paso 5"/></a>

A continuación se podrá ver la sección de punto lindero de [Modelo_Aplicación_LADMCOL_Lev_Cat_V1_0](https://raw.githubusercontent.com/SwissTierrasColombia/LADM_COL/master/Catastro_Multiproposito/1_Metamodelo_Extendido/1_Catastro_Registro/Modelo_Extendido_LADMCOL_Cat_Reg_V3_0.png) donde es posible consultar el repositorio de SwissTierras y ver futuras actualizaciones del mismo, esto se hace con el fin de identificar los campos obligatorios que debe tener la información al momento de ser importada y poder trabajar con el asistente usando sus funcionalidades de captura masiva.

Se debe tener en cuenta que existen entidades asociadas a otras, las cuales guardan una relación directa, por lo tanto, en este caso según la figura 7 es necesario analizar tanto **LC\_PuntoLindero** como **COL_Punto** teniendo en cuenta los criterios presentados en la siguiente imagen.

 <a class="" data-lightbox="Entendiendo LADM" href="../_static/tutorial/cap4preinsumos7.png" title="Entendiendo LADM" data-title="Entendiendo LADM"><img src="../_static/tutorial/cap4preinsumos7.png" class="align-center" width="800px" alt="Entendiendo LADM"/></a>

 <a class="" data-lightbox="Entendiendo LADM2" href="../_static/tutorial/cap4preinsumos8.png" title="Entendiendo LADM" data-title="Entendiendo LADM"><img src="../_static/tutorial/cap4preinsumos8.png" class="align-center" width="800px" alt="Entendiendo LADM"/></a>
 
Posteriormente se debe identificar el dominio de aquellos valores, que poseen un tipo de información determinada como es el caso del punto tipo, el cual tiene asignado los valores de LC_PuntoTipo según la imagen anterior.

#### Consulta de dominios
1.  Para proceder a la consulta de dominios diríjirse al grupo **domains** ubicado en el panel de capas, abrir el grupo y proceder a buscar el dominio de interés, en este caso se desarrollará con el Lc\_topo_punto

 <a class="" data-lightbox="Paso 1" href="../_static/tutorial/cap4preinsumos9.png" title="Paso 1" data-title="Paso 1"><img src="../_static/tutorial/cap4preinsumos9.png" class="align-center" width="800px" alt="Paso 1"/></a>
 
2.  Se desplegará un cuadro de diálogo con el listado de dominios existentes, lo que se busca es identificar el número correspondiente al campo de descripción del elemento requerido, ubicado en la columna **t_id,** ya que, para un manejo óptimo de bases de datos, se recomienda trabajar con identificadores numéricos

 <a class="" data-lightbox="Paso 2" href="../_static/tutorial/cap4preinsumos10.png" title="Paso 2" data-title="Paso 2"><img src="../_static/tutorial/cap4preinsumos10.png" class="align-center" width="800px" alt="Paso 2"/></a>
 
Finalmente se retoma *el paso 4 del presente documento*, esta vez teniendo en cuenta el modelo LADM-COL y los dominios, por lo tanto, para LC\_ punto lindero posee 5 atributos obligatorios, estos son:

Tabla 1 Atributos obligatorios de la entidad LC_PuntoLindero

| **Item** | **Entidad**     | **Atributo**         | **Contenido**                |
|----------|-----------------|----------------------|------------------------------|
| 1        | COL_Punto       | MétodoProducción     | **Col_MetodoProduccionTipo** |
| 2        | LC_PuntoLindero | ID_Punto_Lindero     | Cadena de texto              |
| 3        | LC_PuntoLindero | Punto Tipo           | **LC_puntotipo**             |
| 4        | LC_PuntoLindero | Acuerdo              | **LC_Acuerdotipo**           |
| 5        | LC_PuntoLindero | Exactitud Horizontal | Numérico                     |

Como se puede observar existen 3 atributos los cuales se les debe asignar un **t_id** en específico. Para lograr esto de forma masiva se procede a desarrollar el paso 5.

5.  En el cuadro de diálogo del muestreo activar el botón href="../_static/tutorial/ICOdialogodeexpressiones.png" title='Boton "Generar expresion"' data-title="Generar expresion"><img src="../_static/tutorial/ICOdialogodeexpressiones.png" class="align-center" width="30px" alt='Boton "Generar expresion"'/></a>, para aquellos atributos que posean un contenido determinado y solo sea necesario asignar el **t\_id .** Un ejemplo de ello es la columna Punto_tipo de la capa vectorial topo_punto_lindero suministrada, el cual contiene los valores definidos por el modelo, esto se puede ver en la figura 8 con la entidad LC_puntotipo.

Para la asignación de diferentes t_id se hace uso de la función:

-   **get_domain_code_from_value(‘**nombre de la entidad que posee los datos en especifico aceptados por el modelo’ , **‘**nombre de la columna de la capa vectorial suministrada que posee dichos datos’ se indica si los valores a importar estan escritos sin alias (se puede visualizar en la columna ilicode de la tabla de dominios lc_puntotipo , se indica si los valores a importar estan escritos con alias (se puede visualizar en la columna dispname de la tabla de dominios lc_puntotipo)

Para este ejemplo, la manera correcta de escribir la función es:

 **get_domain_code\_from\_value** : (‘’lc_puntotipo’, punto_tipo, True, False)
 
 <a class="" data-lightbox="Paso 5" href="../_static/tutorial/cap4preinsumos12.png" title="Paso 5" data-title="Paso 5"><img src="../_static/tutorial/cap4preinsumos12.png" class="align-center" width="800px" alt="Paso 5"/></a>

6.  Finalmente se recomienda repetir los pasos 5 y 6 de este capítulo para hacer el muestreo total de los datos, al completar la información de los atributos obligatorios se puede activar el botón ejecutar.

 <a class="" data-lightbox="Paso 6" href="../_static/tutorial/cap4preinsumos13.png" title="Paso 6" data-title="Paso 6"><img src="../_static/tutorial/cap4preinsumos13.png" class="align-center" width="800px" alt="Paso 6"/></a>

7.  Finalmente se recomienda repetir los pasos 5 y 6 de este capítulo para hacer el muestreo total de los datos, al completar la información de los atributos obligatorios se puede activar el botón ejecutar.

 <a class="" data-lightbox="Paso 7" href="../_static/tutorial/cap4preinsumos14.png" title="Paso 7" data-title="Paso 7"><img src="../_static/tutorial/cap4preinsumos14.png" class="align-center" width="800px" alt="Paso 7"/></a>
  
8.  si se realiza todo el proceso correctamente podremos visualizar el siguiente mensaje de validación, y posteriormente cerrar el cuadro de diálogo

  <a class="" data-lightbox="Paso 8" href="../_static/tutorial/cap4preinsumos15.png" title="Paso 8" data-title="Paso 8"><img src="../_static/tutorial/cap4preinsumos15.png" class="align-center" width="800px" alt="Paso 8"/></a>
  
 ## Puntos de levantamiento
 1.  Inicialmente se procede arrastra el insumo de topo_puntos_levantamiento.
 
   <a class="" data-lightbox="Paso 1" href="../_static/tutorial/cap4preinsumos16.png" title="Paso 1" data-title="Paso 1"><img src="../_static/tutorial/cap4preinsumos16.png" class="align-center" width="800px" alt="Paso 1"/></a>
 
 2.  para iniciar con el proceso de importación podemos dirigirnos al cajetín **crear objetos de levantamiento – Crear punto**
   
   <a class="" data-lightbox="Paso 2" href="../_static/tutorial/cap4preinsumos17.gif" title="Paso 2" data-title="Paso 2"><img src="../_static/tutorial/cap4preinsumos17.gif" class="align-center" width="800px" alt="Paso 2"/></a>
   
3.  Posteriormente se activará un cuadro de diálogo donde se deberá seleccionar el tipo de punto a insertar en este caso **punto     levantamiento** después de darle **siguiente** escoger el set de datos para el procesamiento en este caso **topo_punto\_levantamiento** y finalmente presionar el botón **Importar**

   <a class="" data-lightbox="Paso 3" href="../_static/tutorial/cap4preinsumos18.png" title="Paso 3" data-title="Paso 3"><img src="../_static/tutorial/cap4preinsumos18.png" class="align-center" width="800px" alt="Paso 3"/></a>
   
4.  Se desplegará el cuadro de diálogo de muestreo de la información se recomienda tener en cuenta los *pasos 4, 5 y 6 de la presente seccion captura y estructuración de datos,* para el desarrollo de este proceso, lo que se buscar es lograr un muestreo como se indica en la siguiente imagen, al lograrlo proceder a activar el botón ejecutar.   

   <a class="" data-lightbox="Paso 4" href="../_static/tutorial/cap4preinsumos19.png" title="Paso 4" data-title="Paso 4"><img src="../_static/tutorial/cap4preinsumos19.png" class="align-center" width="800px" alt="Paso 4"/></a>
   
   Obteniendo el siguiente resultado 
   
   <a class="" data-lightbox="Resultado" href="../_static/tutorial/cap4preinsumos20.png" title="Resultado" data-title="Resultado"><img src="../_static/tutorial/cap4preinsumos20.png" class="align-center" width="800px" alt="Resultado"/></a>   
 
## Puntos de control 
1.  para importar los puntos control, se hará atreves de un archivo \*.csv para ello vamos **abrir la fuente de administración de datos** de Qgis.

 <a class="" data-lightbox="Paso 1" href="../_static/tutorial/cap4preinsumos21.gif" title="Paso 1" data-title="Paso 1"><img src="../_static/tutorial/cap4preinsumos21.gif" class="align-center" width="800px" alt="Paso 1"/></a>
 
2.  Se desplegará un cuadro de diálogo, donde se deberá seleccionaremos la fuente de texto delimitado por texto. Seleccionar la opción CSV (valores separados por coma), posteriormente en la casilla de nombre del archivo, presionar la casilla de los tres putos que lo acompañan, se abrirá un cuadro de diálogo, con el fin de que selecciones el archivo de dicho formato y se inicie el proceso de importación de datos
 <a class="" data-lightbox="Paso 2" href="../_static/tutorial/cap4preinsumos21.gif" title="Paso 2" data-title="Paso 2"><img src="../_static/tutorial/cap4preinsumos21.gif" class="align-center" width="800px" alt="Paso 2"/></a>
 
 3.  Despues de añadir los puntos, dirigirse a la herramienta **crear punto**.

 <a class="" data-lightbox="Paso 3" href="../_static/tutorial/cap4preinsumos22.png" title="Paso 3" data-title="Paso 3"><img src="../_static/tutorial/cap4preinsumos22.png" class="align-center" width="800px" alt="Paso 3"/></a>
 
4.  Seleccionar en tipo de puntos la opción **punto de control**, presionar el botón **siguiente** , de inmediato se cambiara el cuadro de diálogo, donde le solicitara que la fuente de datos que quiere cargar al modelo, seleccionar la alternativa de cargar dicha información **desde otra capa Qgis** y escoger la capa topo\_punto_control recién ingresada y dirigirse al botón **exportar** . 

 <a class="" data-lightbox="Paso 4" href="../_static/tutorial/cap4preinsumos24.gif" title="Paso 4" data-title="Paso 4"><img src="../_static/tutorial/cap4preinsumos24.gif" class="align-center" width="800px" alt="Paso 4"/></a>
 
5. De inmediato se desplegara la ventana de muestreo donde se recomienda replicar el mismo procedimiento ejecutado en los pasos *4, 5 y 6 del capítulo 4 captura y estructuración de datos,* el objetivo es que pueda obtener un muestreo como el de la siguiente imagen , al finalizar dicho proceso , nos dirigimos al botón **ejecutar**  y después de ver el mensaje de verificación del proceso procedemos a **cerrar** la ventana

 <a class="" data-lightbox="Paso 5" href="../_static/tutorial/cap4preinsumos25.png" title="Paso 5" data-title="Paso 5"><img src="../_static/tutorial/cap4preinsumos25.png" class="align-center" width="800px" alt="Paso 5"/></a>
 
 Al incorporar la información al modelo, el asistente configura la simbología de los puntos como lo muestra la siguiente figura
 
  <a class="" data-lightbox="Resultado" href="../_static/tutorial/cap4preinsumos25.png" title="Resultado" data-title="Resultado"><img src="../_static/tutorial/cap4preinsumos25.png" class="align-center" width="800px" alt="Resultado"/></a>
  
## Creación de linderos y sus relaciones

1.  El proceso de creación de linderos es muy similar a la creación de puntos, iniciamos con la carga de la información suministrada **topo_lindero**.
  <a class="" data-lightbox="paso 1" href="../_static/tutorial/cap4preinsumos26.png" title="Paso 1" data-title="Paso 1"><img src="../_static/tutorial/cap4preinsumos26.png" class="align-center" width="800px" alt="Paso 1"/></a>

2.  Presionamos el botón **Crear objetos de levantamiento** y seleccionamos la opción de crear lindero, seleccionamos la opción de **crear el lindero desde otra capa Qgis** y seleccionamos la capa recién cargada posteriormente dar clic en el botón **importar.**

<a class="" data-lightbox="paso 2" href="../_static/tutorial/cap4preinsumos27.png" title="Paso 2" data-title="Paso 2"><img src="../_static/tutorial/cap4preinsumos27.png" class="align-center" width="800px" alt="Paso 2"/></a>

3.  Posteriormente se abre la ventana de muestreo de la información, basados en los pasos *4, 5 y 6 del capítulo 4 captura y estructuración de datos,* podemos observar que el único campo obligatorio es longitud, asi que damos clic  href="../_static/tutorial/ICOdialogodeexpressiones.png" title='Boton "Generar expresion"' data-title="Generar expresion"><img src="../_static/tutorial/ICOdialogodeexpressiones.png" class="align-center" width="30px" alt='Boton "Generar expresion"'/></a>, y hacemos uso de la función *\$length* , para extraer desde la geometría la longitud damos clic en el botón **Aceptar** y posteriormente en **ejecutar** y **cerrar.**

<a class="" data-lightbox="paso 3" href="../_static/tutorial/cap4preinsumos29.png" title="Paso 3" data-title="Paso 3"><img src="../_static/tutorial/cap4preinsumos29.png" class="align-center" width="800px" alt="Paso 2"/></a>

### Construcción de linderos
Entiéndase como lindero, la línea continua que separa un terreno de otro desde una bifurcación a otra, como se puede observar en la figura 12, hasta el momento no se tienen líneas. Se tienen segmentos de línea generados por los puntos lindero, una opción para corregir este fenómeno es seleccionar cada uno de los segmentos y unirlos, lo
cual quita mucho tiempo si el conjunto de datos a manejar sea grande, es por ello que el asistente cuenta con una herramienta que ayuda automatizar este proceso.

<a class="" data-lightbox="introducicon" href="../_static/tutorial/cap4preinsumos30.png" title="Paso 1" data-title="Paso 1"><img src="../_static/tutorial/cap4preinsumos30.png" class="align-center" width="800px" alt="introduccion"/></a>

1.  Para acceder a esta funcion solo es direccionarse a la barra de herramientas y dar clic en el boton **construir linderos**

<a class="" data-lightbox="paso 1" href="../_static/tutorial/cap4preinsumos31.png" title="Paso 1" data-title="Paso 1"><img src="../_static/tutorial/cap4preinsumos31.png" class="align-center" width="800px" alt="Paso 1"/></a>

2.  Posteriormente saldrá un cuadro de diálogo, preguntando si desea seleccionar algún tipo de lindero o desea construir los linderos con todas las líneas existentes. Presionamos el botón **sí** y finalmente detenemos la edición y guardamos los cambios.

<a class="" data-lightbox="paso 1" href="../_static/tutorial/cap4preinsumos32.gif" title="Paso 1" data-title="Paso 1"><img src="../_static/tutorial/cap4preinsumos32.gif" class="align-center" width="800px" alt="Paso 1"/></a>

Como se puede observar en la siguiente imagen en el momento de seleccionar se puede identificar, los linderos bien definidos.

<a class="" data-lightbox="paso 2" href="../_static/tutorial/cap4preinsumos33.png" title="paso 2" data-title="Paso 2"><img src="../_static/tutorial/cap4preinsumos33.png" class="align-center" width="800px" alt="Paso 2"/></a>

### Relación entre puntos y linderos
1.  Ahora es necesario identificar los puntos que hacen parte de los linderos recién construidos, es decir identificar el **id** de los puntos que conforman un lindero, para ello haremos uso de la herramienta **llenar PuntosCCL** (cara cadena línea). Ubicado en la barra de herramientas

 <a class="" data-lightbox="paso 1" href="../_static/tutorial/cap4preinsumos34.png" title="paso 1" data-title="Paso 1"><img src="../_static/tutorial/cap4preinsumos34.png" class="align-center" width="800px" alt="Paso 1"/></a>
 
 2.  Posteriormente saldrá un cuadro de diálogo donde se consulta si se desea crear la relación para un lindero en especifico o para todos los existentes, para este caso se hará con todos por lo tanto daremos clic en el botón **si**
 
  <a class="" data-lightbox="paso 2" href="../_static/tutorial/cap4preinsumos35.png" title="paso 2" data-title="Paso 2"><img src="../_static/tutorial/cap4preinsumos35.png" class="align-center" width="800px" alt="Paso 2"/></a>

Para identificar si el proceso se genero correctamente podemos abrir la tabla de atributos de la tabla **col_puntoccl** el cual podra ubicar en el grupo de tables ubicado en el panel de capas como lo muestra la siguiente imagen.

  <a class="" data-lightbox="Resultado" href="../_static/tutorial/cap4preinsumos36.png" title="Resultado" data-title="Resultado"><img src="../_static/tutorial/cap4preinsumos36.png" class="align-center" width="800px" alt="Resultado"/></a>

Como se puede observar en la figura 15 podemos encontrar la columna ccl diligenciada , dado por el proceso desarrollado

  <a class="" data-lightbox="Resultado" href="../_static/tutorial/cap4preinsumos37.png" title="Resultado" data-title="Resultado"><img src="../_static/tutorial/cap4preinsumos37.png" class="align-center" width="800px" alt="Resultado"/></a>

## Unidades Espaciales
### Creación de terrenos y sus relaciones
1.  Para crear un terreno basta con ir a la barra de herramientas y activar el  botón **crear objetos de levantamiento** y a continuación seleccionar la opción crear terreno

  <a class="" data-lightbox="Paso 1" href="../_static/tutorial/cap5undespaciales1.png" title="Paso 1" data-title="Paso 1"><img src="../_static/tutorial/cap5undespaciales1.png" class="align-center" width="800px" alt="Paso 1"/></a>
  
2.  Se desplegara un cuadro de diálogo, donde ofrece la opción de cargar una capa vectorial con la información o generar el terreno a partir de los linderos existentes, en
este caso seleccionaremos la opción **seleccionando linderos existentes,**posteriormente damos clic en el botón **siguiente,** de inmediato el cuadro de diálogo cambiara y nos da 3 opciones para seleccionándolos en el mapa, o por medio de una expresión algorítmica o seleccionar todos los linderos existentes en este caso, se recurrirá hacer uso de la ultima utilidad mencionada.

  <a class="" data-lightbox="Paso 2" href="../_static/tutorial/cap5undespaciales2.gif" title="Paso 2" data-title="Paso 2"><img src="../_static/tutorial/cap5undespaciales2.gif" class="align-center" width="800px" alt="Paso 2"/></a>
  
3.  Como se puede apreciar todos los linderos son seleccionados y son identificados por la herramienta, finalmente procedemos a dar clic en el botón **finalizar**

  <a class="" data-lightbox="Paso 3" href="../_static/tutorial/cap5undespaciales3.png" title="Paso 3" data-title="Paso 3"><img src="../_static/tutorial/cap5undespaciales3.png" class="align-center" width="800px" alt="Paso 3"/></a>
  
4.  Los terrenos ya han sido creados, pero es necesario llenar unos campos obligatorios, para identificar cuales son dichos campos es recomendable tener en cuenta los pasos *4, 5 y 6 de la seccion puntos lindero,* para iniciar con el proceso dar clic en el botón **Abrir tabla de atributos** ubicado en el mensaje emergente al finalizar el paso 3.

 <a class="" data-lightbox="Paso 4" href="../_static/tutorial/cap5undespaciales4.png" title="Paso 4" data-title="Paso 4"><img src="../_static/tutorial/cap5undespaciales4.png" class="align-center" width="800px" alt="Paso 4"/></a>

5.  Se identifico que como único valor obligatorio del terreno es el atributo de área, por lo tanto nos dirigimos al cajetín de asignación de atributos ubicado en la parte superior de la ventana emergente generada al finalizar el paso 4 y buscamos el atributo **Área de terreno**
 
6. Posteriormente damos clic en el botón href="../_static/tutorial/ICOdialogodeexpressiones.png" title='Boton "Generar expresion"' data-title="Generar expresion"><img src="../_static/tutorial/ICOdialogodeexpressiones.png" class="align-center" width="30px" alt='Boton "Generar expresion"'/></a> se desplegará la ventana de expresiones donde se escribirá la función *\$area* posteriormente damos clic en el botón **Aceptar.** 

 <a class="" data-lightbox="Paso 6" href="../_static/tutorial/cap5undespaciales5.png" title="Paso 6" data-title="Paso 6"><img src="../_static/tutorial/cap5undespaciales5.png" class="align-center" width="800px" alt="Paso 6"/></a>
 
 7.  Finalmente se cerrará esa ventana emergente y solo queda dar clic en el botón **Actualizar lo filtrado**, de inmediato se podrá ver que en la columna en este caso el de
 nombre área de terreno fueron asignadas los valores de área correspondiente y finalmente guardamos dichos cambios presionando el botón href="../_static/tutorial/ICOguardarcambios.png" title='Boton "Guardar Cambios"' data-title="Guardar cambios"><img src="../_static/tutorial/ICOguardarcambios.png" class="align-center" width="30px" alt='Boton "Guardar Cambios"'/></a> y finalmente cerramos la ventana actual.
 
 <a class="" data-lightbox="Paso 7" href="../_static/tutorial/cap5undespaciales6.png" title="Paso 7" data-title="Paso 7"><img src="../_static/tutorial/cap5undespaciales6.png" class="align-center" width="800px" alt="Paso 7"/></a>
 
#### Creación de relacion entre los linderos y los terrenos
### Creación de construcciones
### Creación de unidades de construcción

## Unidad Básica Administrativa
### Crear predio

## Interesados
### Crear agrupación de interesados

## Fuentes

## RRR
### Crear derecho

