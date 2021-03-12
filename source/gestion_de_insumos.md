# Gestión de insumos

<a href="_static/sistema_de_transicion/transitional_system.gif" target="_blank"><img src="_static/sistema_de_transicion/transitional_system.gif" alt="Sistema de transición" title="Sistema de transición" style="height:500px;width:800px" /></a>

## Ejecutar ETL de Insumos

<div class="seealso">
<p class="admonition-title">TIP</p>
<p>Antes de ejecutar la ETL de COBOL o SNC al submodelo de insumos, <a href="https://swisstierrascolombia.github.io/Asistente-LADM-COL/administracion_de_datos.html#crear-estructura-ladm-col">crea la estructura de base de datos</a> desde Administración de datos --> Crear estructura</p>
</div>

<div class="note">
<p class="admonition-title">IMPORTANTE</p>
<p>El rol elegido definirá el conjunto de módulos, barra de herramientas,  modelos e incluso, reglas de calidad, que tendrás a disposición desde la interfaz del Asistente LADM-COL. La ETL de COBOL o SNC de insumos puede ser ejecutado desde el perfil de <b>Proveedor de Insumos</b> o <b>Avanzado</b>.</p>
</div>

Esta funcionalidad cuenta con una interfaz desarrollada para guiar al usuario dependiendo del sistema de información catastral de origen de los datos. Estos corresponden a SNC (Sistema Nacional Catastral) o COBOL (**CO**mmon **B**usiness-**O**riented **L**anguage)

## ETL SNC al Submodelo de insumos

<div class="warning">
<p class="admonition-title">ADVERTENCIA</p>
<p>Antes de ejecutar el ETL de SNC, verifica la configuración de la conexión a la base de datos destino para evitar sobreescribir datos a una estructura incorrecta.</p>
</div>

Para Ejecutar la ETL SNC es necesario que del sistema catastral SNC se extraigan los siguientes archivos para la zona de trabajo de su interés: 

<table border="0" style="width:100%">
 <tr>
    <th colspan="3"><b>Alfanuméricos</b></th>
 </tr>
 <tr>
    <td>
        <ul>
            <li>predio_bloqueo.csv</li>
            <li>persona.csv</li>
            <li>predio.csv</li>
        </ul>
    </td>
    <td>
        <ul>
            <li>persona_predio.csv</li>
            <li>direccion.csv</li>
            <li>unidad_construccion.csv</li>
        </ul>
    </td>
    <td>
        <ul>
            <li>unidad_construccion_comp.csv</li>
            <li>ficha_matriz.csv</li>
            <li>ficha_matriz_predio.csv</li>
            <li>ficha_matriz_torre.csv</li>
        </ul>
    </td>
 </tr>
</table>

<table border="0" style="width:100%">
 <tr>
    <th colspan="1"><b>Geográficos</b></th>
 </tr>
 <tr>
    <td>
        <ul>
               <li>GDB (Geodatabase)</li>
        </ul>
    </td>
 </tr>
</table>

***** Archivo Obligatorio para ejecutar el ETL

## ETL COBOL a submodelo de insumos

<div class="warning">
<p class="admonition-title">ADVERTENCIA</p>
<p>Antes de ejecutar la ETL de COBOL, verifica la configuración de la conexión a la base de datos destino para evitar sobreescribir datos a una estructura incorrecta.</p>
</div>

Para Ejecutar la ETL COBOL es necesario que del sistema catastral COBOL se extraigan los siguiente archivos para la zona de trabajo de su interés:

<table border="0" style="width:100%">
 <tr>
    <th colspan="2"><b>Alfanuméricos</b></th>
 </tr>
 <tr>
    <td>
        <ul>
            <li>predio_bloqueo.csv</li>
            <li>persona.csv</li>
        </ul>
    </td>
    <td>
        <ul>
            <li>persona_predio.csv</li>
            <li>direccion.csv</li>
        </ul>
    </td>
 </tr>
</table>

<table border="0" style="width:100%">
 <tr>
    <th colspan="1"><b>Geográficos</b></th>
 </tr>
 <tr>
    <td>
        <ul>
               <li>GDB (Geodatabase)</li>
        </ul>
    </td>
 </tr>
</table>

***** Archivo Obligatorio para ejecutar el ETL

## Reporte de Omisiones y Comisiones

Esta funcionalidad facilita la generación del reporte de omisiones y comisiones para los datos de **COBOL** y **SNC**, este reporte ***(Averiguar para que es el reporte de omisiones y comisiones)** , para esto es necesario contar con la información asociada al predio que se encuentra en el archivo **uni.lis** para el caso de **COBOL**, y para el caso **SNC** se encuentra en el archivo**predio.csv**.La información geográfica para ambos casos se encuentra en el archivo con formato **GDB**. Despues de ejecutar el reporte, las capas geográficas resultantes se almacenarán en un archivo con formato **Geopackage (GPKG)** y la estadistica de los datos se almacenará en un archivo en formato **Excel (XLS)** a los cuales se les podrá asígnar un nombre y quedarán en la carpeta seleccionada en la interfaz en el momento de ejecutar el reporte.

## Reporte Omisiones y Comisiones - COBOL



## Reporte Omisiones y Comisiones - SNC


