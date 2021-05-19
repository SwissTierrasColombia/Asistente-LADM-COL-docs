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

### Creación De Terrenos y Sus Relaciones

1.  Para crear un terreno se debe ir a la barra de herramientas y activar el  botón **crear objetos de levantamiento** y  seleccionar la opción crear terreno

<a class="" data-lightbox="Paso 1" href="../_static/tutorial/captura_y_estructura_de_datos/cap5undespaciales1.png" title="Paso 1" data-title="Paso 1"><img src="../_static/tutorial/captura_y_estructura_de_datos/cap5undespaciales1.png" class="align-center" width="400px" alt="Paso 1"/></a>

2.  Se desplegará un cuadro de diálogo, donde ofrece la opción de cargar una capa vectorial con la información o generar el terreno a partir de los linderos existentes, en
    este caso elegir la opción **seleccionando linderos existentes,** posteriormente damos clic en el botón **siguiente,** de inmediato el cuadro de diálogo cambiará generando 3 opciones, ya sea seleccionar la informacion desde el mapa, por medio de una expresión algorítmica o seleccionar todos los linderos existentes en este caso, se recurrirá hacer uso de la ultima utilidad mencionada.

<a class="" data-lightbox="Paso 2" href="../_static/tutorial/captura_y_estructura_de_datos/cap5undespaciales2.gif" title="Paso 2" data-title="Paso 2"><img src="../_static/tutorial/captura_y_estructura_de_datos/cap5undespaciales2.gif" class="align-center" width="800px" alt="Paso 2"/></a>

3.  Como se puede apreciar todos los linderos son seleccionados y son identificados por la herramienta, se procede a dar clic en el botón **finalizar**

  <a class="" data-lightbox="Paso 3" href="../_static/tutorial/captura_y_estructura_de_datos/cap5undespaciales3.png" title="Paso 3" data-title="Paso 3"><img src="../_static/tutorial/captura_y_estructura_de_datos/cap5undespaciales3.png" class="align-center" width="800px" alt="Paso 3"/></a>

4.  Los terrenos ya han sido creados, pero es necesario llenar unos campos obligatorios, para identificar cuales son dichos campos es recomendable tener en cuenta los pasos *4, 5 y 6 de la seccion puntos lindero,* para iniciar con el proceso dar clic en el botón **Abrir tabla de atributos** ubicado en el mensaje emergente al finalizar el paso 3.

 <a class="" data-lightbox="Paso 4" href="../_static/tutorial/captura_y_estructura_de_datos/cap5undespaciales4.png" title="Paso 4" data-title="Paso 4"><img src="../_static/tutorial/captura_y_estructura_de_datos/cap5undespaciales4.png" class="align-center" width="1200px" alt="Paso 4"/></a>

5.  Se identifico que como único valor obligatorio del terreno es el atributo de área, por lo tanto dirigirse al cajetín de asignación de atributos ubicado en la parte superior de la ventana emergente generada al finalizar el paso 4 y buscamos el atributo **Área de terreno**

 <a class="" data-lightbox="Paso 5" href="../_static/tutorial/captura_y_estructura_de_datos/cap5undespaciales5.png" title="Paso 5" data-title="Paso 5"><img src="../_static/tutorial/captura_y_estructura_de_datos/cap5undespaciales5.png" class="align-center" width="400px" alt="Paso 5"/></a>



6. Posteriormente damos clic en el ![Botón generar expresion](../_static/tutorial/captura_y_estructura_de_datos/ICOdialogodeexpressiones.png) se desplegará la ventana de expresiones donde se escribirá la función *\$area* posteriormente damos clic en el botón **Aceptar.** 

 <a class="" data-lightbox="Paso 6" href="../_static/tutorial/captura_y_estructura_de_datos/cap5undespaciales6.png" title="Paso 6" data-title="Paso 6"><img src="../_static/tutorial/captura_y_estructura_de_datos/cap5undespaciales6.png" class="align-center" width="800px" alt="Paso 6"/></a>

7.  Finalmente se cerrará esa ventana emergente y solo queda dar clic en el botón **Actualizar lo filtrado**, de inmediato se podrá ver que en la columna **areá de terreno** se asignaron los valores de área correspondiente, para guardar dichos cambios presionar el botón ![Botón guardar edición](../_static/tutorial/captura_y_estructura_de_datos/ICOguardarcambios.png) y se cierra la ventana actual.

Obteniendo el area geometrica de cada uno de los poligonos 

<a class="" data-lightbox="Paso 7" href="../_static/tutorial/captura_y_estructura_de_datos/cap5undespaciales7.png" title="Paso 7" data-title="Paso 7"><img src="../_static/tutorial/captura_y_estructura_de_datos/cap5undespaciales7.png" class="align-center" width="800px" alt="Paso 7"/></a>

#### Creación De Relacion Entre Los Linderos y Los Terrenos

1.  Esta relación lo que busca es identificar los linderos que abarcan un área de terreno determinada ya sea para sumar, el cual se usa la relación *Col\_masccl* o para restar área *Col_menosccl*. 

Para llenar estas relaciones se hace uso de la herramienta **llenar mas CCL y menos** ubicada en la barra de herramientas

<a class="" data-lightbox="Paso 1" href="../_static/tutorial/captura_y_estructura_de_datos/cap5undespaciales8.png" title="Paso 1" data-title="Paso 1"><img src="../_static/tutorial/captura_y_estructura_de_datos/cap5undespaciales8.png" class="align-center" width="800px" alt="Paso 1"/></a>

2. Emergerá un cuadro de diálogo preguntando si se desea ejecutar la acción por lo tanto dar clic en el botón **si**

<a class="" data-lightbox="Paso 2" href="../_static/tutorial/captura_y_estructura_de_datos/cap5undespaciales9.png" title="Paso 2" data-title="Paso 2"><img src="../_static/tutorial/captura_y_estructura_de_datos/cap5undespaciales9.png" class="align-center" width="600px" alt="Paso 2"/></a>

Finalmente, en caso de que se desee ver si las relaciones fueron tramitadas, puede abrir la tabla de atributos de la tabla Col\_masccl y en la columna col_mas observar si los datos están diligenciados como lo muestra la siguiente imágen 

<a class="" data-lightbox="Resultado" href="../_static/tutorial/captura_y_estructura_de_datos/cap5undespaciales10.png" title="Resultado" data-title="Resultado"><img src="../_static/tutorial/captura_y_estructura_de_datos/cap5undespaciales10.png" class="align-center" width="800px" alt="Resultado"/></a>

### Creación De Construcciones

1.  Para iniciar con las construcciones diríjirse a la caja de **crear objetos de levantamiento** y posteriormente seleccione la opción crear objeto.

<a class="" data-lightbox="Paso 1" href="../_static/tutorial/captura_y_estructura_de_datos/cap5undespaciales11.png" title="Paso 1" data-title="Paso 1"><img src="../_static/tutorial/captura_y_estructura_de_datos/cap5undespaciales11.png" class="align-center" width="400px" alt="Paso 1"/></a>

2.  saldrá una ventana donde se solicitará la opción para crear las construcciones, ya sea digitalizando o importando la información desde una capa vectorial, en este caso hará uso de la información suministrada de la capa **topo_construcciones**  y se dará clic en el botón **importar**

<a class="" data-lightbox="Paso 2" href="../_static/tutorial/captura_y_estructura_de_datos/cap5undespaciales12.png" title="Paso 2" data-title="Paso 2"><img src="../_static/tutorial/captura_y_estructura_de_datos/cap5undespaciales12.png" class="align-center" width="800px" alt="Paso 2"/></a>

3.  De inmediato se desplegará la ventana de muestreo donde se recomienda replicar el mismo procedimiento ejecutado en los pasos *4, 5 y 6 de la seccion puntos lindero,* el objetivo es que pueda obtener un muestreo como el de la siguiente imagen , al finalizar dicho proceso , dirigirse al botón **ejecutar**  y después de ver el mensaje de verificación del proceso, **cerrar** la ventana

<a class="" data-lightbox="Paso 3" href="../_static/tutorial/captura_y_estructura_de_datos/cap5undespaciales13.png" title="Paso 3" data-title="Paso 3"><img src="../_static/tutorial/captura_y_estructura_de_datos/cap5undespaciales13.png" class="align-center" width="800px" alt="Paso 3"/></a>

Al finalizar en su totalidad se podrá visualizar las construcciones en el mapa.

<a class="" data-lightbox="Resultado" href="../_static/tutorial/captura_y_estructura_de_datos/cap5undespaciales14.png" title="Resultado" data-title="Resultado"><img src="../_static/tutorial/captura_y_estructura_de_datos/cap5undespaciales14.png" class="align-center" width="800px" alt="Resultado"/></a>

### Creación De Unidades De Construcción

Para iniciar con el proceso de crear las unidades de construcción se debe usar la herramienta **Identificar**, ubicada en la barra de herramientas. 

<a class="" data-lightbox="Identificación" href="../_static/tutorial/captura_y_estructura_de_datos/cap5undespaciales15.png" title="Identificación" data-title="Identificación"><img src="../_static/tutorial/captura_y_estructura_de_datos/cap5undespaciales15.png" class="align-center" width="800px" alt="Identificación"/></a>

Con el fin de extraer el valor **t_id** asignado al polígono que representa la construcción.

<a class="" data-lightbox="Identificación2" href="../_static/tutorial/captura_y_estructura_de_datos/cap5undespaciales16.png" title="Identificación2" data-title="Identificación2"><img src="../_static/tutorial/captura_y_estructura_de_datos/cap5undespaciales16.png" class="align-center" width="800px" alt="Identificación2"/></a>

1.  Después de tener los t_id se procede con el proceso de creación de las unidades de construcción,  para ello dirigirse al menú de opciones, y seleccior la siguiente ruta **LADM-COL – Captura Y Estructuración De Datos – Levantamiento Catastral – Unidad Espacial—Crear Unidad De Construcción**

<a class="" data-lightbox="Paso 1" href="../_static/tutorial/captura_y_estructura_de_datos/cap5undespaciales17.png" title="Paso 1" data-title="Paso 1"><img src="../_static/tutorial/captura_y_estructura_de_datos/cap5undespaciales17.png" class="align-center" width="800px" alt="Paso 1"/></a>

2.  De inmediato se desplegará un cuadro de diálogo solicitando como se pretende generar la unidad de construcción si por una capa vectorial o digitalizándolo, en este caso lo haremos digitalizando, posteriormente se da clic en el botón **crear**

<a class="" data-lightbox="Paso 2" href="../_static/tutorial/captura_y_estructura_de_datos/cap5undespaciales18.png" title="Paso 2" data-title="Paso 2"><img src="../_static/tutorial/captura_y_estructura_de_datos/cap5undespaciales18.png" class="align-center" width="800px" alt="Paso 2"/></a>

3. Al cerrarse la ventana se activará el snapping, el cual ayudará con el proceso de digitalización,  apoyandose de los puntos levantamiento para definir la unidad de construcción, una vez termine de vectorizar el polígono correspondiente dar clic derecho, al hacerlo el polígono tendrá un contorno sombreado y abrirá un formulario.

<a class="" data-lightbox="Paso 3" href="../_static/tutorial/captura_y_estructura_de_datos/cap5undespaciales19.gif" title="Paso 3" data-title="Paso 3"><img src="../_static/tutorial/captura_y_estructura_de_datos/cap5undespaciales19.gif" class="align-center" width="800px" alt="Paso 3"/></a>

Al finalizar el polígono se abre un formulario, el cual tiene resaltado unas casillas en un color melocotón, estas casillas indican que deben llenarse de forma obligatoria, ahorrando trabajo en el momento de consultar los datos obligatorios en el modelo, en la sección **lc_construccion** diligenciar el **t_id** de la construcción consultada previamente.

<a class="" data-lightbox="Resultado" href="../_static/tutorial/captura_y_estructura_de_datos/cap5undespaciales20.png" title="Resultado" data-title="Resultado"><img src="../_static/tutorial/captura_y_estructura_de_datos/cap5undespaciales20.png" class="align-center" width="800px" alt="Resultado"/></a>

<div class="seealso">
<p class="admonition-title">TIP</p>
<p>se recomienda llenar el formulario con los datos que se pueden visualizar en la siguiente imagen, una vez terminado de diligenciar el formulario dar clic en el botón **aceptar**</p>
</div>


<a class="" data-lightbox="Recomendado" href="../_static/tutorial/captura_y_estructura_de_datos/cap5undespaciales21.png" title="Recomendado" data-title="Recomendado"><img src="../_static/tutorial/captura_y_estructura_de_datos/cap5undespaciales21.png" class="align-center" width="800px" alt="Recomendado"/></a>

Finalmente se cerrara el cuadro de diálogo y se podra visualizar un solido en 3D que representa la construccion.

<a class="" data-lightbox="Resultado" href="../_static/tutorial/captura_y_estructura_de_datos/cap5undespaciales22.png" title="Resultado" data-title="Resultado"><img src="../_static/tutorial/captura_y_estructura_de_datos/cap5undespaciales22.png" class="align-center" width="800px" alt="Resultado"/></a>

## Unidad Básica Administrativa

### Crear Predio

## Interesados

### Crear Agrupación De Interesados

## Fuentes

## RRR

### Crear Derecho