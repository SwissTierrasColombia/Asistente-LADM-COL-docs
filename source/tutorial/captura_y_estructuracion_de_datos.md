# Captura y Estructuración de Datos

## Preprocesamiento de insumos

## Consulta de dominios

## Paquete de topografía y representación

### Puntos de lindero

#### Paso 1: Creación de punto

Entiéndase como puntos linderos aquellos que definen los límites de un terreno,  siguiendo la **ruta LADM-COL – captura y estructuración de datos – levantamiento Catastral- Topografía y representación – crear punto**.

  <a class="" data-lightbox="Paso 1: Creación de punto" href="../_static/tutorial/captura_y_estructura_de_datos/cap4preinsumos3.png" title="Paso 1: Creación de punto" data-title="Paso 1: Creación de punto"><img src="../_static/tutorial/captura_y_estructura_de_datos/cap4preinsumos3.png" class="align-center" width="800px" alt="Paso 1: Creación de punto"/></a>

#### Paso 2: Selección del tipo de punto

De forma inmediata se desplegará un cuadro de diálogo con la opción de seleccionar que clase de punto desea importar, en este caso será **punto lindero,** presionar **Siguiente**

  <a class="" data-lightbox="Paso 2: Selección del tipo de punto" href="../_static/tutorial/captura_y_estructura_de_datos/cap4preinsumos4.png" title="Paso 2: Selección del tipo de punto" data-title="Paso 2: Selección del tipo de punto"><img src="../_static/tutorial/captura_y_estructura_de_datos/cap4preinsumos4.png" class="align-center" width="600px" alt="Paso 2: Selección del tipo de punto"/></a>

#### Paso 3: Selección de los datos

Ahora se selecciona el set de datos ya sea de una fuente archivo CSV o una capa vectorial, en este caso elegir el conjunto de datos que ya esta cargado en el interfaz de Qgis. Que es **topo_punto_lindero**, y procedemos a dar clic en el botón **importar.**

 <a class="" data-lightbox="Paso 3: Selección de los datos" href="../_static/tutorial/captura_y_estructura_de_datos/cap4preinsumos5.png" title="Paso 3: Selección de los datos" data-title="Paso 3: Selección de los datos"><img src="../_static/tutorial/captura_y_estructura_de_datos/cap4preinsumos5.png" class="align-center" width="600px" alt="Paso 3: Selección de los datos"/></a>

#### Paso 4: Mapeo de campos

Se genera un cuadro de diálogo, donde se lleva a cabo un muestreo de la información levantada contra la información que requiere el modelo. Se considera de gran importancia detallar esta sección ya que, es la base del resto de importaciones que se explicarán en este documento. Para ello es necesario observar el modelo.

 <a class="" data-lightbox="Paso 4: Mapeo de campos" href="../_static/tutorial/captura_y_estructura_de_datos/cap4preinsumos6.png" title="Paso 4: Mapeo de campos" data-title="Paso 4: Mapeo de campos"><img src="../_static/tutorial/captura_y_estructura_de_datos/cap4preinsumos6.png" class="align-center" width="600px" alt="Paso 4: Mapeo de campos"/></a>

La capa **lc\_ punto lindero** cuenta con 5 atributos obligatorios, estos son:

| **Item** | **Entidad**     | **Atributo**         | **Contenido**                |
| -------- | --------------- | -------------------- | ---------------------------- |
| 1        | LC_PuntoLindero | ID_Punto_Lindero     | Cadena de texto              |
| 2        | LC_PuntoLindero | Punto Tipo           | **LC_puntotipo**             |
| 3        | LC_PuntoLindero | Acuerdo              | **LC_Acuerdotipo**           |
| 4        | LC_PuntoLindero | Exactitud Horizontal | Numérico                     |
| 5        | COL_Punto       | MétodoProducción     | **Col_MetodoProduccionTipo** |

#### Paso 5: Asignación de campos

En el cuadro de diálogo del mapeo de campos dar clic en el botón "Generar expresión" ![Botón generar expresion](../_static/tutorial/captura_y_estructura_de_datos/ICOdialogodeexpressiones.png) para los atributos mencionados en la tabla anterior.

Para la asignación de diferentes t_id se hace uso de la siguiente función:

```python
get_domain_code_from_value('Nombre de la tabla del dominio' (Texto), 
                           valor del dominio a buscar (Texto),
                           Indica si validar conexión o no (Booleano), 
                           Indica si el valor es iliCode o no (Booleano))
```

<a class="" data-lightbox="Paso 5: Asignación de campos" href="../_static/tutorial/captura_y_estructura_de_datos/cap4preinsumos12.png" title="Paso 5: Asignación de campos" data-title="Paso 5: Asignación de campos"><img src="../_static/tutorial/captura_y_estructura_de_datos/cap4preinsumos12.png" class="align-center" width="800px" alt="Paso 5: Asignación de campos"/></a>

Para este caso debemos asígnar los valores de la siguiente manera:

| Atributo             | Expresión                                                    |
| -------------------- | ------------------------------------------------------------ |
| id_punto_lindero     | id_punto                                                     |
| puntotipo            | get_domain_code_from_value('lc_puntotipo', punto_tipo,True, False) |
| acuerdo              | get_domain_code_from_value('lc_acuerdotipo', acuerdo,True, False) |
| exactitud_horizontal | 1                                                            |
| metodoproduccion     | get_domain_code_from_value('col_metodoproducciontipo', 'Metodo_Directo',True, False) |

<div class="warning">
<p class="admonition-title">ADVERTENCIA</p>
<p>Para el caso de <b>metodoproduccion</b>, se utiliza el texto 'Metodo_Directo' ya que los datos iniciales no cuentan con información para este campo.</p>
</div>


Una vez que se diligencian cada uno de los atributos al interior del formulario, se obtiene el siguiente resultado:

<a class="" data-lightbox="Paso 5: Asignación de campos" href="../_static/tutorial/captura_y_estructura_de_datos/cap4preinsumos13.png" title="Paso 5: Asignación de campos" data-title="Paso 5: Asignación de campos"><img src="../_static/tutorial/captura_y_estructura_de_datos/cap4preinsumos13.png" title="Paso 5: Asignación de campos" class="align-center" width="800px" alt="Paso 5: Asignación de campos"/></a>

#### Paso 6 Resultado de la ejecución:

Ya terminado el mapeo de campos, debes dar click en Ejecutar y al terminar el proceso tu podras visualizar el siguiente mensaje de validación, y posteriormente cerrar el cuadro de diálogo.

  <a class="" data-lightbox="Paso 6 Resultado de la ejecución" href="../_static/tutorial/captura_y_estructura_de_datos/cap4preinsumos15.png" title="Paso 6 Resultado de la ejecución" data-title="Paso 6 Resultado de la ejecución"><img src="../_static/tutorial/captura_y_estructura_de_datos/cap4preinsumos15.png" class="align-center" width="800px" alt="Paso 6 Resultado de la ejecución"/></a>

### Puntos de levantamiento

#### Paso 1:

Inicialmente se procede arrastra el insumo de topo_puntos_levantamiento.

   <a class="" data-lightbox="Paso 1" href="../_static/tutorial/captura_y_estructura_de_datos/
   cap4preinsumos16.png" title="Paso 1" data-title="Paso 1"><img src="../_static/tutorial/captura_y_estructura_de_datos/
   cap4preinsumos16.png" class="align-center" width="800px" alt="Paso 1"/></a>

#### Paso 2:

Para iniciar con el proceso de importación podemos dirigirnos al cajetín **crear objetos de levantamiento – Crear punto**

#### Paso 3:

Posteriormente se activará un cuadro de diálogo donde se deberá seleccionar el tipo de punto a insertar en este caso **punto     levantamiento** después de darle **siguiente** escoger el set de datos para el procesamiento en este caso **topo_punto\_levantamiento** y finalmente presionar el botón **Importar**

   <a class="" data-lightbox="Paso 2" href="../_static/tutorial/captura_y_estructura_de_datos/cap4preinsumos17.gif" title="Paso 2" data-title="Paso 2"><img src="../_static/tutorial/captura_y_estructura_de_datos/cap4preinsumos17.gif" class="align-center" width="800px" alt="Paso 2"/></a>

#### Paso 4:   

Se desplegará un cuadro de diálogo de muestreo de la información se recomienda tener en cuenta los *pasos 4, 5 y 6 de la  seccion **punto lindero**,* para el desarrollo de este proceso, lo que se buscar es lograr un muestreo como se indica en la siguiente imagen, al lograrlo proceder a activar el botón ejecutar.   

   <a class="" data-lightbox="Paso 4" href="../_static/tutorial/captura_y_estructura_de_datos/cap4preinsumos18.png" title="Paso 4" data-title="Paso 4"><img src="../_static/tutorial/captura_y_estructura_de_datos/cap4preinsumos18.png" class="align-center" width="800px" alt="Paso 4"/></a>

   Obteniendo el siguiente resultado 

   <a class="" data-lightbox="Resultado" href="../_static/tutorial/captura_y_estructura_de_datos/cap4preinsumos19.png" title="Resultado" data-title="Resultado"><img src="../_static/tutorial/captura_y_estructura_de_datos/cap4preinsumos19.png" class="align-center" width="800px" alt="Resultado"/></a>   

### Puntos de Control

#### Paso 1:

Para importar los puntos control, se hará atreves de un archivo \*.csv para ello vamos **abrir la fuente de administración de datos** de Qgis.

 <a class="" data-lightbox="Paso 1" href="../_static/tutorial/captura_y_estructura_de_datos/cap4preinsumos20.png" title="Paso 1" data-title="Paso 1"><img src="../_static/tutorial/captura_y_estructura_de_datos/cap4preinsumos20.png" class="align-center" width="800px" alt="Paso 1"/></a>

#### Paso 2:

Emergerá un cuadro de diálogo, donde se debe seleccionar la fuente de texto delimitado por texto. Elegir la opción **CSV (valores separados por coma)**, posteriormente en la casilla de nombre del archivo, presionar la casilla de los tres putos que lo acompañan, se abrirá un cuadro de diálogo, donde se ubicará el archivo de dicho formato y se inicie con el proceso de importación de datos

 <a class="" data-lightbox="Paso 2" href="../_static/tutorial/captura_y_estructura_de_datos/cap4preinsumos21.gif" title="Paso 2" data-title="Paso 2"><img src="../_static/tutorial/captura_y_estructura_de_datos/cap4preinsumos21.gif" class="align-center" width="800px" alt="Paso 2"/></a>

#### Paso 3:

Despues de añadir los puntos, dirijase a la herramienta **crear punto**.

 <a class="" data-lightbox="Paso 3" href="../_static/tutorial/captura_y_estructura_de_datos/cap4preinsumos22.png" title="Paso 3" data-title="Paso 3"><img src="../_static/tutorial/captura_y_estructura_de_datos/cap4preinsumos22.png" class="align-center" width="400px" alt="Paso 3"/></a>

#### Paso 4:

Seleccionar en tipo de puntos la opción **punto de control**, presionar el botón **siguiente** , de inmediato se cambiara el cuadro de diálogo, donde solicitará la fuente de datos que quiere cargar al modelo, elegir la alternativa de cargar dicha información **desde otra capa Qgis** y escoger la capa **topo\_punto_control** recién ingresada y dirigirse al botón **exportar** . 

 <a class="" data-lightbox="Paso 4" href="../_static/tutorial/captura_y_estructura_de_datos/cap4preinsumos24.gif" title="Paso 4" data-title="Paso 4"><img src="../_static/tutorial/captura_y_estructura_de_datos/cap4preinsumos24.gif" class="align-center" width="800px" alt="Paso 4"/></a>

#### Paso 5:

Se desplegará la ventana de muestreo donde se recomienda replicar el mismo procedimiento ejecutado en los pasos **4, 5 y 6 de la seccion punto lindero,** el objetivo es que pueda obtener un muestreo como el de la siguiente imagen , al finalizar dicho proceso , nos dirigimos al botón **ejecutar** al generarse el mensaje de verificación del proceso, **cerrar** la ventana

<a class="" data-lightbox="Paso 5" href="../_static/tutorial/captura_y_estructura_de_datos/cap4preinsumos25.png" title="Paso 5" data-title="Paso 5"><img src="../_static/tutorial/captura_y_estructura_de_datos/cap4preinsumos25.png" class="align-center" width="800px" alt="Paso 5"/></a>

Al incorporar la información al modelo, el asistente configura la simbología de los puntos como lo muestra la siguiente imágen

<a class="" data-lightbox="Resultado" href="../_static/tutorial/captura_y_estructura_de_datos/cap4preinsumos26.png" title="Resultado" data-title="Resultado"><img src="../_static/tutorial/captura_y_estructura_de_datos/cap4preinsumos26.png" class="align-center" width="800px" alt="Resultado"/></a>

### Linderos

1.  El proceso de creación de linderos es muy similar a la creación de puntos, iniciamos con la carga de la información suministrada **topo_lindero**.

  <a class="" data-lightbox="paso 1" href="../_static/tutorial/captura_y_estructura_de_datos/cap4preinsumos27.png" title="Paso 1" data-title="Paso 1"><img src="../_static/tutorial/captura_y_estructura_de_datos/cap4preinsumos27.png" class="align-center" width="800px" alt="Paso 1"/></a>

2.  Presione el botón **Crear objetos de levantamiento** y seleccione la opción de **crear lindero**, elegir la opción de **crear el lindero desde otra capa Qgis** y se escoge la capa recién cargada, posteriormente dar clic en el botón **importar.**

<a class="" data-lightbox="paso 2" href="../_static/tutorial/captura_y_estructura_de_datos/cap4preinsumos28.gif" title="Paso 2" data-title="Paso 2"><img src="../_static/tutorial/captura_y_estructura_de_datos/cap4preinsumos28.gif" class="align-center" width="800px" alt="Paso 2"/></a>

3.  Se abrirá la ventana de muestreo de la información, basados en los pasos **4, 5 y 6 de la seccion punto lindero,**  se puede observar que el único campo obligatorio es longitud, asi que al dar clic en  ![Botón generar expresion](../_static/tutorial/captura_y_estructura_de_datos/ICOdialogodeexpressiones.png), haciendo uso de la función *\$length* , para extraer desde la geometría la longitud dar clic en el botón **Aceptar** y posteriormente en **ejecutar** y **cerrar.**

<a class="" data-lightbox="paso 3" href="../_static/tutorial/captura_y_estructura_de_datos/cap4preinsumos29.png" title="Paso 3" data-title="Paso 3"><img src="../_static/tutorial/captura_y_estructura_de_datos/cap4preinsumos29.png" class="align-center" width="800px" alt="Paso 2"/></a>

### Construcción De Linderos

Entiéndase como lindero, la línea continua que separa un terreno de otro, como se puede observar en la siguiente imágen. Se tienen segmentos de línea generados por los puntos lindero, una opción para corregir este fenómeno es seleccionar cada uno de los segmentos y unirlos, lo cual quita mucho tiempo si el conjunto de datos a manejar es grande, es por ello que el asistente cuenta con una herramienta que ayuda automatizar este proceso.

<a class="" data-lightbox="introducicon" href="../_static/tutorial/captura_y_estructura_de_datos/cap4preinsumos30.png" title="Paso 1" data-title="Paso 1"><img src="../_static/tutorial/captura_y_estructura_de_datos/cap4preinsumos30.png" class="align-center" width="800px" alt="introduccion"/></a>

1.  Para acceder a esta herramienta, direccionarse a la barra de herramientas y dar clic en el boton **construir linderos**

<a class="" data-lightbox="paso 1" href="../_static/tutorial/captura_y_estructura_de_datos/cap4preinsumos31.png" title="Paso 1" data-title="Paso 1"><img src="../_static/tutorial/captura_y_estructura_de_datos/cap4preinsumos31.png" class="align-center" width="800px" alt="Paso 1"/></a>

2. Se obtendrá un cuadro de diálogo, preguntando si desea seleccionar algún tipo de lindero o desea construir los linderos con todas las líneas existentes. Presionar el botón **sí** y finalmente detener la edición y guardar los cambios.

<a class="" data-lightbox="paso 1" href="../_static/tutorial/captura_y_estructura_de_datos/cap4preinsumos32.gif" title="Paso 1" data-title="Paso 1"><img src="../_static/tutorial/captura_y_estructura_de_datos/cap4preinsumos32.gif" class="align-center" width="400px" alt="Paso 1"/></a>

Como se puede observar en la siguiente imágen, en el momento de seleccionar se puede identificar los linderos bien definidos.

<a class="" data-lightbox="paso 2" href="../_static/tutorial/captura_y_estructura_de_datos/cap4preinsumos33.png" title="paso 2" data-title="Paso 2"><img src="../_static/tutorial/captura_y_estructura_de_datos/cap4preinsumos33.png" class="align-center" width="800px" alt="Paso 2"/></a>

### Relación Entre Puntos y Linderos

1.  Ahora se debe identificar los puntos que hacen parte de los linderos recién construidos, es decir, identificar el **id** de los puntos que conforman un lindero, para ello se hará uso de la herramienta **llenar PuntosCCL** (cara cadena línea). Ubicado en la barra de herramientas

 <a class="" data-lightbox="paso 1" href="../_static/tutorial/captura_y_estructura_de_datos/cap4preinsumos34.png" title="paso 1" data-title="Paso 1"><img src="../_static/tutorial/captura_y_estructura_de_datos/cap4preinsumos34.png" class="align-center" width="800px" alt="Paso 1"/></a>

  2.  Se obtendrá un cuadro de diálogo donde se consulta si se desea crear la relación para un lindero en especifico o para todos los existentes, para este caso se hará con todos por lo tanto dar clic en el botón **si**

  <a class="" data-lightbox="paso 2" href="../_static/tutorial/captura_y_estructura_de_datos/cap4preinsumos35.png" title="paso 2" data-title="Paso 2"><img src="../_static/tutorial/captura_y_estructura_de_datos/cap4preinsumos35.png" class="align-center" width="400px" alt="Paso 2"/></a>

Para identificar si el proceso se generó correctamente se puede abrir la tabla de atributos de la tabla **col_puntoccl** el cual podra ubicar en el grupo de tables ubicado en el panel de capas como lo muestra la siguiente imagen.

  <a class="" data-lightbox="Resultado" href="../_static/tutorial/captura_y_estructura_de_datos/cap4preinsumos36.png" title="Resultado" data-title="Resultado"><img src="../_static/tutorial/captura_y_estructura_de_datos/cap4preinsumos36.png" class="align-center" width="800px" alt="Resultado"/></a>

Como se puede observar en la siguiente imágen encontrará la columna ccl diligenciada , gracias al proceso desarrollado

  <a class="" data-lightbox="Resultado" href="../_static/tutorial/captura_y_estructura_de_datos/cap4preinsumos37.png" title="Resultado" data-title="Resultado"><img src="../_static/tutorial/captura_y_estructura_de_datos/cap4preinsumos37.png" class="align-center" width="800px" alt="Resultado"/></a>

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