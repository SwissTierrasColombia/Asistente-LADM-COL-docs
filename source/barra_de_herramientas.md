# Barra de herramientas

La barra de herramientas del Asistente LADM-COL esta compuesta de varios grupos de funcionalidades que se ordenan de acuerdo a las actividades a realizar.

Así es como se ve la barra de herramientas:

![Barra de herramientas Asistente LADM-COL](/_static/barra_de_herramientas/ladm_col_toolbar.png)

Si la barra de herramientas no aparece en la interfaz de QGIS, puedes hacer que se vea con la siguiente interacción: dar clic derecho en la barra gris de la interfaz en QGIS y selecciona "Herramientas LADM-COL" o como se muestra en el siguiente gif:

<a class="" data-lightbox="Mostrar barra de herramientas Asistente LADM-COL" href="/_static/barra_de_herramientas/show_ladm_col_toolbar.gif" title=" Mostrar barra de herramientas Asistente LADM-COL " data-title=" Mostrar barra de herramientas Asistente LADM-COL "><img src="/_static/barra_de_herramientas/show_ladm_col_toolbar.gif" class="align-center" width="800px" alt=" Mostrar barra de herramientas Asistente LADM-COL "/></a>


<div class="warning">
<p class="admonition-title">ADVERTENCIA</p>
<p>La barra de herramientas no es visible en la interfaz de QGIS si el Asistente LADM-COL no tiene una conexión válida a una base de datos, esto sucede apenas es instalado el plugin, e incluso después de instalado. Por ejemplo, si nos conectamos a una GPKG, cerramos QGIS, borramos o movemos la GPKG y volvemos a abrir QGIS. El Asistente reconocerá que no hay conexión válida y borrará la barra de herramientas.</p>
</div>

Los grupos de funcionalidades son los siguientes:
## Sistema de transición (1)
<a class="" data-lightbox="Sistema de Transición" href="/_static/barra_de_herramientas/toolbar_ST.png" title="Sistema de Transición" data-title="Sistema de Transición"><img src="/_static/barra_de_herramientas/toolbar_ST.png" class="align-center" width="200px" alt="Sistema de Transición"/></a>
## Crear objetos de levantamiento (2)
<a class="" data-lightbox="Crear objetos Levantamiento" href="/_static/barra_de_herramientas/crear_objetos_lev.png" title="Crear objetos Levantamiento" data-title="Crear objetos Levantamiento"><img src="/_static/barra_de_herramientas/crear_objetos_lev.png" class="align-center" width="200px" alt="Crear objetos Levantamiento"/></a>
## Cargar capas (3)
<a class="" data-lightbox="Cargar capas" href="/_static/barra_de_herramientas/cargar_capas.png" title="Cargar capas" data-title="Cargar capas"><img src="/_static/barra_de_herramientas/cargar_capas.png" class="align-center" width="60px" alt="Cargar capas"/></a>
## Construir linderos (4)

<a class="" data-lightbox="Construir linderos" href="/_static/barra_de_herramientas/build_boudaries.gif" title="Construir linderos" data-title="Construir linderos"><img src="/_static/barra_de_herramientas/build_boudaries.gif" class="align-center" width="800px" alt="Construir linderos"/></a>

## Mover nodos (5)

<a class="" data-lightbox="Mover nodos" href="/_static/barra_de_herramientas/mover_nodos.gif" title="Mover nodos" data-title="Mover nodos"><img src="/_static/barra_de_herramientas/mover_nodos.gif" class="align-center" width="800px" alt="Mover nodos"/></a>

## Llenar PuntosCCL (6)

Puedes llenar la tabla de topología PuntosCCL usando el botón Llenar PuntosCCL en la barra
de herramientas de LADM_COL el cual hace este trabajo de forma automática y más rápido.

Estas son las tablas que se relacionan con esta función:
- puntosccl –> puntolindero y lindero

<a class="" data-lightbox="Llenar puntos CCL" href="/_static/barra_de_herramientas/fill_points_bfs.gif" title="Llenar puntos CCL" data-title="Llenar puntos CCL"><img src="/_static/barra_de_herramientas/fill_points_bfs.gif" class="align-center" width="800px" alt="Llenar puntos CCL"/></a>

## Llenar más y menos CCL (7)

Puedes llenar la tabla de topología más CCL y menos usando el botón Llenar más CCL y menos
usando la barra de herramientas de LADM_COL el cual hace este trabajo de forma automática y más rápido.

Estas son las tablas que se relacionan con esta función:

- masccl –> terreno y lindero
- menos –> terreno y lindero (agujeros o anillos internos)

<a class="" data-lightbox="Llenar más y menos CCL" href="/_static/barra_de_herramientas/fill_more_and_less_bfs.gif" title="Llenar más y menos CCL" data-title="Llenar más y menos CCL"><img src="/_static/barra_de_herramientas/fill_more_and_less_bfs.gif" class="align-center" width="800px" alt="Llenar más y menos CCL"/></a>

## Configuración (8)
<a class="" data-lightbox="Configuración" href="/_static/barra_de_herramientas/configuracion.png" title="Configuración" data-title="Configuración"><img src="/_static/barra_de_herramientas/configuracion.png" class="align-center" width="60px" alt="Configuración"/></a>

Debes dar clic en este icono para tener acceso a la ventana de configuración del Asistente, mas información puedes ir a la sección [Configuración](configuracion.html).

<div class="note">
<p class="admonition-title">IMPORTANTE</p>
<p>De acuerdo al rol que elijas en la pestaña "Avanzado" de la ventana de configuración definirá el conjunto de barra de herramientas que vizualizas y tendrás a disposición desde la interfaz del Asistente LADM-COL.</p>
</div>
