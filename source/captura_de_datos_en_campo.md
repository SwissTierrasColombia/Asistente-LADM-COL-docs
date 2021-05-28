# Captura de datos en campo

La captura en campo es un proceso que permite realizar el levantamiento predial en terreno de una zona de interés por parte del Operador y entregada al Gestor. Se desarrolla en varias pasos entre los que se tienen:

1. Alistamiento de insumos (ver [Gestión de insumos](st-docs/user-manual-doc/9-rol-operador.html#gestion-de-insumos))
2. ETL de submodelo de insumos a Modelo de captura en campo
3. Asignación de zonas de trabajo y predios por parte del Coordinador General
4. Asignación de zonas de trabajo y predios por parte del Coordinador de Campo
5. Levantamiento en campo por parte de los reconocedores
6. Sincronización de datos de campo por parte del Coordinador de Campo
7. Sincronización de datos de campo por parte del Coordinador General
8. ETL de Modelo de captura en campo a Modelo de aplicación Lev.Catastral 

El Asistente LADM-COL ayuda en algunos de estos pasos y se describen a continuación.

***
ETL (Submodelo Insumos - Modelo Captura en Campo) EN DESARROLLO
***

## Asignar predios

La asignación de zonas de trabajo y predios por parte del Coordinador General, corresponde a repartir (entregar conjunto de datos) del municipio o zona de intervención a los Coordinadores de Campo para que ellos asignen la carga de trabajo a cada uno de sus reconocedores de campo y con ello se realice el levantamiento catastral del total del área de trabajo. A continuación se muestra en los gif cada uno de los pasos que realiza el Coordinador General y el Coordinador de Campo utilizando el Asistente LADM-COL.

#### Coordinador General

Creación de base de datos maestra e importación de datos insumos en el modelo de Captura en Campo.

<a class="" data-lightbox="Creación de BD Coord.General" href="_static/captura_de_datos_en_campo/0_Coor_general_asignacion_12.gif" title="Creación de BD Coord.General" data-title="Creación de BD Coord.General"><img src="_static/captura_de_datos_en_campo/0_Coor_general_asignacion_12.gif" class="align-center" width="800px" alt="Creación de BD Coord.General"/></a>

<a class="" data-lightbox="Importación de datos Coord.General" href="_static/captura_de_datos_en_campo/1_Coor_general_asignacion_3.gif" title="Importación de datos Coord.General" data-title="Importación de datos Coord.General"><img src="_static/captura_de_datos_en_campo/1_Coor_general_asignacion_3.gif" class="align-center" width="800px" alt="Importación de datos Coord.General"/></a>

Creación de Coordinadores de Campo

<a class="" data-lightbox="Creación usuarios Coord.General" href="_static/captura_de_datos_en_campo/2_Coor_general_asignacion_45.gif" title="Creación usuarios Coord.General" data-title="Creación usuarios Coord.General"><img src="_static/captura_de_datos_en_campo/2_Coor_general_asignacion_45.gif" class="align-center" width="800px" alt="Creación usuarios Coord.General"/></a>

Asignación de zonas y predios a Coordinadores de Campo

<a class="" data-lightbox="Asignar predios Coord.General" href="_static/captura_de_datos_en_campo/3_Coor_general_asignacion_6.gif" title="Asignar predios Coord.General" data-title="Asignar predios Coord.General"><img src="_static/captura_de_datos_en_campo/3_Coor_general_asignacion_6.gif" class="align-center" width="800px" alt="Asignar predios Coord.General"/></a>

Exportación de conjunto de datos (formato XTF) a Coordinadores de Campo

<a class="" data-lightbox="Exportar datos Coord.General" href="_static/captura_de_datos_en_campo/4_Coor_general_asignacion_7.gif" title="Exportar datos Coord.General" data-title="Exportar datos Coord.General"><img src="_static/captura_de_datos_en_campo/4_Coor_general_asignacion_7.gif" class="align-center" width="800px" alt="Exportar datos Coord.General"/></a>

#### Coordinador de Campo

<a class="" data-lightbox="Creación de BD Coord.Campo" href="_static/captura_de_datos_en_campo/5_Coor_campo_asignacion_1.gif" title="Creación de BD Coord.Campo" data-title="Creación de BD Coord.Campo"><img src="_static/captura_de_datos_en_campo/5_Coor_campo_asignacion_1.gif" class="align-center" width="800px" alt="Creación de BD Coord.Campo"/></a>

<a class="" data-lightbox="Asignar predios Coord.Campo_1" href="_static/captura_de_datos_en_campo/6_Coor_campo_asignacion_2.gif" title="Asignar predios Coord.Campo_1" data-title="Asignar predios Coord.Campo_1"><img src="_static/captura_de_datos_en_campo/6_Coor_campo_asignacion_2.gif" class="align-center" width="800px" alt="Asignar predios Coord.Campo_1"/></a>

<a class="" data-lightbox="Asignar predios Coord.Campo_2" href="_static/captura_de_datos_en_campo/7_Coor_campo_asignacion_3.gif" title="Asignar predios Coord.Campo_2" data-title="Asignar predios Coord.Campo_2"><img src="_static/captura_de_datos_en_campo/7_Coor_campo_asignacion_3.gif" class="align-center" width="800px" alt="Asignar predios Coord.Campo_2"/></a>

<a class="" data-lightbox="Asignar predios Coord.Campo_3" href="_static/captura_de_datos_en_campo/8_Coor_campo_asignacion_45.gif" title="Asignar predios Coord.Campo_3" data-title="Asignar predios Coord.Campo_3"><img src="_static/captura_de_datos_en_campo/8_Coor_campo_asignacion_45.gif" class="align-center" width="800px" alt="Asignar predios Coord.Campo_3"/></a>

<a class="" data-lightbox="Asignar predios Coord.Campo_4" href="_static/captura_de_datos_en_campo/9_Coor_campo_asignacion_6.gif" title="Asignar predios Coord.Campo_4" data-title="Asignar predios Coord.Campo_4"><img src="_static/captura_de_datos_en_campo/9_Coor_campo_asignacion_6.gif" class="align-center" width="800px" alt="Asignar predios Coord.Campo_4"/></a>

<a class="" data-lightbox="Asignar predios Coord.Campo_4" href="_static/captura_de_datos_en_campo/10_Coor_campo_asignacion_7.gif" title="Asignar predios Coord.Campo_4" data-title="Asignar predios Coord.Campo_4"><img src="_static/captura_de_datos_en_campo/10_Coor_campo_asignacion_7.gif" class="align-center" width="800px" alt="Asignar predios Coord.Campo_4"/></a>

<a class="" data-lightbox="Asignar predios Coord.Campo_4" href="_static/captura_de_datos_en_campo/11_Coor_campo_asignacion_89.gif" title="Asignar predios Coord.Campo_4" data-title="Asignar predios Coord.Campo_4"><img src="_static/captura_de_datos_en_campo/11_Coor_campo_asignacion_89.gif" class="align-center" width="800px" alt="Asignar predios Coord.Campo_4"/></a>

## Recolección datos en Campo

#### Reconocedor

<a class="" data-lightbox="Asignar predios Coord.Campo_4" href="_static/captura_de_datos_en_campo/12_reconocedor_campo_1.gif" title="Asignar predios Coord.Campo_4" data-title="Asignar predios Coord.Campo_4"><img src="_static/captura_de_datos_en_campo/12_reconocedor_campo_1.gif" class="align-center" width="800px" alt="Asignar predios Coord.Campo_4"/></a>

<a class="" data-lightbox="Asignar predios Coord.Campo_4" href="_static/captura_de_datos_en_campo/13_reconocedor_campo_2.gif" title="Asignar predios Coord.Campo_4" data-title="Asignar predios Coord.Campo_4"><img src="_static/captura_de_datos_en_campo/13_reconocedor_campo_2.gif" class="align-center" width="800px" alt="Asignar predios Coord.Campo_4"/></a>

<a class="" data-lightbox="Asignar predios Coord.Campo_4" href="_static/captura_de_datos_en_campo/14_reconocedor_campo_3.gif" title="Asignar predios Coord.Campo_4" data-title="Asignar predios Coord.Campo_4"><img src="_static/captura_de_datos_en_campo/14_reconocedor_campo_3.gif" class="align-center" width="800px" alt="Asignar predios Coord.Campo_4"/></a>

## Sincronizar datos de campo

#### Coordinador de Campo

<a class="" data-lightbox="Asignar predios Coord.Campo_4" href="_static/captura_de_datos_en_campo/15_Coor_campo_sincronizacion_1.gif" title="Asignar predios Coord.Campo_4" data-title="Asignar predios Coord.Campo_4"><img src="_static/captura_de_datos_en_campo/15_Coor_campo_sincronizacion_1.gif" class="align-center" width="800px" alt="Asignar predios Coord.Campo_4"/></a>

<a class="" data-lightbox="Asignar predios Coord.Campo_4" href="_static/captura_de_datos_en_campo/16_Coor_campo_sincronizacion_2.gif" title="Asignar predios Coord.Campo_4" data-title="Asignar predios Coord.Campo_4"><img src="_static/captura_de_datos_en_campo/16_Coor_campo_sincronizacion_2.gif" class="align-center" width="800px" alt="Asignar predios Coord.Campo_4"/></a>

<a class="" data-lightbox="Asignar predios Coord.Campo_4" href="_static/captura_de_datos_en_campo/17_Coor_campo_sincronizacion_34.gif" title="Asignar predios Coord.Campo_4" data-title="Asignar predios Coord.Campo_4"><img src="_static/captura_de_datos_en_campo/17_Coor_campo_sincronizacion_34.gif" class="align-center" width="800px" alt="Asignar predios Coord.Campo_4"/></a>

#### Coordinador General

<a class="" data-lightbox="Asignar predios Coord.Campo_4" href="_static/captura_de_datos_en_campo/18_Coor_general_sincronizacion_34.gif" title="Asignar predios Coord.Campo_4" data-title="Asignar predios Coord.Campo_4"><img src="_static/captura_de_datos_en_campo/18_Coor_general_sincronizacion_34.gif" class="align-center" width="800px" alt="Asignar predios Coord.Campo_4"/></a>

***
ETL (Modelo Captura en Campo - Modelo de Aplicación Lev. Catastral)