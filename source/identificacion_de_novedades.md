# Identificación de novedades
El Asistente LADM-COL permite realizar el despliegue y comparación de la información producto del levantamiento catastral frente a la información oficial de la autoridad catastral; es de mucha utilidad al momento de revisar los cambios identificados en terreno y en la información alfanumérica de los predios. Para la utilización de esta funcionalidad es necesario que los dos conjuntos de datos; los datos oficiales (insumos) y los datos producto del levantamiento catastral estén cargados a la base de datos seleccionada como se explicó en la sección de [Captura y estructuración de datos](captura_y_estructura_de_datos.html#captura-y-estructuracion-de-datos) , se debe importar los dos conjuntos de datos, la información oficial (insumos) y la información producto del levantamiento catastral a partir de los archivos XTF como se describe a continuación.

<div class="note">
<p class="admonition-title">IMPORTANTE</p>
<p>Para poder utilizar la funcionalidad de novedades se necesita tener configurada y activa la base de datos de donde se consultaran las dos fuentes de datos “Levantamiento Catastral” e “insumos” para realizar la comparación de datos prediales.</p>
</div>


## Configuración identificación de novedades

Para cargar los datos oficiales se deben seguir los siguientes pasos:

1-    Puedes ir al módulo del Asistente LADM-COL en la parte superior del programa QGIS y seleccione el menú “Identificación de novedades” y luego dar clic en “Configurar identificación de novedades” como se ve en la imagen, allí se desplegara una ventana de configuración y se debe diligenciar los parámetros y seleccionar la base de datos en donde se importó el conjunto de datos del barrido predial como se muestra en la sección [Administración de datos](administracion_de_datos.html#administracion-de-datos); luego se debe crear un *esquema* en donde se importará el conjunto de datos oficiales.

<a class="" data-lightbox="Configuración identificación de novedades" href="/_static/identificacion_de_novedades/configuracion_identificacion_novedades.gif" title="Configuración identificación de novedades" data-title="Configuración identificación de novedades"><img src="/_static/identificacion_de_novedades/configuracion_identificacion_novedades.gif" class="align-center" width="800px" alt="Configuración identificación de novedades"/></a>

<div class="note">
<p class="admonition-title">IMPORTANTE</p>
<p>Para poder importar el conjunto de datos “Insumos” es necesario que el nuevo esquema tenga la estructura del submodelo de Insumos Catastrales, para ello puedes ver la sección <a href="https://swisstierrascolombia.github.io/Asistente-LADM-COL/administracion_de_datos.html#importar-datos">Importar datos</a>.</p>
</div>
2-    Ahora se procede a importar los datos desde el archivo XTF para el conjunto de datos; en el momento de seleccionar el archivo, la funcionalidad reconoce los modelos asociados en el archivo XTF que debe coincidir con los que tiene la estructura creada en el paso anterior, con el fin de que no genere errores en el proceso de importación, luego de ello se da clic en “Importar datos” como se muestra en la imagen.

<a class="" data-lightbox="Importación de datos identificación de novedades" href="/_static/identificacion_de_novedades/importar_datos_identificacion_novedades.gif" title="Importación de datos identificación de novedades" data-title="Importación de datos identificación de novedades"><img src="/_static/identificacion_de_novedades/importar_datos_identificacion_novedades.gif" class="align-center" width="800px" alt="Importación de datos identificación de novedades"/></a>

3-    En el menú de “Identificación de novedades” se encuentran dos funcionalidades: “Consulta por predio” y “Consulta masiva” en la primera opción se podrá consultar las novedades de un predio especifico, en la segunda opción se podrá ver un reporte en pantalla de las novedades presentadas en el total de los datos consultados.


A continuación se explica las dos funcionalidades presentes en el menú identificación de novedades.

## Consulta por predio
Al ejecutar esta funcionalidad, se carga en la vista mapa y en el panel de capas de QGIS las dos fuentes de datos para realizar la comparación y en la parte derecha de la vista de mapa se carga un formulario que permite realizar la consulta de un predio por alguno de los tres siguientes atributos:
- Número Predial
- Número Predial Anterior
- Folio de Matrícula Inmobiliaria

Al ingresar la información por alguno de los atributos se muestra una tabla de comparación entre el dato oficial y el dato producto del levantamiento catastral y se muestra una alerta en pantalla si hay algún cambio significativo entre las dos fuentes de datos. En la vista de mapa con el uso de la herramienta de comparación gráfica que se activa automáticamente, se puede comparar el cambio de los linderos de un lote, esta función es útil en el momento de realizar una inspección visual de la información recibida del levantamiento catastral como se muestra en la  imagen.

<a class="" data-lightbox="Consulta por predio" href="/_static/identificacion_de_novedades/consulta_predio.gif" title="Consulta por predio" data-title="Consulta por predio"><img src="/_static/identificacion_de_novedades/consulta_predio.gif" class="align-center" width="800px" alt="Consulta por predio"/></a>

El formulario de la derecha presenta cuatro columnas en donde se muestra el atributo por el cual se hace la comparación, el dato de la fuente oficial (insumos), el dato del levantamiento catastral y un estado, esta última columna se muestra en un color diferente dependiendo del resultado de la comparación: verde si el dato no presenta cambios y rojo si se presenta cambios entre las dos fuentes de datos. 

<div class="seealso">
<p class="admonition-title">TIP</p>
<p>En la parte superior de la tabla de resultados se encuentra una caja de selección (*checkbox*) que se encuentra activa por defecto y permite ver gráficamente todos los predios de la fuente de datos en un color diferente al seleccionado y sí se deselecciona solo muestra el predio objeto de la consulta en la vista de mapa.</p>
</div>


Al terminar de revisar los datos se puede regresar al formulario de búsqueda dando clic en el icono de flecha en la parte superior izquierda del panel de resultados, para luego permitir ingresar por otro atributo de búsqueda o valor para consultar un nuevo predio.

## Consulta masiva

Al ejecutar esta funcionalidad se carga un reporte en panel de resultados en la parte derecha de la vista mapa en donde se muestra un contador con los cambios identificados en los dos conjuntos de datos y al final muestra el total de los cambios identificados; en cada uno de los criterios utilizados para mostrar la novedad se da la opción de ver información de los predios, al dar clic en el botón “Ver predios” el formulario se actualiza y carga una tabla de resultados como se muestra en la imagen, donde se muestra el número predial y un estado asociado dependiendo de la novedad identificada, al dar doble clic sobre alguno de los resultados se actualiza el formulario y muestra la comparación de las dos fuentes de datos como se explicó en la anterior consulta.

<div class="note">
<p class="admonition-title">IMPORTANTE</p>
<p>La herramienta de comparación gráfica solo se activa en la  vista de resultados cuando gráficamente se puede evidenciar un cambio entre el conjunto de datos de insumos y el conjunto de datos del levantamiento castastral.</p>
</div>



De la misma forma que en la consulta por predio se puede volver al formulario anterior en el panel de resultados dando clic en el botón con icono de flecha en la parte superior izquierda.

<a class="" data-lightbox="Consulta masiva" href="/_static/identificacion_de_novedades/consulta_masiva.gif" title="Consulta masiva" data-title="Consulta masiva"><img src="/_static/identificacion_de_novedades/consulta_masiva.gif" class="align-center" width="800px" alt="Consulta masiva"/></a>

### Tipos de Novedades
A continuación,  se da una descripción de cada uno de los tipos de novedades que se generan a partir de esta consulta:

- *Altas*: Son predios incorporados en el levantamiento catastral y no estaban en los datos oficiales (insumos).
- *Bajas*: Son predios que no aparecen en el levantamiento catastral y se encuentran en los datos oficiales (insumos).
- *Predios con cambios*: Son predios que reportan algún cambio en los datos alfanuméricos o en su forma geométrica o alteración de sus linderos (cambios físicos) que se identificaron en el levantamiento catastral comparado a lo registrado en los datos oficiales (insumos).
- *Predios sin cambios*: Predios que no reportaron cambios alfanuméricos ni físicos en el levantamiento catastral en comparación a lo registrado en los datos oficiales (insumos).
- *Números prediales duplicados*: Identificación de números prediales asignado más de una vez a predios diferentes en el levantamiento catastral.
- *Números prediales nulos*: Predios que en el levantamiento catastral no se les asigno un número predial.

*Total de novedades*: Conteo total de las novedades identificadas en la comparación entre las dos fuentes de datos (insumos vs. levantamiento catastral).

<a class="" data-lightbox="Tipos de novedades" href="/_static/identificacion_de_novedades/resumen_novedades_masivo.png" title="Tipos de novedades" data-title="Tipos de novedades"><img src="/_static/identificacion_de_novedades/resumen_novedades_masivo.png" class="align-center" width="300px" alt="Tipos de novedades"/></a>

Es de notar que, en la identificación de novedades, los resultados se presentan con colores y etiquetas como se muestra en la imagen, con el fin de permitir al usuario ver información adicional como la cantidad de registros de un resultado (etiqueta con número), si hubo un cambio o no (color y etiqueta) en los datos provenientes del levantamiento catastral con respecto a los datos oficiales de insumos.
