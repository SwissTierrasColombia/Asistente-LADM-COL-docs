# Captura y Estructuración de Datos

## Preprocesamiento de insumos

## Consulta de dominios

## Paquete de topografía y representación

### Puntos de lindero

### Puntos de levantamiento

### Puntos de Control

### Linderos

### Construcción De Linderos

### Relación Entre Puntos y Linderos

## Unidad Espacial

### Terrenos

#### Paso 1: Creación de terreno

Dirigete al botón  `Crear objetos de Levantamiento` (ubicado en la barra de herramientas) y selecciona la opción **Crear Terreno**:

<a class="" data-lightbox="Paso 1" href="../_static/tutorial/captura_y_estructura_de_datos/cap5undespaciales1.png" title="Paso 1" data-title="Paso 1"><img src="../_static/tutorial/captura_y_estructura_de_datos/cap5undespaciales1.png" class="align-center" width="400px" alt="Paso 1"/></a>

#### Paso 2: Selección de linderos

<!-- Se desplegará un cuadro de diálogo, donde tienes la opción de cargar una capa vectorial con la información o generar el terreno a partir de los linderos existentes. En este caso, se procede a elegir la opción **Seleccionando linderos existentes** y luego das clic en el botón **Siguiente**. Posteriormente, das clic en la opción *"Seleccionar todos los linderos"* (última opción): -->

<div class="seealso">
<p class="admonition-title">TIP</p>
<p>En el cuadro de diálogo que se despliega, encuentras tres opciones que corresponden con: 
<ol>
  <li><b>1.</b> Seleccionar lindero(s) en el mapa.</li>
  <li><b>2.</b> Seleccionar lindero(s) con base en una expresión.</li>
  <li><b>3.</b> Seleccionar todos los linderos.</p></li>
</ol>
</div>

<a class="" data-lightbox="Paso 2: Selección de linderos" href="../_static/tutorial/captura_y_estructura_de_datos/cap5undespaciales2.gif" title="Paso 2: Selección de linderos" data-title="Paso 2: Selección de linderos"><img src="../_static/tutorial/captura_y_estructura_de_datos/cap5undespaciales2.gif" class="align-center" width="800px" alt="Paso 2: Selección de linderos"/></a>

#### Paso 3: Cálculo área del terreno

Una vez que los terrenos han sido creados, es necesario calcular o en su defecto actualizar el área del terreno. Para ello, debes dar clic en el botón `Abrir tabla de atributos` ubicado en la parte superior de la barra de tareas. Posteriormente elegir en el menú desplegable del lado izquierdo el atributo **Área de terreno [m2]** y das clic en el botón *Generar expresión* ![Botón generar expresion](../_static/tutorial/captura_y_estructura_de_datos/ICOdialogodeexpressiones.png), de esta forma se despliega la ventana de *"Diálogo de expresiones"*, en la cual debes emplear la función *\$area*. Luego, basta con dar clic en el botón **Aceptar**. 

Finalmente, al cerrar la ventana emergente debes dar clic en el botón **Actualizar todo**, de inmediato podrás ver que en la columna **Área de terreno** se asignaron los valores de área correspondiente. Para guardar dichos cambios presiona el botón *Guardar edición* ![Botón guardar edición](../_static/tutorial/captura_y_estructura_de_datos/ICOguardarcambios.png), luego, puedes cerrar la ventana.

<a class="" data-lightbox="Paso 3: Cálculo área del terreno" href="../_static/tutorial/captura_y_estructura_de_datos/cap5undespaciales3.gif" title="Paso 3: Cálculo área del terreno" data-title="Paso 3: Cálculo área del terreno"><img src="../_static/tutorial/captura_y_estructura_de_datos/cap5undespaciales3.gif" class="align-center" width="800px" alt="Paso 3: Cálculo área del terreno"/></a>
 
### Relación entre Linderos y Terrenos

#### Paso 1: Creación de la relación

El diligenciamiento de esta relación se realiza con la herramienta ``Llenar más CCL y menos`` ubicada en la barra de herramientas. Al hacer click en este botón, emergerá un cuadro de diálogo preguntandóte si deseas ejecutar esta acción para todos los terrenos identificados en la base de datos. En este caso, se procede a dar clic en el botón ``Sí``.

<a class="" data-lightbox="Paso 1" href="../_static/tutorial/captura_y_estructura_de_datos/cap5undespaciales8.gif" title="Paso 1" data-title="Paso 1"><img src="../_static/tutorial/captura_y_estructura_de_datos/cap5undespaciales8.gif" class="align-center" width="800px" alt="Paso 1"/></a>

#### Paso 2: Verificación de la relación

Para verificar el estado de las relaciones creadas previamente, basta con abrir la tabla de atributos de la tabla **Col_masccl**, y en la columna *col_mas* corroborar si los campos están diligenciados correctamente. 

<a class="" data-lightbox="Resultado" href="../_static/tutorial/captura_y_estructura_de_datos/cap5undespaciales10.gif" title="Resultado" data-title="Resultado"><img src="../_static/tutorial/captura_y_estructura_de_datos/cap5undespaciales10.gif" class="align-center" width="800px" alt="Resultado"/></a>

### Construcciones

#### Paso 1: Creación de construcción

Al desplegar el menú del botón `Crear objetos de Levantamiento` (ubicado en la barra de herramientas) debes seleccionar la opción **Crear Construcción**. Esta acción abrirá una ventana en la cual se te consulta *¿Cómo te gustaría crear construcciones?*, para este caso selecciona la opcion *Desde otra capa de QGIS (definiendo un mapeo de campos)*.

En este caso, harás uso de la información registrada en la capa **topo_construcciones**. De manera que luego de definir la fuente mencionada, debes dar clic en el botón `Importar`.

<a class="" data-lightbox="Paso 1: Creación de construcción" href="../_static/tutorial/captura_y_estructura_de_datos/cap5undespaciales11.gif  " title="Paso 1: Creación de construcción" data-title="Paso 1: Creación de construcción"><img src="../_static/tutorial/captura_y_estructura_de_datos/cap5undespaciales11.gif" class="align-center" width="800px" alt="Paso 1: Creación de construcción"/></a>

#### Paso 2: Creación de construcción

De inmediato, se desplegará la ventana de mapeo de campos, en la cual debes realizar las modificaciones correspondientes hasta obtener un muestreo como el de la siguiente imagen:

<a class="" data-lightbox="Paso 3" href="../_static/tutorial/captura_y_estructura_de_datos/cap5undespaciales13.png" title="Paso 3" data-title="Paso 3"><img src="../_static/tutorial/captura_y_estructura_de_datos/cap5undespaciales13.png" class="align-center" width="800px" alt="Paso 3"/></a> 

Se recomienda tener en cuenta los pasos desarrollados en el [paso 4](#paso-4-mapeo-de-campos-punto-lindero) de la sección de punto de lindero, considerando:   

| Atributo                 | Expresión    |
| ------------------------ | ------------ |
| identificador            | $id          |
| numero_pisos             | num_pisos    |
| area_construccion        | $area        |

<div class="warning">
<p class="admonition-title">ADVERTENCIA</p>
<p>Para el caso de <b>identificador</b>, se utiliza la expresión <i>$id</i> ya que los datos iniciales no cuentan con información para este campo.</p>
<p>Para el caso de <b>area_construccion</b>, se utiliza la expresión <i>$area</i> ya que los datos iniciales no cuentan con información para este campo.</p>
</div>

Después de completar dichas modificaciones, puedes emplear la acción del botón ``Ejecutar``, y verificar el mensaje del proceso, luego, puedes **Cerrar** la ventana.

### Unidades De Construcción

#### Paso 1: Identificación de la construcción

Para iniciar con el proceso de crear las unidades de construcción se debe emplear la herramienta **Identificar**, ubicada en la barra de herramientas de QGIS. Esto se realiza con el propósito de extraer el valor **t_id** asignado al polígono que representa la construcción de interés.

<a class="" data-lightbox="Paso 1: Identificación de la construcción" href="../_static/tutorial/captura_y_estructura_de_datos/cap5undespaciales15.gif" title="Paso 1: Identificación de la construcción" data-title="Paso 1: Identificación de la construcción"><img src="../_static/tutorial/captura_y_estructura_de_datos/cap5undespaciales15.gif" class="align-center" width="800px" alt="Paso 1: Identificación de la construcción"/></a>

#### Paso 2: Creación de unidad de construcción

Después de tener los *t_id* se procede con el proceso de creación de las *unidades de construcción*,  para ello dirigirse a **LADM-COL –> Captura Y Estructuración De Datos –> Levantamiento Catastral –> Unidad Espacial—Crear Unidad De Construcción**

De inmediato se desplegará un cuadro de diálogo solicitando como generar la unidad de construcción si por una capa vectorial o digitalizándolo, en este caso lo haremos digitalizando, posteriormente se da clic en el botón `crear`

<a class="" data-lightbox="Paso 2: Creación de unidad de construcción" href="../_static/tutorial/captura_y_estructura_de_datos/cap5undespaciales17.gif" title="Paso 2: Creación de unidad de construcción" data-title="Paso 2: Creación de unidad de construcción"><img src="../_static/tutorial/captura_y_estructura_de_datos/cap5undespaciales17.gif" class="align-center" width="800px" alt="Paso 2: Creación de unidad de construcción"/></a>

#### Paso 3: Formulario de la unidad de construcción

Al cerrarse la ventana se activará el snapping, el cual ayudará con el proceso de digitalización,  apoyándose de los puntos levantamiento para definir la unidad de construcción, digitalizé el polígono correspondiente y de clic derecho al finalizar la digitalización.

Una vez que termine la digitalización del polígono se abre un formulario, el cual tiene resaltado unas casillas en un tono naranja, estas casillas indican que deben llenarse de forma obligatoria. En la sección **lc_construccion** diligenciar el **t_id** de la construcción consultada previamente.

<a class="" data-lightbox="Paso 3: Formulario de la unidad de construcción" href="../_static/tutorial/captura_y_estructura_de_datos/cap5undespaciales18.gif" title="Paso 3: Formulario de la unidad de construcción" data-title="Paso 3: Formulario de la unidad de construcción"><img src="../_static/tutorial/captura_y_estructura_de_datos/cap5undespaciales18.gif" class="align-center" width="800px" alt="Paso 3: Formulario de la unidad de construcción"/></a>

#### Paso 4: Resultado de la unidad de construcción

Finalmente, se cerrará el cuadro de diálogo y se podrá visualizar un sólido en 2.5D que representa la construcción.

<a class="" data-lightbox="Paso 4: Resultado de la unidad de construcción" href="../_static/tutorial/captura_y_estructura_de_datos/cap5undespaciales22.png" title="Paso 4: Resultado de la unidad de construcción" data-title="Paso 4: Resultado de la unidad de construcción"><img src="../_static/tutorial/captura_y_estructura_de_datos/cap5undespaciales22.png" class="align-center" width="800px" alt="Paso 4: Resultado de la unidad de construcción"/></a>

### Servidumbre de transito

#### Paso 1: Creación de servidumbre de transito

Se procede con el proceso de creación de la *servidumbre de transito*,  para ello en la barra de herramientas encuentras **Crear objetos de levantamiento –> Crear Servidumbre de Paso**

De inmediato se desplegará un cuadro de diálogo que habilitará tres (3) opciones: Digitalizando el eje, Digitalizando polígono y Desde otra capa de QGIS. Para este caso lo haremos digitalizando polígono, posteriormente se da clic en el botón `crear`

<a class="" data-lightbox="Paso 1: Creación de servidumbre de transito" href="../_static/tutorial/captura_y_estructura_de_datos/cap5undespaciales17.gif" title="Paso 1: Creación de servidumbre de transito" data-title="Paso 1: Creación de servidumbre de transito"><img src="../_static/tutorial/captura_y_estructura_de_datos/cap5undespaciales23.gif" class="align-center" width="800px" alt="Paso 1: Creación de servidumbre de transito"/></a>

#### Paso 2: Formulario de la servidumbre de paso

Al cerrarse la ventana se activará el snapping, el cual ayudará con el proceso de digitalización,  apoyándose de los puntos levantamiento para definir la unidad de construcción, digitalizé el polígono correspondiente y de clic derecho al finalizar la digitalización.

Una vez que termine la digitalización del polígono se abre un formulario, el cual tiene resaltado unas casillas en un tono naranja, estas casillas indican que deben llenarse de forma obligatoria.

<a class="" data-lightbox="Paso 2: Formulario de la servidumbre de paso" href="../_static/tutorial/captura_y_estructura_de_datos/cap5undespaciales18.gif" title="Paso 2: Formulario de la servidumbre de paso" data-title="Paso 2: Formulario de la servidumbre de paso"><img src="../_static/tutorial/captura_y_estructura_de_datos/cap5undespaciales24.gif" class="align-center" width="800px" alt="Paso 2: Formulario de la servidumbre de paso"/></a>

#### Paso 3: Resultado de la servidumbre de paso

Finalmente, se cerrará el cuadro de diálogo y se podrá visualizar un polígono que representa la servidumbre de paso.

<a class="" data-lightbox="Paso 3: Resultado de la servidumbre de paso" href="../_static/tutorial/captura_y_estructura_de_datos/cap5undespaciales22.png" title="Paso 3: Resultado de la servidumbre de paso" data-title="Paso 3: Resultado de la servidumbre de paso"><img src="../_static/tutorial/captura_y_estructura_de_datos/cap5undespaciales25.png" class="align-center" width="800px" alt="Paso 3: Resultado de la servidumbre de paso"/></a>

## Unidad Básica Administrativa

### Crear Predio

## Interesados

### Crear Agrupación De Interesados

## Fuentes

## RRR

### Crear Derecho