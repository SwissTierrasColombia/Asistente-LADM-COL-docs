# Reportes

El Asistente LADM-COL dispone de una funcionalidad que permite generar reportes a partir de los datos que se encuentran en la base de datos producto de un levantamiento predial, en el menú desplegable se puede escoger el reporte a generar:

+ Anexo 17: Es un reporte basado en la información y esquema del anexo #17 del documento “Conceptualización y especificaciones para la operación del Catastro Multipropósito” generado por el Instituto Geográfico Agustín Codazzi -IGAC- para el levantamiento de información para los pilotos de catastro multipropósito del país.
+ Plano ANT: Plano definido por la Agencia Nacional de Tierras-ANT que se utiliza para mostrar la información producto de la definición de cabida y linderos de los predios objeto del barrido predial. 

Estos reportes se encuentran desplegando el menú del Asistente LADM-COL en la parte superior de la interfaz de QGIS, en la funcionalidad “Reportes” y luego se selecciona el reporte que se requiera ejecutar como se ve en la imagen.

<a class="" data-lightbox="Menu reportes" href="_static/reportes/menu_reports.png" title="Menu reportes" data-title="Menu reportes"><img src="_static/reportes/menu_reports.png" class="align-center" width="500px" alt="Menu reportes"/></a>


## Anexo 17

Esta opción permite generar un documento asociado a los terrenos seleccionados, el cual corresponde al Anexo 17, este contiene un reporte de contigüidad.

El informe de colindancia corresponde al documento donde se identificarán por predio (con relaciones formales o informales de tenencia) cada uno de los linderos que lo constituyen y su correspondiente relación física y jurídica con los predios circundantes al mismo.

Para generar el informe del anexo 17, sigue estos pasos:

1. Selecciona el o los terrenos a los cuales se requiera generar el reporte.
2. Ir  a `LADM-COL --> Reportes` y dar clic en el botón `Anexo 17`.

<a class="" data-lightbox="Generar reporte anexo 17 paso 1" href="_static/reportes/annex_17_1.gif" title="Generar reporte anexo 17 paso 1" data-title="Generar reporte anexo 17 paso 1"><img src="_static/reportes/annex_17_1.gif" class="align-center" height="500px" width="800px" alt="Generar reporte anexo 17 paso 1"/></a>

3. Descargar dependencias. Este paso se realiza una sola vez (puede tardar algunos minutos y necesita una conexión a internet activa).
4. Indicar el directorio donde se desea almacenar los reportes generados.
5. Dar clic en OK. Debe aparecer una barra de progreso en la parte superior.
6. Se obtiene la validación de los informes generados con una barra de mensajes en color verde y dentro de ella un enlace a la ruta donde se encuentran los archivos.
7. Ir al directorio que se selecciono en el paso 4 para verificar el resultado, que debería verse como en la siguiente imagen:

<a class="" data-lightbox="Generar reporte anexo 17 paso 2" href="_static/reportes/annex_17_2.gif" title="Generar reporte anexo 17 paso 2" data-title="Generar reporte anexo 17 paso 2"><img src="_static/reportes/annex_17_2.gif" class="align-center" height="500px" width="800px" alt="Generar reporte anexo 17 paso 2"/></a>

<div class="seealso">
<p class="admonition-title">TIP</p>
<p>Para ver el reporte generado (Anexo 17 o plano ANT) se puede dar clic en el vinculo que se muestra en la zona de notificación (como se muestra en la imagen anterior) o se puede dirigir directamente en la carpeta definida para ver los reportes generados.</p>
</div>

## Plano ANT

El Plano ANT tiene como fin  mostrar la información producto de la definición de cabida y linderos de los predios a los que se les ha realizado un levantamiento predial. 

Para generar el informe del anexo 17, sigue estos pasos:

1. Selecciona el o los terrenos a los cuales se requiera generar el reporte.
2. Ir  a `LADM-COL --> Reportes` y dar clic en el botón `Plano ANT`.
3. Indicar el directorio donde se desea almacenar los reportes generados.
4. Dar clic en OK. Debe aparecer una barra de progreso en la parte superior.
5. Se obtiene la validación de los informes generados con una barra de mensajes en color verde y dentro de ella un enlace a la ruta donde se encuentran los archivos.
7. Ir al directorio que se selecciono en el paso 3 para verificar el resultado, que debería verse como en la siguiente imagen:

<a class="" data-lightbox="Reporte plano ANT" href="_static/reportes/report_ant.gif" title="Reporte plano ANT" data-title="Reporte plano ANT"><img src="_static/reportes/report_ant.gif" class="align-center" height="500px" width="800px" alt="Reporte plano ANT"/></a>

<div class="note">
<p class="admonition-title">IMPORTANTE</p>
<p>Esta funcionalidad actualmente permite generar reportes uno a uno del terreno seleccionado o si se desea se pueden generar varios reportes en modo <i>batch</i> (procesamiento por lotes); simplemente se debe seleccionar varios terrenos al mismo tiempo con la herramienta de selección y se escoje el reporte a generar (Anexo 17 o plano ANT), en la carpeta destino se guarda uno a uno los reportes de los predios seleccionados con el nombre del reporte y el <b>t_id</b> del terreno seleccionado. Esto resulta muy útil en los casos que se necesite generar reportes masivos de una zona de trabajo para varios terrenos.</p>
</div>
