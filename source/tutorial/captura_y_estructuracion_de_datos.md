# Captura y Estructuración de Datos

## Preprocesamiento de insumos

La primera parte de tutorial corresponde a la descarga e importación de datos en QGIS.  Para llevar a cabo con éxito cada uno de los pasos, es necesario que descargues el [material de práctica](http://nas-swissphoto.quickconnect.to/d/f/620702901595062139) y sigas los pasos que describiremos a lo largo de documento.

<div class="seealso">
<p class="admonition-title">TIP</p>
<p> Si deseas agregar otras fuentes de información como referencia a la información proporcionada, puedes hacerlo haciendo uso de QGIS y sus diferentes funcionalidades. </p>
</div>

### Paso 1: Conexión a la base de datos 

Comenzaremos con la conexión a la base de datos, para realizar este proceso, dirígete al panel de navegación ubicado a la izquierda de la interfaz de QGIS, ubica la sección **Geopackage**, clic derecho sobre esta sección y seleccionas la opción de **Conexión nueva**. Una vez se despliega el panel de navegación, deberás ubicar la base de datos **taller_asistente.gpkg** y dar clic en el botón **Abrir** para configurar la conexión a la base de datos.

<div class="note">
<p class="admonition-title">IMPORTANTE</p>
<p> Como resultado de este proceso se tendrá conexión a una base de datos que posee diversa información, de la cual se hará uso a medida que se avance en las secciones de este tutorial. </p>
</div>

<a class="" data-lightbox=" Paso 1: Conexión a la base de datos " href="../_static/tutorial/captura_y_estructura_de_datos/cap4preinsumos1.gif" title=" Paso 1: Conexión a la base de datos " data-title=" Paso 1: Conexión a la base de datos "><img src="../_static/tutorial/captura_y_estructura_de_datos/cap4preinsumos1.gif" class="align-center" width="800px" alt=" Paso 1: Conexión a la base de datos "/></a>

<div class="seealso">
<p class="admonition-title">TIP</p>
<p> Con el fin de tener una mejor perspectiva es recomendable instalar el complemento <b>QuickMapServices</b> que proporciona un conjunto de imágenes satelitales que sirven de referencia en la visualización de la información adquirida en campo. </p>
</div>

<a class="" data-lightbox="Paso 2" href="../_static/tutorial/captura_y_estructura_de_datos/cap4preinsumos2.gif" title="Paso 2" data-title="Paso 2"><img src="../_static/tutorial/captura_y_estructura_de_datos/cap4preinsumos2.gif" class="align-center" width="800px" alt="Paso 2"/></a>

## Consulta de dominios

### Paso 1:

Para proceder a la consulta de dominios debes dirigirte al grupo **domains** ubicado en el panel de capas, abrir el grupo y buscar el dominio de interés, sobre esta debes dar click derecho y seleccionar la opción **Abrir tabla de atributos** en el menú que se despliega.

El ejemplo que se muestra a continuación se desarrolla con la capa **lc\_puntotipo**.

<a class="" data-lightbox="Paso 1" href="../_static/tutorial/captura_y_estructura_de_datos/cap4preinsumos9.png" title="Paso 1" data-title="Paso 1"><img src="../_static/tutorial/captura_y_estructura_de_datos/cap4preinsumos9.png" class="align-center" width="400px" alt="Paso 1"/></a>

<div class="seealso">
<p class="admonition-title">TIP</p>
<p>Puedes acceder a la tabla de atributos de la capa de interes, ubicandote sobre el elemento de interes y dando clic en la tecla <b>F6</b></p>
</div>

### Paso 2:

Se desplegará un cuadro de diálogo con el listado de dominios existentes, lo que se busca es identificar el número correspondiente al campo de descripción del elemento requerido, ubicado en la columna **t_id,** ya que, para un manejo óptimo de bases de datos, se recomienda trabajar con identificadores numéricos

 <a class="" data-lightbox="Paso 2" href="../_static/tutorial/captura_y_estructura_de_datos/cap4preinsumos10.png" title="Paso 2" data-title="Paso 2"><img src="../_static/tutorial/captura_y_estructura_de_datos/cap4preinsumos10.png" class="align-center" width="1200px" alt="Paso 2"/></a>

 A continuación se podrá ver la sección de punto lindero de [Modelo_Aplicación_LADMCOL_Lev_Cat_V1_0](https://raw.githubusercontent.com/SwissTierrasColombia/LADM_COL/master/Catastro_Multiproposito/1_Metamodelo_Extendido/1_Catastro_Registro/Modelo_Extendido_LADMCOL_Cat_Reg_V3_0.png) donde es posible consultar el repositorio de SwissTierras y ver futuras actualizaciones del mismo, esto se hace con el fin de identificar los campos obligatorios que debe tener la información al momento de ser importada y poder trabajar con el asistente usando sus funcionalidades de captura masiva.

Es importante tener en cuenta que existen entidades asociadas a otras, las cuales guardan una relación directa, por lo tanto, en este caso según lo muestra la siguiente imagen es necesario analizar tanto **LC\_PuntoLindero** como **COL_Punto** teniendo en cuenta los criterios presentados imagen titulada **Entendiendo LADM 2**.

 <a class="" data-lightbox="Entendiendo LADM" href="../_static/tutorial/captura_y_estructura_de_datos/cap4preinsumos7.png" title="Entendiendo LADM" data-title="Entendiendo LADM"><img src="../_static/tutorial/captura_y_estructura_de_datos/cap4preinsumos7.png" class="align-center" width="800px" alt="Entendiendo LADM"/></a>

 <a class="" data-lightbox="Entendiendo LADM2" href="../_static/tutorial/captura_y_estructura_de_datos/cap4preinsumos8.png" title="Entendiendo LADM 2" data-title="Entendiendo LADM"><img src="../_static/tutorial/captura_y_estructura_de_datos/cap4preinsumos8.png" class="align-center" width="800px" alt="Entendiendo LADM"/></a>
 
Posteriormente se debe identificar el dominio de aquellos valores que poseen un tipo de información determinada como es el caso del **punto tipo**, el cual tiene asignado los valores de LC_PuntoTipo según la imagen anterior.

## Paquete de topografía y representación

### Puntos de lindero

### Puntos de levantamiento
 
### Puntos de Control
  
### Linderos

### Construcción De Linderos

### Relación Entre Puntos y Linderos

## Unidad Espacial

### Creación De Terrenos y Sus Relaciones
 
#### Creación De Relacion Entre Los Linderos y Los Terrenos

### Creación De Construcciones

### Creación De Unidades De Construcción

## Unidad Básica Administrativa

### Crear Predio

## Interesados

### Crear Agrupación De Interesados

## Fuentes

## RRR

### Crear Derecho