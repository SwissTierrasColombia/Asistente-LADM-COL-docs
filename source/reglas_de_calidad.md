# Reglas de calidad

El Asistente LADM-COL incluye funcionalidades de revisión y control de calidad de los datos que han sido estructurados en el modelo LADM, para ello le presenta un conjunto de 30 reglas de validación de calidad que le ayudara al usuario a revisar sus datos y corregir inconsistencias que se presenten en la información. Para acceder a este menú se debe ingresar al menú del Asistente LADM-COL y seleccionar “Calidad” como se muestra en el siguiente gif.

<img src="_static/reglas_de_calidad/quality_rules.gif" alt="Reglas de calidad" style="height:500px;width:800px" />

El conjunto de reglas disponibles comprenden:

+ Reglas para puntos (4 reglas)
+ Reglas para Líneas (5 reglas)
+ Reglas para Polígonos (11 reglas)
+ Reglas de Consistencia Lógica (22 reglas), verifica las relaciones de los objetos del modelo LADM-COL.
  <a class="" data-lightbox="Conjunto de reglas disponibles" href="_static/reglas_de_calidad/rules_list.png" title="Conjunto de reglas disponibles" data-title="Conjunto de reglas disponibles"><img src="_static/reglas_de_calidad/rules_list.png" class="align-center" width="600px" alt="Conjunto de reglas disponibles"/></a>

Para ejecutar las reglas primero se debe haber cargado previamente las capas a validar como se mostró en la sección [Cargar Capas](cargar_capas.html); se pueden correr las reglas una a una, por grupos o seleccionándolas todas al tiempo, para este caso se da clic en el botón “Seleccionar Todas” o si se quiere limpiar la selección actual se da clic en el botón “Limpiar Selección” y luego dar clic en el botón “Aceptar”. 

<div class="warning">
<p class="admonition-title">ADVERTENCIA</p>
<p>Se recomienda que para un gran volumen de datos (varias capas y tablas con mucha información) se corran las reglas por grupos o por regla especifica con el fin de evitar que la aplicación se bloquee y genere algún error por consumo excesivo de memoria al intentar validar todas las reglas al tiempo.</p>
</div>


A continuación, se realiza una breve descripción de las reglas de validación por grupos, que se utilizan con más frecuencia en la revisión de datos para la gestión de datos catastrales.

## Reglas para puntos

Este grupo de reglas validan en general que los puntos provenientes de un levantamiento predial no se sobrepongan, estén cubiertos por los nodos de un Lindero y los nodos de Terrenos, etc. En el gif se muestra cómo se ejecuta dos de las reglas y los resultados que se despliegan en panel de mapa. 

### Los Puntos de Linderos no deben superponerse

<img src="_static/reglas_de_calidad/boundary_points_should_not_overlap.gif" alt="Los Puntos de Linderos no deben superponerse" style="height:500px;width:800px" />


### Los Puntos de Control no deben superponerse

<img src="_static/reglas_de_calidad/control_points_should_not_overlap.gif" alt="Los Puntos de Control no deben superponerse" style="height:500px;width:800px" />



## Reglas para Líneas

Este grupo de reglas validan diferentes características de los Linderos de un predio; como que no sean más largos de 200 metros ya que a una magnitud mayor se pierde la definición exacta de la forma y el área del predio, que no se superpongan, que los Linderos estén cubiertos por los Terrenos, Linderos deben terminar en cambio de una colindancia. En los siguientes gif se observan los resultados al ejecutar estas reglas.

### Los Linderos no deben superponerse

<img src="_static/reglas_de_calidad/boundary_should_not_overlap.gif" alt="Los Linderos no deben superponerse" style="height:500px;width:800px" />


### Los nodos de Linderos deben estar cubiertos por Putos de Lindero

<img src="_static/reglas_de_calidad/boundary_nodes_should_be_covered_by_boundary_point.gif" alt="Los nodos de Linderos deben estar cubiertos por Putos de Lindero" style="height:500px;width:800px" />


### Los Linderos no deben tener nodos sin conectar

<img src="_static/reglas_de_calidad/boundary_should_not_have_dangles.gif" alt="Los Linderos no deben tener nodos sin conectar" style="height:500px;width:800px" />



## Reglas para Polígonos

Este grupo de reglas validan diferentes características que deben cumplir los elementos con geometría polígono como los terrenos, construcciones, servidumbres y unidades de construcción; al correrlas permite identificar errores topológicos y validación de consistencia entre los elementos como la contenencia de un polígono contenida dentro de  otro polígono, ejm. Una construcción debe estar dentro de un polígono de terreno, una unidad de construcción debe estar dentro de una construcción).

### Los Terrenos no deben superponerse

<img src="_static/reglas_de_calidad/plots_should_not_overlap.gif" alt="Los Terrenos no deben superponerse" style="height:500px;width:800px" />


### Los nodos de Construcción deben estar cubiertos por Puntos de Levantamiento

<img src="_static/reglas_de_calidad/buildings_nodes_should_be_coverd_by_survey_point.gif" alt="Los nodos de Construcción deben estar cubiertos por Puntos de Levantamiento" style="height:500px;width:800px" />


### Las Servidumbres no se deben superponer con Construcciones

<img src="_static/reglas_de_calidad/right_of_way_should_not_overlap_buildings.gif" alt="Las Servidumbres no se deben superponer con Construcciones" style="height:500px;width:800px" />



## Reglas de consistencia lógica

Este conjunto de reglas permiten hacer validaciones sobre “reglas de negocio” (definidas por la autoridad catastral o los gestores) que están más asociadas a la vinculación de datos (atributos) con los elementos geográficos, como son los derechos asociados a un predio, el cual se asocia a un terreno o construcción, las fracciones de grupos de interesados que deben ser igual a uno (1) o como la validación de la posición de un campo específico dentro de un atributo de predio como es el caso del número predial.
