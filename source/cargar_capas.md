# Cargar capas

El Asistente LADM-COL tiene una herramienta para cargar capas conservando las características del modelo .ili con el que se generó la base de datos.

Este permite cargar una o muchas capas configurando de forma automática los dominios, dependencias y relaciones del modelo, así como una simbología única para cada capa espacial que se cargue. También tiene unas capas para cargar de forma predeterminada.

Después de haber creado la estructura LADM-COL en la base de datos donde se guardarán los datos para probar las funciones del Asistente, y haber realizado la importación de estos a partir del archivo XTF del conjunto de datos como se describió en la sección [Importar datos](administracion_de_datos.html#importar-datos) se procede a cargar los datos a la interfaz del Asistente con el fin de explorar los datos como se muestra en el siguiente gif. 

<a class="" data-lightbox="Cargar capas" href="_static/cargar_capas/load_layers.gif" title="Cargar capas" data-title="Cargar capas"><img src="_static/cargar_capas/load_layers.gif" class="align-center" width="800px" alt="Cargar capas"/></a>



Es de tener en cuenta que los datos se muestran en grupos según al modelo núcleo o extendido del modelo LADM-COL en que están estructurados los datos, adicional a esto en la parte inferior de la ventana interna hay tres _check box_  :ballot_box_with_check: de selección que permiten ver adicional a las capas geográficas, los dominios, estructuras y asociaciones que contenga el modelo. No se despliegan por defecto con el fin que el usuario pueda manipular las capas básicas de forma más fácil.

* Mostrar dominios: Despliega las tablas que contienen dominios de los modelos LADM-COL desplegados.
* Mostrar estructuras: Despliega las tablas que contienen de datos tipo "Estructura" de los modelos LADM-COL desplegados.
* Mostrar asociaciones:  Despliega las tablas que almacenan relaciones entre tablas y capas geográficas de los modelos LADM-COL desplegados.

* <img src="_static\cargar_capas\Cajas_seleccion.gif" alt="Cajas de selección" style="height:500px;width:800px" />

En la parte inferior de la ventana emergente existe un menú desplegable "Seleccionar tablas predefinida para" que permite seleccionar un conjunto de datos asociados (capas y tablas) sin tener que seleccionar uno a uno, como son los datos de interesados, derechos y las relaciones presentes entre las capas de Punto Lindero, Lindero y Terreno; lo cual es muy útil al revisar la información cargada en el modelo LADM-COL. Se selecciona una de las tres opciones y el Asistente carga al panel de capas y mapa, las tablas y capas asociadas a la opción seleccionada como se ve en el siguiente gif.

<a class="" data-lightbox="Tablas predefinidas" href="_static/cargar_capas/tablas_predefinidas.gif" title="Tablas predefinidas" data-title="Tablas predefinidas"><img src="_static/cargar_capas/tablas_predefinidas.gif" class="align-center" width="800px" alt="Tablas predefinidas"/></a>

