# Introducción

Este tutorial generó con el fin de brindar a los usuarios , una guía que permita hacer uso de las funcionalidades del *plugin* “Asistente LADM-COL”, que incluye herramientas para  para apoyar los procesos captura, revisión, validación y consolidación de datos resultado del barrido predial masivo "Levantamiento Catastral" en el marco de la política pública de catastro multipropósito en Colombia.

En esta tutorial se muestra de forma práctica el uso funcionalidades del asistente LADM-COL utilizando un conjunto de datos de prueba en las siguientes secciones:

- [+ Crear Estructura LADM-COL](crear_estructura_ladm_col.html)

- [+ Captura y Estructuración de Datos](crear_estructura_ladm_col.html)

- [+ Uso de Reglas de Calidad](reglas_de_calidad.html)

- [+ Consulta de Información](consulta_de_informacion.html)

- [+ Exportar e Importar Datos](exportar_importar_datos.html)

- [+ Gestión de Insumos](gestion_de_insumos.html)

## ¿Que se necesita para empezar?

Para desarrollar la guía se necesitan los siguientes elementos:

**Software**:

Versión del software SIG **QGIS 3.x** o superior instalado en el equipo de trabajo. (se puede descargar de forma libre en el siguiente [link](https://qgis.org/en/site/forusers/download.html)).

Asistente LADM-COL que se descarga y activa dentro del software QGIS en el módulo “Complementos” menú “Administrar e instalar complementos” del menú desplegable del programa en la barra superior, se busca en la caja superior y se activa dando clic en la caja de selección.

**Datos**:

*Repositorio de datos*:

 Se debe contar con una base de datos configurada en el software PosgreSQL 9.5 o superior en donde se podrá crear esquemas en una base de datos de trabajo con la estructura del modelo LADM_COL, lo cual se podrá realizar directamente desde el menú de administración de datos del Asistente LADM_COL lo cual se explica en la sección [Administración de datos](administracion_de_datos.html)

 *Conjunto de datos de ejemplo*: 

En la siguiente [URL](http://nas-swissphoto.quickconnect.to/d/f/620702901595062139) se puede descargar un archivo comprimido en formato zip con el nombre “Datos”

Este archivo contiene lo siguiente: 

**Insumos_cobol.zip:** Datos en formato cobol utilizados para importación de insumos en el asistente LADM-COL.

**Soportes:** Soportes para las fuentes administrativas. Esta carpeta contiene las escrituras públicas que soportan los derechos de dominio: 1. escritura_01.jpg, 2. escritura_02.jpg y 3. escritura_03.png.

**taller_asistente.gpkg:** Archivo de base de datos en formato GeoPackage que tiene la información entregada por un topógrafo al realizar un barrido predial masivo.

**topo_punto_control.csv:** Archivo CSV que tiene la información asociada a los puntos control utilizados por el topógrafo para realizar su levantamiento predial masivo.