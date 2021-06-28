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

Dirigete al botón `Crear objetos de Levantamiento` (ubicado en la barra de herramientas) y selecciona la opción **Crear Terreno**:

<a class="" data-lightbox="Paso 1" href="../_static/tutorial/captura_y_estructura_de_datos/cap5undespaciales1.png" title="Paso 1" data-title="Paso 1"><img src="../_static/tutorial/captura_y_estructura_de_datos/cap5undespaciales1.png" class="align-center" width="400px" alt="Paso 1"/></a>

#### Paso 2: Selección de linderos

Se desplegará una ventana en la cual se te consulta *¿Cómo te gustaría crear terrenos?*, allí cuentas con dos opciones: *Seleccionando linderos existentes* ó *Desde otra capa de QGIS (definiendo un mapeo de campos)*.

En este caso, se procede a elegir la opción **Seleccionando linderos existentes** y luego das clic en el botón **Siguiente**. En el cuadro de diálogo que se despliega, encuentras tres opciones que corresponden con: 
<ol>
  <li><b>1.</b> Seleccionar lindero(s) en el mapa.</li>
  <li><b>2.</b> Seleccionar lindero(s) con base en una expresión.</li>
  <li><b>3.</b> Seleccionar todos los linderos.</p></li>
</ol>

Posteriormente, das clic en la opción *"Seleccionar todos los linderos"* y luego en el botón `Finalizar`.

<a class="" data-lightbox="Paso 2: Selección de linderos" href="../_static/tutorial/captura_y_estructura_de_datos/cap5undespaciales2.gif" title="Paso 2: Selección de linderos" data-title="Paso 2: Selección de linderos"><img src="../_static/tutorial/captura_y_estructura_de_datos/cap5undespaciales2.gif" class="align-center" width="800px" alt="Paso 2: Selección de linderos"/></a>

#### Paso 3: Cálculo área del terreno

Una vez que los terrenos han sido creados, es necesario calcular o en su defecto actualizar el área del terreno. Para ello, debes dar clic en el botón `Abrir tabla de atributos` ubicado en la parte superior de la barra de tareas. Posteriormente, elijes en el menú desplegable del lado izquierdo el atributo **Área de terreno [m2]** y das clic en el botón *Generar expresión* ![Botón generar expresion](../_static/tutorial/captura_y_estructura_de_datos/ICOdialogodeexpressiones.png), de esta forma se despliega la ventana de *"Diálogo de expresiones"*, en la cual debes emplear la función *\$area*. Luego, basta con dar clic en el botón `Aceptar`. 

Finalmente, al cerrar la ventana emergente debes dar clic en el botón **Actualizar todo**, de inmediato podrás ver que en la columna **Área de terreno** se asignaron los valores de área correspondientes. Para guardar dichos cambios presiona el botón *Guardar edición* ![Botón guardar edición](../_static/tutorial/captura_y_estructura_de_datos/ICOguardarcambios.png), luego, puedes cerrar la ventana.

<a class="" data-lightbox="Paso 3: Cálculo área del terreno" href="../_static/tutorial/captura_y_estructura_de_datos/cap5undespaciales3.gif" title="Paso 3: Cálculo área del terreno" data-title="Paso 3: Cálculo área del terreno"><img src="../_static/tutorial/captura_y_estructura_de_datos/cap5undespaciales3.gif" class="align-center" width="800px" alt="Paso 3: Cálculo área del terreno"/></a>
 
### Relación entre Linderos y Terrenos

#### Paso 1: Creación de la relación

El diligenciamiento de esta relación se realiza con la herramienta ``Llenar más CCL y menos`` ubicada en la barra de herramientas. Al hacer clic en este botón, emergerá un cuadro de diálogo preguntandóte si deseas ejecutar esta acción para todos los terrenos identificados en la base de datos. En este caso, se procede a dar clic en el botón ``Sí``.

<a class="" data-lightbox="Paso 1" href="../_static/tutorial/captura_y_estructura_de_datos/cap5undespaciales8.gif" title="Paso 1" data-title="Paso 1"><img src="../_static/tutorial/captura_y_estructura_de_datos/cap5undespaciales8.gif" class="align-center" width="800px" alt="Paso 1"/></a>

#### Paso 2: Verificación de la relación

Para verificar el estado de las relaciones creadas previamente, basta con abrir la tabla de atributos de la tabla **Col_masccl**, y en la columna *col_mas* corroborar si los campos están diligenciados correctamente. 

<a class="" data-lightbox="Resultado" href="../_static/tutorial/captura_y_estructura_de_datos/cap5undespaciales10.gif" title="Resultado" data-title="Resultado"><img src="../_static/tutorial/captura_y_estructura_de_datos/cap5undespaciales10.gif" class="align-center" width="800px" alt="Resultado"/></a>

### Construcciones

#### Paso 1: Cargar insumo construcción

En primera medida, debes cargar a tu espacio de trabajo la capa **topo_construcciones**, para esto, debes dirigirte al **Navegador**, seleccionar **geopackage -> taller_asistente.gpkg** y arrastrar la capa **topo_construcciones** a la interfaz, para que esta seá cargada. 

<a class="" data-lightbox="Paso 1: Cargar insumo construcción" href="../_static/tutorial/captura_y_estructura_de_datos/cap5undespaciales11a.gif  " title="Paso 1: Cargar insumo construcción" data-title="Paso 1: Cargar insumo construcción"><img src="../_static/tutorial/captura_y_estructura_de_datos/cap5undespaciales11a.gif" class="align-center" width="800px" alt="Paso 1: Cargar insumo construcción"/></a>

#### Paso 2: Creación de construcción

Al desplegar el menú del botón `Crear objetos de Levantamiento` (ubicado en la barra de herramientas) debes seleccionar la opción **Crear Construcción**. Esta acción abrirá una ventana en la cual se te consulta *¿Cómo te gustaría crear construcciones?*, para este caso selecciona la opcion *Desde otra capa de QGIS (definiendo un mapeo de campos)*.

En este caso, harás uso de la información registrada en la capa **topo_construcciones**. De manera que luego de definir la fuente mencionada, debes dar clic en el botón `Importar`.

<a class="" data-lightbox="Paso 2: Creación de construcción" href="../_static/tutorial/captura_y_estructura_de_datos/cap5undespaciales11b.gif  " title="Paso 2: Creación de construcción" data-title="Paso 2: Creación de construcción"><img src="../_static/tutorial/captura_y_estructura_de_datos/cap5undespaciales11b.gif" class="align-center" width="800px" alt="Paso 2: Creación de construcción"/></a>

#### Paso 2: Creación de construcción

De inmediato, se desplegará la ventana de mapeo de campos, en la cual debes realizar las modificaciones correspondientes hasta obtener un muestreo de campos como el de la siguiente imagen:

<a class="" data-lightbox="Paso 3" href="../_static/tutorial/captura_y_estructura_de_datos/cap5undespaciales13.png" title="Paso 3" data-title="Paso 3"><img src="../_static/tutorial/captura_y_estructura_de_datos/cap5undespaciales13.png" class="align-center" width="800px" alt="Paso 3"/></a> 

Se recomienda tener en cuenta los pasos desarrollados en el [paso 4](#paso-4-mapeo-de-campos-punto-lindero) de la sección de punto de lindero, considerando que:   

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

Para iniciar con el proceso de crear las unidades de construcción se debe emplear la herramienta **Identificar**, ubicada en la barra de herramientas de QGIS. Esto se realiza con el propósito de extraer el valor *t_id* asignado al polígono que representa la construcción de interés.

<a class="" data-lightbox="Paso 1: Identificación de la construcción" href="../_static/tutorial/captura_y_estructura_de_datos/cap5undespaciales15.gif" title="Paso 1: Identificación de la construcción" data-title="Paso 1: Identificación de la construcción"><img src="../_static/tutorial/captura_y_estructura_de_datos/cap5undespaciales15.gif" class="align-center" width="800px" alt="Paso 1: Identificación de la construcción"/></a>

#### Paso 2: Creación de unidad de construcción

Después de tener los *t_id* se procede con el proceso de creación de las *Unidades de construcción*, para ello debes dirigirte a **LADM-COL –> Captura Y Estructuración De Datos –> Levantamiento Catastral –> Unidad Espacial –> Crear Unidad De Construcción**

De inmediato se desplegará un cuadro de diálogo, en el cual se te consulta como generar la unidad de construcción, puedes elegir entre cargar una capa vectorial o digitalizar el contenido. En este caso, se empleará la opción de digitalización, posteriormente das clic en el botón `Crear`.

<a class="" data-lightbox="Paso 2: Creación de unidad de construcción" href="../_static/tutorial/captura_y_estructura_de_datos/cap5undespaciales17.gif" title="Paso 2: Creación de unidad de construcción" data-title="Paso 2: Creación de unidad de construcción"><img src="../_static/tutorial/captura_y_estructura_de_datos/cap5undespaciales17.gif" class="align-center" width="800px" alt="Paso 2: Creación de unidad de construcción"/></a>

#### Paso 3: Formulario de la unidad de construcción

Al cerrarse la ventana se activará la herramienta de *Autoensamblado*, la cual ayudará con el proceso de digitalización, apoyándose de los *Puntos levantamiento* para definir la unidad de construcción. Digitaliza el polígono correspondiente, tan pronto termines, debes dar clic derecho para finalizar este proceso.

Esta acción desplegará un formulario, el cual tiene casillas resaltadas, las cuales indican que es obligatorio diligenciar dichos campos. En la sección **lc_construccion** diligencia el **t_id** de la construcción consultada previamente.

<a class="" data-lightbox="Paso 3: Formulario de la unidad de construcción" href="../_static/tutorial/captura_y_estructura_de_datos/cap5undespaciales18.gif" title="Paso 3: Formulario de la unidad de construcción" data-title="Paso 3: Formulario de la unidad de construcción"><img src="../_static/tutorial/captura_y_estructura_de_datos/cap5undespaciales18.gif" class="align-center" width="800px" alt="Paso 3: Formulario de la unidad de construcción"/></a>

#### Paso 4: Resultado de la unidad de construcción

Finalmente, al cerrar el cuadro de diálogo, podrás visualizar un sólido en 2.5D que representa la construcción:

<a class="" data-lightbox="Paso 4: Resultado de la unidad de construcción" href="../_static/tutorial/captura_y_estructura_de_datos/cap5undespaciales22.png" title="Paso 4: Resultado de la unidad de construcción" data-title="Paso 4: Resultado de la unidad de construcción"><img src="../_static/tutorial/captura_y_estructura_de_datos/cap5undespaciales22.png" class="align-center" width="800px" alt="Paso 4: Resultado de la unidad de construcción"/></a>

### Servidumbre de paso

#### Paso 1: Creación de servidumbre de paso

Para crear una *Servidumbre de paso*, debes dirigirte a la opción **Crear objetos de levantamiento –> Crear Servidumbre de Paso** en la barra de herramientas.

De inmediato, se desplegará un cuadro de diálogo que habilitará tres (3) opciones: *Digitalizando el eje*, *Digitalizando polígono* y *Desde otra capa de QGIS*. Para este caso, selecciona la segunda opción, posteriormente das clic en el botón `Crear`.

<a class="" data-lightbox="Paso 1: Creación de servidumbre de paso" href="../_static/tutorial/captura_y_estructura_de_datos/cap5undespaciales17.gif" title="Paso 1: Creación de servidumbre de paso" data-title="Paso 1: Creación de servidumbre de paso"><img src="../_static/tutorial/captura_y_estructura_de_datos/cap5undespaciales23.gif" class="align-center" width="800px" alt="Paso 1: Creación de servidumbre de paso"/></a>

#### Paso 2: Formulario de la servidumbre de paso

Al cerrar la ventana anterior, se habilitará la opción para digitalizar la *Servidumbre de paso* junto con la herramienta de *Autoensamblado*. Grafica el polígono de tu interés y da clic derecho al finalizar la digitalización.

Una vez que termines la digitalización del polígono se desplegará un formulario, que tiene algunas casillas resaltadas, las cuales indican que deben diligenciarse de forma obligatoria.

<a class="" data-lightbox="Paso 2: Formulario de la servidumbre de paso" href="../_static/tutorial/captura_y_estructura_de_datos/cap5undespaciales18.gif" title="Paso 2: Formulario de la servidumbre de paso" data-title="Paso 2: Formulario de la servidumbre de paso"><img src="../_static/tutorial/captura_y_estructura_de_datos/cap5undespaciales24.gif" class="align-center" width="800px" alt="Paso 2: Formulario de la servidumbre de paso"/></a>

#### Paso 3: Resultado de la servidumbre de paso

Finalmente, al cerrar el cuadro de diálogo podrás visualizar un polígono que representa la servidumbre de paso.

<a class="" data-lightbox="Paso 3: Resultado de la servidumbre de paso" href="../_static/tutorial/captura_y_estructura_de_datos/cap5undespaciales22.png" title="Paso 3: Resultado de la servidumbre de paso" data-title="Paso 3: Resultado de la servidumbre de paso"><img src="../_static/tutorial/captura_y_estructura_de_datos/cap5undespaciales25.png" class="align-center" width="800px" alt="Paso 3: Resultado de la servidumbre de paso"/></a>

## Unidad Básica Administrativa

### Crear Predio

## Interesados

### Crear Agrupación De Interesados

## Fuentes

## RRR

### Crear Derecho