# Consulta de datos
(EN REVISIÓN DE REDACCIÓN)

Una vez se tengan cargadas las capas y tablas de la base de datos en el panel de capas de QGIS se puede acceder al menú “Consultar datos”, para acceder a este menú vaya al módulo del Asistente LADM-COL en la parte superior del programa QGIS y seleccione el menú; si el proyecto de QGIS es abierto recientemente y en el “Panel de capas” no hay datos desplegados, el asistente cargara automáticamente las capas y tablas asociadas para realizar la consulta de los datos como se muestra en la imagen.

Tip: En caso de no cargar los datos automáticamente se pueden agregar los datos desde el menú “Cargar capas” como se explicó en la sección 

El Asistente LADM_COL permite a través de este menú consultar datos cargados en bases de datos conformes con el modelo LADM_COL , esto es muy útil ya que se carga la capa terreno y las tablas relacionadas al predio en el panel de capas y permite realizar una consulta sobre la capa terreno o a través de un identificador especifico (número predial, número predial anterior, folio de matrícula inmobiliaria) y retorna toda la información relacionada que se encuentre en la estructura del modelo LADM-COL la cual está en diferentes tablas en un único formulario consolidado.

`INCLUIR  GIF`

Donde se elige el tipo de consulta y está compuesto por dos pestañas.
## Consulta alfanumérica
Se escoge el atributo a consultar del menú de selección y se ingresa el valor.
`INCLUIR  GIF`
## Consulta espacial
Se utiliza el identificador para seleccionar algún elemento de la capa terreno para su consulta.
<img src="_static/consulta_de_datos/query_ladm_data.gif" alt="Consulta de datos" style="height:500px;width:800px" />

## Resultados de las consultas

### Consulta básica
Muestra los datos básicos de los objetos relacionados con el terreno como predios, construcciones y unidades de construcción.
### Consulta jurídica
Muestra los datos Jurídicos asociados al terreno como los derechos, fuentes administrativas, interesados, restricciones, responsabilidades y gravámenes a la propiedad como hipotecas, servidumbres, usufructos, etc.
### Consulta ficha predial
Muestra toda la información relacionada al (los) predio(s) de la ficha predial del modelo extendido de LADM_COL.
### Consulta física
Muestra información más detallada sobre los elementos descritos en la pestaña "Básica", adicional muestra linderos y puntos de linderos asociados al terreno, así como puntos de levantamiento y fuentes espaciales si están almacenadas en el modelo LADM_COL.
### Consulta económica
Muestra la información económica (avalúos, zonas homogéneas, etc.) de los objetos relacionados al terreno como predios, construcciones y unidades de construcción, así como datos del modelo extendido de avalúos de LADM_COL para estos objetos. 

Nota:Los datos desplegados en el formulario "Resultados" se encuentran organizados (anidados) de acuerdo a sus relaciones. Ejemplo: un terreno puede tener un predio relacionado, que a su vez puede estar relacionado con uno o más construcciones que a su vez puede estar relacionado con uno o más unidades constructivas.

### Despliegue de menú contextual en un resultado
Una vez se han desplegado los datos de una consulta en la sección "Resultados" se puede utilizar el menú contextual al dar clic derecho sobre el identificador (t_id), con lo cual se activarán tres opciones de menú como se ve en la Imagen 26c y se describen a continuación.
`INCLUIR  GIF`
•	 Copiar valor: Copia el atributo-valor (t_id) para realizar otras consultas.
•	Zoom a terreno asociado (solo para un elemento geográfico): Hace un acercamiento del terreno seleccionado en la vista de mapa.
•	Abrir formulario para predio: Muestra el formulario del (t_id) seleccionado en donde se visualiza todos los datos guardados; permite editarlos si la capa se encuentra en modo de edición, como se muestra en la imagen.

En la ventana que se despliega se pueden editar los datos almacenados para el elemento seleccionado, teniendo en cuenta que ciertos campos requieren de validación, pueden tener asociados dominios o relaciones que no permitan cambiar el dato almacenado directamente, pero en otros campos si es posible editarlos y guardarlos en la base de datos.
