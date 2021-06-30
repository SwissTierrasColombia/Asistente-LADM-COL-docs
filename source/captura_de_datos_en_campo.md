# Captura de datos en campo

La captura en campo es un proceso que permite realizar el levantamiento predial en terreno de una zona de interés por parte del Operador y entregada al Gestor. Se desarrolla en varias actividades entre las que se tienen:

1. Alistamiento de insumos (ver [Gestión de insumos](st-docs/user-manual-doc/9-rol-operador.html#gestion-de-insumos))
2. ETL de submodelo de insumos a Modelo de captura en campo
3. Asignación de zonas de trabajo y predios por parte del Coordinador General
4. Asignación de zonas de trabajo y predios por parte del Coordinador de Campo
5. Levantamiento en campo por parte de los reconocedores
6. Sincronización de datos de campo por parte del Coordinador de Campo
7. Sincronización de datos de campo por parte del Coordinador General
8. ETL de Modelo de captura en campo a Modelo de aplicación Lev.Catastral 

El Asistente LADM-COL apoya en la realización de estas actividades y con la ayuda de algunas imágenes gif se orienta como llevarlas a cabo a partir de las funcionalidades asignadas a cada perfil.

***
ETL (Submodelo Insumos - Modelo Captura en Campo) EN DESARROLLO
***

## Asignar predios

La asignación de zonas de trabajo y predios por parte del Coordinador General, corresponde a asignar (entregar conjunto de datos) grupo de predios del municipio o zona de intervención a los coordinadores de campo para que ellos asignen la carga de trabajo a cada uno de sus reconocedores de campo y con ello se realice el levantamiento catastral del total de la zona de trabajo. A continuación se muestra en los gif cada uno de los pasos que realiza el Coordinador General y el Coordinador de Campo utilizando el Asistente LADM-COL.

#### Coordinador General

*Perfil encargado de asignar a los coordinadores de campo la captura y gestión de los datos provenientes del Levantamiento Catastral*

Selección de perfil de coordinador general  y creación de base de datos maestra.

<a class="" data-lightbox="Creación de BD Coord.General" href="_static/captura_de_datos_en_campo/0_Coor_general_asignacion_12.gif" title="Creación de BD Coord.General" data-title="Creación de BD Coord.General"><img src="_static/captura_de_datos_en_campo/0_Coor_general_asignacion_12.gif" class="align-center" width="800px" alt="Creación de BD Coord.General"/></a>

 Importación archivo (formato XTF) de datos insumos en el modelo de Captura en Campo.

<a class="" data-lightbox="Importación de datos Coord.General" href="_static/captura_de_datos_en_campo/1_Coor_general_asignacion_3.gif" title="Importación de datos Coord.General" data-title="Importación de datos Coord.General"><img src="_static/captura_de_datos_en_campo/1_Coor_general_asignacion_3.gif" class="align-center" width="800px" alt="Importación de datos Coord.General"/></a>

Creación de coordinadores de campo.

<a class="" data-lightbox="Creación usuarios Coord.General" href="_static/captura_de_datos_en_campo/2_Coor_general_asignacion_45.gif" title="Creación usuarios Coord.General" data-title="Creación usuarios Coord.General"><img src="_static/captura_de_datos_en_campo/2_Coor_general_asignacion_45.gif" class="align-center" width="800px" alt="Creación usuarios Coord.General"/></a>

Asignación de zonas y predios a coordinadores de campo.

<a class="" data-lightbox="Asignar predios Coord.General" href="_static/captura_de_datos_en_campo/3_Coor_general_asignacion_6.gif" title="Asignar predios Coord.General" data-title="Asignar predios Coord.General"><img src="_static/captura_de_datos_en_campo/3_Coor_general_asignacion_6.gif" class="align-center" width="800px" alt="Asignar predios Coord.General"/></a>

Exportación de conjunto de datos (formato XTF) a coordinadores de campo.

<a class="" data-lightbox="Exportar datos Coord.General" href="_static/captura_de_datos_en_campo/4_Coor_general_asignacion_7.gif" title="Exportar datos Coord.General" data-title="Exportar datos Coord.General"><img src="_static/captura_de_datos_en_campo/4_Coor_general_asignacion_7.gif" class="align-center" width="800px" alt="Exportar datos Coord.General"/></a>

#### Coordinador de Campo

*Perfil encargado de gestionar la la captura de datos de campo provenientes del Levantamiento Catastral*.

Selección de perfil de coordinador de campo.

<a class="" data-lightbox="Creación de BD Coord.Campo" href="_static/captura_de_datos_en_campo/5_Coor_campo_asignacion_1.gif" title="Creación de BD Coord.Campo" data-title="Creación de BD Coord.Campo"><img src="_static/captura_de_datos_en_campo/5_Coor_campo_asignacion_1.gif" class="align-center" width="800px" alt="Creación de BD Coord.Campo"/></a>

Creación de base de datos de zona asignada.

<a class="" data-lightbox="Asignar predios Coord.Campo_1" href="_static/captura_de_datos_en_campo/6_Coor_campo_asignacion_2.gif" title="Asignar predios Coord.Campo_1" data-title="Asignar predios Coord.Campo_1"><img src="_static/captura_de_datos_en_campo/6_Coor_campo_asignacion_2.gif" class="align-center" width="800px" alt="Asignar predios Coord.Campo_1"/></a>

Importación de datos insumos en el modelo de Captura en Campo.

<a class="" data-lightbox="Asignar predios Coord.Campo_2" href="_static/captura_de_datos_en_campo/7_Coor_campo_asignacion_3.gif" title="Asignar predios Coord.Campo_2" data-title="Asignar predios Coord.Campo_2"><img src="_static/captura_de_datos_en_campo/7_Coor_campo_asignacion_3.gif" class="align-center" width="800px" alt="Asignar predios Coord.Campo_2"/></a>

Cargue de datos zona asignada e imagen de referencia.

<a class="" data-lightbox="Asignar predios Coord.Campo_3" href="_static/captura_de_datos_en_campo/8_Coor_campo_asignacion_45.gif" title="Asignar predios Coord.Campo_3" data-title="Asignar predios Coord.Campo_3"><img src="_static/captura_de_datos_en_campo/8_Coor_campo_asignacion_45.gif" class="align-center" width="800px" alt="Asignar predios Coord.Campo_3"/></a>

Creación de reconocedores de campo a zona asignada.

<a class="" data-lightbox="Asignar predios Coord.Campo_4" href="_static/captura_de_datos_en_campo/9_Coor_campo_asignacion_6.gif" title="Asignar predios Coord.Campo_4" data-title="Asignar predios Coord.Campo_4"><img src="_static/captura_de_datos_en_campo/9_Coor_campo_asignacion_6.gif" class="align-center" width="800px" alt="Asignar predios Coord.Campo_4"/></a>

Asignación de predios a reconocedores de campo.

<a class="" data-lightbox="Asignar predios Coord.Campo_4" href="_static/captura_de_datos_en_campo/10_Coor_campo_asignacion_7.gif" title="Asignar predios Coord.Campo_4" data-title="Asignar predios Coord.Campo_4"><img src="_static/captura_de_datos_en_campo/10_Coor_campo_asignacion_7.gif" class="align-center" width="800px" alt="Asignar predios Coord.Campo_4"/></a>

Generación de proyectos *QField* a reconocedores.

<a class="" data-lightbox="Asignar predios Coord.Campo_4" href="_static/captura_de_datos_en_campo/11_Coor_campo_asignacion_89.gif" title="Asignar predios Coord.Campo_4" data-title="Asignar predios Coord.Campo_4"><img src="_static/captura_de_datos_en_campo/11_Coor_campo_asignacion_89.gif" class="align-center" width="800px" alt="Asignar predios Coord.Campo_4"/></a>

## Recolección datos en Campo

El reconocedor con su dispositivo móvil puede agregara uno o varios proyectos *QField* que le ha entregado el coordinador de campo, en este proyecto lleva la configuración, formularios, imagen de referencia y simbología necesaria para orientarse e identificar los predios en el terreno y poder realizar el levantamiento catastral de forma eficiente.

<div class="seealso">
<p class="admonition-title">TIP</p>
<p>El reconocedor antes de ir a campo debe instalar y configurar en su dispositivo la última versión de <i>QField</i> para poder cargar y vizualizar correctamente los proyectos entregados por el coordinador de campo. (ver manual de <a href="https://swisstierrascolombia.github.io/QField-LADM-COL-docs/">QField para campo</a>)</p>
</div>


#### Reconocedor

Almacenamiento y cargue del proyecto *QField* en el dispositivo móvil.

<a class="" data-lightbox="Asignar predios Coord.Campo_4" href="_static/captura_de_datos_en_campo/12_reconocedor_campo_1.gif" title="Asignar predios Coord.Campo_4" data-title="Asignar predios Coord.Campo_4"><img src="_static/captura_de_datos_en_campo/12_reconocedor_campo_1.gif" class="align-center" width="800px" alt="Asignar predios Coord.Campo_4"/></a>

Digitalización de puntos en el dispositivo móvil.

<a class="" data-lightbox="Asignar predios Coord.Campo_4" href="_static/captura_de_datos_en_campo/13_reconocedor_campo_2.gif" title="Asignar predios Coord.Campo_4" data-title="Asignar predios Coord.Campo_4"><img src="_static/captura_de_datos_en_campo/13_reconocedor_campo_2.gif" class="align-center" width="800px" alt="Asignar predios Coord.Campo_4"/></a>

Digitalización de polígonos y edición de formularios.

<a class="" data-lightbox="Asignar predios Coord.Campo_4" href="_static/captura_de_datos_en_campo/14_reconocedor_campo_3.gif" title="Asignar predios Coord.Campo_4" data-title="Asignar predios Coord.Campo_4"><img src="_static/captura_de_datos_en_campo/14_reconocedor_campo_3.gif" class="align-center" width="800px" alt="Asignar predios Coord.Campo_4"/></a>

## Sincronizar datos de campo

Después de capturar los datos de campo se debe realizar el proceso de sincronización que permite la consolidación de los datos obtenidos por cada uno de los reconocedores para un coordinador de campo y a su vez la consolidación de los datos de los coordinadores de campo al coordinador general. A continuación los pasos que se realizan para estas actividades.

#### Coordinador de Campo

Selección de perfil y crear base de datos para importar datos de campo.

<a class="" data-lightbox="Asignar predios Coord.Campo_4" href="_static/captura_de_datos_en_campo/15_Coor_campo_sincronizacion_1.gif" title="Asignar predios Coord.Campo_4" data-title="Asignar predios Coord.Campo_4"><img src="_static/captura_de_datos_en_campo/15_Coor_campo_sincronizacion_1.gif" class="align-center" width="800px" alt="Asignar predios Coord.Campo_4"/></a>

Importar y sincronizar los datos provenientes de los reconocedores (archivos GPKG).

<a class="" data-lightbox="Asignar predios Coord.Campo_4" href="_static/captura_de_datos_en_campo/16_Coor_campo_sincronizacion_2.gif" title="Asignar predios Coord.Campo_4" data-title="Asignar predios Coord.Campo_4"><img src="_static/captura_de_datos_en_campo/16_Coor_campo_sincronizacion_2.gif" class="align-center" width="800px" alt="Asignar predios Coord.Campo_4"/></a>

Verificar reglas de calidad, corregir y generar archivo XTF para entrega a coordinador general.

<a class="" data-lightbox="Asignar predios Coord.Campo_4" href="_static/captura_de_datos_en_campo/17_Coor_campo_sincronizacion_34.gif" title="Asignar predios Coord.Campo_4" data-title="Asignar predios Coord.Campo_4"><img src="_static/captura_de_datos_en_campo/17_Coor_campo_sincronizacion_34.gif" class="align-center" width="800px" alt="Asignar predios Coord.Campo_4"/></a>

#### Coordinador General

Selección de perfil, crear base de datos para importar datos de coordinadores de campo, 

Importar y sincronizar los datos provenientes de los coordinadores de campo (archivos XTF)

verificar reglas de calidad, y consolidar datos de levantamiento catastral.

<a class="" data-lightbox="Asignar predios Coord.Campo_4" href="_static/captura_de_datos_en_campo/18_Coor_general_sincronizacion_34.gif" title="Asignar predios Coord.Campo_4" data-title="Asignar predios Coord.Campo_4"><img src="_static/captura_de_datos_en_campo/18_Coor_general_sincronizacion_34.gif" class="align-center" width="800px" alt="Asignar predios Coord.Campo_4"/></a>

Al finalizar estas actividades el coordinador general obtiene un archivo XTF final del levantamiento catastral de la zona asignada, la cual se llevara al modelo de aplicación Lev. Catastral con su respectivo proceso de control de calidad y luego será entregada al gestor.
***
ETL (Modelo Captura en Campo - Modelo de Aplicación Lev. Catastral)
