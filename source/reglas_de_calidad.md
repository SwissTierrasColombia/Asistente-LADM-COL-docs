# Reglas de calidad
El Asistente LADM-COL incluye funcionalidades de revisión y control de calidad de los datos que han sido estructurados en el modelo LADM, para ello le presenta un conjunto reglas de validación de calidad que ayudara al usuario a revisar datos y corregir inconsistencias que se presenten en la información. Para acceder a este menú se debe ingresar al menú del Asistente LADM-COL y seleccionar “Calidad” como se muestra en el siguiente gif.

<img src="_static/reglas_de_calidad/quality_rules.gif" alt="Reglas de calidad" style="height:500px;width:800px" />

El conjunto de reglas disponibles comprenden:
+ Reglas para Puntos.
+ Reglas para Líneas.
+ Reglas para Polígonos.
+ Reglas de Consistencia Lógica, verifica las relaciones de los objetos del modelo LADM-COL.
<a class="" data-lightbox="Conjunto de reglas disponibles" href="_static/reglas_de_calidad/rules_list.png" title="Conjunto de reglas disponibles" data-title="Conjunto de reglas disponibles"><img src="_static/reglas_de_calidad/rules_list.png" class="align-center" width="600px" alt="Conjunto de reglas disponibles"/></a>

Las reglas se pueden ejecutar habiendo cargado previamente las capas a validar como se mostró en la sección [Cargar Capas](cargar_capas.html) o sin haberlas cargado en el panel de capas; se pueden correr las reglas una a una, por grupos o seleccionándolas todas al tiempo, para este caso se da clic en el botón “Seleccionar Todas” o si se quiere limpiar la selección actual se da clic en el botón “Limpiar Selección” y luego dar clic en el botón “Aceptar”. 

<div class="warning">
<p class="admonition-title">ADVERTENCIA</p>
<p>En algunos casos con poca frecuencia, al tener un gran volumen de datos (varias capas y tablas con mucha información) se recomienda correr las reglas por grupos o por regla especifica con el fin de evitar algún posible bloqueo de la aplicación y que se pueda generar algún error por consumo excesivo de memoria al intentar validar todas las reglas al tiempo.(equipos de computo con limitada memoria disponible)</p>
</div>


A continuación, se realiza una breve descripción de las reglas de validación por grupos, que se utilizan con más frecuencia en la revisión de datos para la gestión de datos catastrales.

## Reglas para puntos

Este grupo de reglas ayudan a validar que los puntos provenientes de un levantamiento predial no se sobrepongan, ayudan a verificar que los puntos estén cubiertos por los nodos de un lindero y los nodos de un terrenos. En el gif se muestra cómo se ejecuta dos de estas reglas y sus resultados que se despliegan en panel de mapa. 

### Los Puntos de Linderos no deben superponerse

<img src="_static/reglas_de_calidad/boundary_points_should_not_overlap.gif" alt="Los Puntos de Linderos no deben superponerse" style="height:500px;width:800px" />


### Los Puntos de Control no deben superponerse

<img src="_static/reglas_de_calidad/control_points_should_not_overlap.gif" alt="Los Puntos de Control no deben superponerse" style="height:500px;width:800px" />



## Reglas para Líneas

Este grupo de reglas ayudan a validar algunas características que pueden presentar los linderos de un predio; como que estos no se superpongan, que los linderos estén cubiertos por los límites de uno o varios terrenos, que los linderos deben terminar en cambio de una colindancia, entre otros. En los siguientes gif se observan los resultados al ejecutar estas reglas.

### Los Linderos no deben superponerse

<img src="_static/reglas_de_calidad/boundary_should_not_overlap.gif" alt="Los Linderos no deben superponerse" style="height:500px;width:800px" />


### Los nodos de Linderos deben estar cubiertos por Putos de Lindero

<img src="_static/reglas_de_calidad/boundary_nodes_should_be_covered_by_boundary_point.gif" alt="Los nodos de Linderos deben estar cubiertos por Putos de Lindero" style="height:500px;width:800px" />


### Los Linderos no deben tener nodos sin conectar

<img src="_static/reglas_de_calidad/boundary_should_not_have_dangles.gif" alt="Los Linderos no deben tener nodos sin conectar" style="height:500px;width:800px" />



## Reglas para Polígonos

Este grupo de reglas ayudan a validar diferentes características que deben cumplir los elementos con geometría polígono como son los terrenos, construcciones, servidumbres y unidades de construcción; al ejecutarlas permite identificar errores topológicos y puede realizar una verificación de consistencia entre los elementos como la contenencia de un polígono dentro de otro como por ejemplo: Una construcción debe estar contenida dentro de un polígono de terreno o una unidad de construcción debe estar contenida dentro de un polígono de una construcción.

A continuación algunos ejemplos de estas reglas para polígonos:

### Los Terrenos no deben superponerse

<img src="_static/reglas_de_calidad/plots_should_not_overlap.gif" alt="Los Terrenos no deben superponerse" style="height:500px;width:800px" />


### Los nodos de Construcción deben estar cubiertos por Puntos de Levantamiento

<img src="_static/reglas_de_calidad/buildings_nodes_should_be_coverd_by_survey_point.gif" alt="Los nodos de Construcción deben estar cubiertos por Puntos de Levantamiento" style="height:500px;width:800px" />


### Las Servidumbres no se deben superponer con Construcciones

<img src="_static/reglas_de_calidad/right_of_way_should_not_overlap_buildings.gif" alt="Las Servidumbres no se deben superponer con Construcciones" style="height:500px;width:800px" />



## Reglas de consistencia lógica

Este conjunto de reglas permiten hacer validaciones sobre “reglas de negocio” (definidas por la autoridad catastral o los gestores) que están más asociadas a la vinculación de datos (atributos) con los elementos geográficos, como son los derechos asociados a un predio, el cual se asocia a un terreno o construcción, las fracciones de grupos de interesados que deben ser igual a uno (1) o como la validación de la posición de un campo específico dentro de un atributo de predio como es el caso del número predial.
