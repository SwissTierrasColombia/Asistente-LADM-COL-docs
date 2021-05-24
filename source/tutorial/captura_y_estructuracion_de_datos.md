# Captura y Estructuración de Datos

## Preprocesamiento de insumos

## Consulta de dominios

## Paquete de topografía y representación

### Puntos de lindero

#### Paso 1: Creación de punto lindero

Entiéndase *'Puntos de lindero'* como aquellos que definen los límites de un terreno.

Para este procedimiento, debes seguir la ruta **LADM-COL -> Captura y estructuración de datos -> Levantamiento Catastral -> Topografía y Representación -> Crear Punto**.

<a class="" data-lightbox="Paso 1: Creación de punto lindero" href="../_static/tutorial/captura_y_estructura_de_datos/cap4preinsumos3.png" title="Paso 1: Creación de punto lindero" data-title="Paso 1: Creación de punto lindero"><img src="../_static/tutorial/captura_y_estructura_de_datos/cap4preinsumos3.png" class="align-center" width="800px" alt="Paso 1: Creación de punto lindero"/></a>

#### Paso 2: Selección del tipo de punto

La acción anterior desplegará un cuadro de diálogo con la opción para seleccionar la clase de punto que se desea importar. En este caso, seleccionamos **Punto Lindero** y luego hacemos clic en **Siguiente**.

<a class="" data-lightbox="Paso 2: Selección del tipo de punto" href="../_static/tutorial/captura_y_estructura_de_datos/cap4preinsumos4.png" title="Paso 2: Selección del tipo de punto" data-title="Paso 2: Selección del tipo de punto"><img src="../_static/tutorial/captura_y_estructura_de_datos/cap4preinsumos4.png" class="align-center" width="600px" alt="Paso 2: Selección del tipo de punto"/></a>

#### Paso 3: Selección de los datos punto lindero

Ahora, debes seleccionar el conjunto de datos. La fuente de estos puede ser un archivo CSV o una capa vectorial. 

Para este caso, elegiremos el conjunto de datos que ya está cargado en el interfaz de QGIS, **topo_punto_lindero**, y procedemos a dar clic en el botón **Importar.**

<a class="" data-lightbox="Paso 3: Selección de los datos punto lindero" href="../_static/tutorial/captura_y_estructura_de_datos/cap4preinsumos5.png" title="Paso 3: Selección de los datos punto lindero" data-title="Paso 3: Selección de los datos punto lindero"><img src="../_static/tutorial/captura_y_estructura_de_datos/cap4preinsumos5.png" class="align-center" width="600px" alt="Paso 3: Selección de los datos punto lindero"/></a>

#### Paso 4: Mapeo de campos punto lindero

Tan pronto realicemos el paso anterior, se genera un cuadro de diálogo en el cual se encuentra el muestreo de la información levantada en campo comparada con la información que requiere el modelo. 

 <a class="" data-lightbox="Paso 4: Mapeo de campos punto lindero" href="../_static/tutorial/captura_y_estructura_de_datos/cap4preinsumos6.png" title="Paso 4: Mapeo de campos punto lindero" data-title="Paso 4: Mapeo de campos punto lindero"><img src="../_static/tutorial/captura_y_estructura_de_datos/cap4preinsumos6.png" class="align-center" width="600px" alt="Paso 4: Mapeo de campos punto lindero"/></a>

<div class="warning">
<p class="admonition-title">ADVERTENCIA</p>
<p>Resulta de gran importancia esta sección ya que es la base de la importación de información restante.</p>
</div>

#### Paso 5: Asignación de campos punto lindero

La capa **lc\_punto lindero** cuenta con cinco atributos obligatorios, estos son:

| **Item** | **Entidad**     | **Atributo**         | **Contenido**                |
| -------- | --------------- | -------------------- | ---------------------------- |
| 1        | LC_PuntoLindero | ID_Punto_Lindero     | Cadena de texto              |
| 2        | LC_PuntoLindero | Punto Tipo           | **LC_puntotipo**             |
| 3        | LC_PuntoLindero | Acuerdo              | **LC_Acuerdotipo**           |
| 4        | LC_PuntoLindero | Exactitud Horizontal | Numérico                     |
| 5        | COL_Punto       | MetodoProducción     | **Col_MetodoProduccionTipo** |

Considerando esto, en el cuadro de diálogo del mapeo de campos (imagen anterior) procedemos a dar clic en el botón **"Generar expresión"** ![Botón generar expresion](../_static/tutorial/captura_y_estructura_de_datos/ICOdialogodeexpressiones.png)  para los atributos mencionados en la tabla anterior.

Para la asignación de diferentes **t_id** se hace uso de la siguiente función:

```sql
get_domain_code_from_value('Nombre de la tabla del dominio' (Texto), 
                           valor del dominio a buscar (Texto),
                           Indica si validar conexión o no (Booleano), 
                           Indica si el valor es iliCode o no (Booleano))
```

<a class="" data-lightbox="Paso 5: Asignación de campos punto lindero" href="../_static/tutorial/captura_y_estructura_de_datos/cap4preinsumos12.png" title="Paso 5: Asignación de campos punto lindero" data-title="Paso 5: Asignación de campos punto lindero"><img src="../_static/tutorial/captura_y_estructura_de_datos/cap4preinsumos12.png" class="align-center" width="800px" alt="Paso 5: Asignación de campos punto lindero"/></a>

Para este caso, debemos asignar los valores de la siguiente manera:

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

Una vez que se diligencian cada uno de los atributos al interior del formulario, se obtiene el siguiente resultado.

<a class="" data-lightbox="Paso 5: Asignación de campos punto lindero" href="../_static/tutorial/captura_y_estructura_de_datos/cap4preinsumos13.png" title="Paso 5: Asignación de campos punto lindero" data-title="Paso 5: Asignación de campos punto lindero"><img src="../_static/tutorial/captura_y_estructura_de_datos/cap4preinsumos13.png" class="align-center" width="800px" alt="Paso 5: Asignación de campos punto lindero"/></a>

#### Paso 6: Resultado de la ejecución punto lindero

Ya terminado el mapeo de campos, debes dar clic en **Ejecutar** y al terminar el proceso podrás visualizar el siguiente mensaje de validación, después de verificar su contenido se procede a cerrar el cuadro de diálogo.  

<a class="" data-lightbox="Paso 6 Resultado de la ejecución punto lindero" href="../_static/tutorial/captura_y_estructura_de_datos/cap4preinsumos15.png" title="Paso 6 Resultado de la ejecución punto lindero" data-title="Paso 6 Resultado de la ejecución punto lindero"><img src="../_static/tutorial/captura_y_estructura_de_datos/cap4preinsumos15.png" class="align-center" width="800px" alt="Paso 6 Resultado de la ejecución punto lindero"/></a>

### Puntos de levantamiento

#### Paso 1: Carge de insumos

Inicialmente, se procede a arrastrar el insumo de **topo_puntos_levantamiento** al menú de capas de QGIS.

<a class="" data-lightbox="Paso 1: Carge de insumos punto levantamiento" href="../_static/tutorial/captura_y_estructura_de_datos/cap4preinsumos16.gif" title="Paso 1: Carge de insumos punto levantamiento" data-title="Paso 1: Carge de insumos punto levantamiento"><img src="../_static/tutorial/captura_y_estructura_de_datos/cap4preinsumos16.gif" class="align-center" width="800px" alt="Paso 1: Carge de insumos punto levantamiento"/></a>

#### Paso 2: Creación de punto levantamiento

Para iniciar con el proceso de importación debes dirigirte a la barra de herramientas del plugin **Crear objetos de levantamiento -> Crear punto**.

<a class="" data-lightbox="Paso 2: Creación de punto levantamiento" href="../_static/tutorial/captura_y_estructura_de_datos/cap4preinsumos16.png" title="Paso 2: Creación de punto levantamiento" data-title="Paso 2: Creación de punto levantamiento"><img src="../_static/tutorial/captura_y_estructura_de_datos/cap4preinsumos16.png" class="align-center" width="400px" alt="Paso 2: Creación de punto levantamiento"/></a>

#### Paso 3: Selección de los datos punto levantamiento

Posteriormente, se desplegará un cuadro de diálogo donde se deberá seleccionar el tipo de punto a insertar, en este caso: **Punto Levantamiento**, confirma por medio del botón **Siguiente** , y escoge el conjunto de datos para el procesamiento, que para este caso corresponde con **topo_punto\_levantamiento** y finalmente presiona el botón **Importar**.

<a class="" data-lightbox="Paso 3: Selección de los datos punto levantamiento" href="../_static/tutorial/captura_y_estructura_de_datos/cap4preinsumos17.gif" title="Paso 3: Selección de los datos punto levantamiento" data-title="Paso 3: Selección de los datos punto levantamiento"><img src="../_static/tutorial/captura_y_estructura_de_datos/cap4preinsumos17.gif" class="align-center" width="800px" alt="Paso 3: Selección de los datos punto levantamiento"/></a>

#### Paso 4: Mapeo de campos punto levantamiento  

Se desplegará un cuadro de diálogo de mapeo de campos de la información. Se recomienda tener en cuenta los pasos desarrollados en el [paso 4](#paso-4-mapeo-de-campos-punto-lindero) de la sección de punto de lindero y de esta manera obtener un mapeo de campos como se indica a continuación:   

Para este caso, debemos asignar los valores de la siguiente manera:

| Atributo                 | Expresión                                                    |
| ------------------------ | ------------------------------------------------------------ |
| id_punto_levantamiento   | id                                                           |
| puntotipo                | get_domain_code_from_value('lc_puntotipo', punto_tipo,True, False) |
| tipo_punto_levantamiento | get_domain_code_from_value('lc_puntolevtipo', "Construccion",True, False) |
| exactitud_horizontal     | 1                                                            |
| metodoproduccion         | get_domain_code_from_value('col_metodoproducciontipo', 'Metodo_Directo',True, False) |

<div class="warning">
<p class="admonition-title">ADVERTENCIA</p>
<p>Para el caso de <b>metodoproduccion</b>, se utiliza el texto 'Metodo_Directo' ya que los datos iniciales no cuentan con información para este campo.</p>
<p>Para el caso de <b>tipo_punto_levantamiento</b>, se utiliza el texto 'Construccion' ya que los datos iniciales no cuentan con información para este campo.</p>
</div>

<a class="" data-lightbox="Paso 4: Mapeo de campos punto levantamiento" href="../_static/tutorial/captura_y_estructura_de_datos/cap4preinsumos18.png" title="Paso 4: Mapeo de campos punto levantamiento" data-title="Paso 4: Mapeo de campos punto levantamiento"><img src="../_static/tutorial/captura_y_estructura_de_datos/cap4preinsumos18.png" class="align-center" width="800px" alt="Paso 4: Mapeo de campos punto levantamiento"/></a>

Después, debes activar el proceso por medio del botón **Ejecutar** obtienes el siguiente resultado:

<a class="" data-lightbox="Resultado punto lindero" href="../_static/tutorial/captura_y_estructura_de_datos/cap4preinsumos19.png" title="Resultado punto lindero" data-title="Resultado punto lindero"><img src="../_static/tutorial/captura_y_estructura_de_datos/cap4preinsumos19.png" class="align-center" width="800px" alt="Resultado punto lindero"/></a>   

### Puntos de Control

#### Paso 1: Importación

Para importar los *'Puntos de Control'*, se hará a través de un archivo de extensión \*.csv para ello debes abrir el **Administrador de fuentes de datos** de QGIS del cual despliega un cuadro de diálogo, donde se debe seleccionar la fuente de texto delimitado por texto, seguido es necesario seleccionar la opción **CSV (valores separados por coma)** y posteriormente en la casilla de nombre del archivo presionas el botón de los tres puntos y así ubicar el archivo **topo_punto_control.csv** dentro de los recursos suministrados.

<a class="" data-lightbox="Paso 2" href="../_static/tutorial/captura_y_estructura_de_datos/cap4preinsumos21.gif" title="Paso 2" data-title="Paso 2"><img src="../_static/tutorial/captura_y_estructura_de_datos/cap4preinsumos21.gif" class="align-center" width="800px" alt="Paso 2"/></a>

#### Paso 3:

*Después* de añadir los puntos, diríjase a la herramienta **crear punto**.

 <a class="" data-lightbox="Paso 3" href="../_static/tutorial/captura_y_estructura_de_datos/cap4preinsumos22.png" title="Paso 3" data-title="Paso 3"><img src="../_static/tutorial/captura_y_estructura_de_datos/cap4preinsumos22.png" class="align-center" width="400px" alt="Paso 3"/></a>

#### Paso 4:

Seleccionar en tipo de puntos la opción **punto de control**, presionar el botón **siguiente**, de inmediato se cambiará el cuadro de diálogo, donde solicitará la fuente de datos que quiere cargar al modelo, elegir la alternativa de cargar dicha información **desde otra capa *QGIS*** y escoger la capa **topo\_punto_control** recién ingresada y dirigirse al botón **exportar** . 

 <a class="" data-lightbox="Paso 4" href="../_static/tutorial/captura_y_estructura_de_datos/cap4preinsumos24.gif" title="Paso 4" data-title="Paso 4"><img src="../_static/tutorial/captura_y_estructura_de_datos/cap4preinsumos24.gif" class="align-center" width="800px" alt="Paso 4"/></a>

#### Paso 5:

Se desplegará la ventana de muestreo donde se recomienda replicar el mismo procedimiento ejecutado en los pasos **4, 5 y 6 de la sección punto lindero,** el objetivo es que pueda obtener un muestreo como el de la siguiente imagen , al finalizar dicho proceso , nos dirigimos al botón **ejecutar** al generarse el mensaje de verificación del proceso, **cerrar** la ventana

<a class="" data-lightbox="Paso 5" href="../_static/tutorial/captura_y_estructura_de_datos/cap4preinsumos25.png" title="Paso 5" data-title="Paso 5"><img src="../_static/tutorial/captura_y_estructura_de_datos/cap4preinsumos25.png" class="align-center" width="800px" alt="Paso 5"/></a>

Al incorporar la información al modelo, el asistente configura la simbología de los puntos como lo muestra la siguiente imagen.

<a class="" data-lightbox="Resultado" href="../_static/tutorial/captura_y_estructura_de_datos/cap4preinsumos26.png" title="Resultado" data-title="Resultado"><img src="../_static/tutorial/captura_y_estructura_de_datos/cap4preinsumos26.png" class="align-center" width="800px" alt="Resultado"/></a>

### Linderos

1.  El proceso de creación de linderos es muy similar a la creación de puntos, iniciamos con la carga de la información suministrada **topo_lindero**.

  <a class="" data-lightbox="paso 1" href="../_static/tutorial/captura_y_estructura_de_datos/cap4preinsumos27.png" title="Paso 1" data-title="Paso 1"><img src="../_static/tutorial/captura_y_estructura_de_datos/cap4preinsumos27.png" class="align-center" width="800px" alt="Paso 1"/></a>

2.  Presione el botón **Crear objetos de levantamiento** y seleccione la opción de **crear lindero**, elegir la opción de **crear el lindero desde otra capa *QGIS*** y se escoge la capa recién cargada, posteriormente dar clic en el botón **importar.**

<a class="" data-lightbox="paso 2" href="../_static/tutorial/captura_y_estructura_de_datos/cap4preinsumos28.gif" title="Paso 2" data-title="Paso 2"><img src="../_static/tutorial/captura_y_estructura_de_datos/cap4preinsumos28.gif" class="align-center" width="800px" alt="Paso 2"/></a>

3.  Se abrirá la ventana de muestreo de la información, basados en los pasos **4, 5 y 6 de la sección punto lindero,**  se puede observar que el único campo obligatorio es longitud, *así* que al dar clic en  ![Botón generar expresion](../_static/tutorial/captura_y_estructura_de_datos/ICOdialogodeexpressiones.png), haciendo uso de la función *\$length* , para extraer desde la geometría la longitud dar clic en el botón **Aceptar** y posteriormente en **ejecutar** y **cerrar.**

<a class="" data-lightbox="paso 3" href="../_static/tutorial/captura_y_estructura_de_datos/cap4preinsumos29.png" title="Paso 3" data-title="Paso 3"><img src="../_static/tutorial/captura_y_estructura_de_datos/cap4preinsumos29.png" class="align-center" width="800px" alt="Paso 2"/></a>

### Construcción De Linderos

Entiéndase como lindero, la línea continua que separa un terreno de otro, como se puede observar en la siguiente imagen. Se tienen segmentos de línea generados por los puntos lindero, una opción para corregir este fenómeno es seleccionar cada uno de los segmentos y unirlos, lo cual quita mucho tiempo si el conjunto de datos a manejar es grande, es por ello que el asistente cuenta con una herramienta que ayuda automatizar este proceso.

<a class="" data-lightbox="introducicon" href="../_static/tutorial/captura_y_estructura_de_datos/cap4preinsumos30.png" title="Paso 1" data-title="Paso 1"><img src="../_static/tutorial/captura_y_estructura_de_datos/cap4preinsumos30.png" class="align-center" width="800px" alt="introduccion"/></a>

1.  Para acceder a esta herramienta, direccionarse a la barra de herramientas y dar clic en el *botón* **construir linderos**

<a class="" data-lightbox="paso 1" href="../_static/tutorial/captura_y_estructura_de_datos/cap4preinsumos31.png" title="Paso 1" data-title="Paso 1"><img src="../_static/tutorial/captura_y_estructura_de_datos/cap4preinsumos31.png" class="align-center" width="800px" alt="Paso 1"/></a>

2. Se obtendrá un cuadro de diálogo, preguntando si desea seleccionar algún tipo de lindero o desea construir los linderos con todas las líneas existentes. Presionar el botón **sí** y finalmente detener la edición y guardar los cambios.

<a class="" data-lightbox="paso 1" href="../_static/tutorial/captura_y_estructura_de_datos/cap4preinsumos32.gif" title="Paso 1" data-title="Paso 1"><img src="../_static/tutorial/captura_y_estructura_de_datos/cap4preinsumos32.gif" class="align-center" width="400px" alt="Paso 1"/></a>

Como se puede observar en la siguiente imagen, en el momento de seleccionar se puede identificar los linderos bien definidos.

<a class="" data-lightbox="paso 2" href="../_static/tutorial/captura_y_estructura_de_datos/cap4preinsumos33.png" title="paso 2" data-title="Paso 2"><img src="../_static/tutorial/captura_y_estructura_de_datos/cap4preinsumos33.png" class="align-center" width="800px" alt="Paso 2"/></a>

### Relación Entre Puntos y Linderos

1.  Ahora se debe identificar los puntos que hacen parte de los linderos recién construidos, es decir, identificar el **id** de los puntos que conforman un lindero, para ello se hará uso de la herramienta **llenar PuntosCCL** (cara cadena línea). Ubicado en la barra de herramientas

 <a class="" data-lightbox="paso 1" href="../_static/tutorial/captura_y_estructura_de_datos/cap4preinsumos34.png" title="paso 1" data-title="Paso 1"><img src="../_static/tutorial/captura_y_estructura_de_datos/cap4preinsumos34.png" class="align-center" width="800px" alt="Paso 1"/></a>

  2.  Se obtendrá un cuadro de diálogo donde se consulta si se desea crear la relación para un lindero en *específico* o para todos los existentes, para este caso se hará con todos por lo tanto dar clic en el botón **si**

  <a class="" data-lightbox="paso 2" href="../_static/tutorial/captura_y_estructura_de_datos/cap4preinsumos35.png" title="paso 2" data-title="Paso 2"><img src="../_static/tutorial/captura_y_estructura_de_datos/cap4preinsumos35.png" class="align-center" width="400px" alt="Paso 2"/></a>

Para identificar si el proceso se generó correctamente se puede abrir la tabla de atributos de la tabla **col_puntoccl** el cual podrá ubicar en el grupo de tables ubicado en el panel de capas como lo muestra la siguiente imagen.

  <a class="" data-lightbox="Resultado" href="../_static/tutorial/captura_y_estructura_de_datos/cap4preinsumos36.png" title="Resultado" data-title="Resultado"><img src="../_static/tutorial/captura_y_estructura_de_datos/cap4preinsumos36.png" class="align-center" width="800px" alt="Resultado"/></a>

Como se puede observar en la siguiente imagen encontrará la columna ccl diligenciada, gracias al proceso desarrollado.

  <a class="" data-lightbox="Resultado" href="../_static/tutorial/captura_y_estructura_de_datos/cap4preinsumos37.png" title="Resultado" data-title="Resultado"><img src="../_static/tutorial/captura_y_estructura_de_datos/cap4preinsumos37.png" class="align-center" width="800px" alt="Resultado"/></a>

## Unidad Espacial

### Creación De Terrenos y Sus Relaciones

#### Creación De Relación Entre Los Linderos y Los Terrenos

### Creación De Construcciones

### Creación De Unidades De Construcción

## Unidad Básica Administrativa

### Crear Predio

## Interesados

### Crear Agrupación De Interesados

## Fuentes

## RRR

### Crear Derecho