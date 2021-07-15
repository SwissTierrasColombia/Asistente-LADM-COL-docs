# Gestión de Insumos

## Ejecutar ETL de insumos COBOL

Esta sección tiene por objetivo ejecutar el *ETL de COBOL* para transferir los datos en la estructura de COBOL a la estructura del submodelo de insumos de levantamiento catastral.

<div class="seealso">
<p class="admonition-title">TIP</p>
<p>El acrónimo <b>ETL</b> corresponde a <i>"Extract, Transform, Load"</i> (Extraer, Transformar y Cargar).</p>
</div>

### Paso 1: Abrir interfaz del ETL de insumos

Para iniciar con el proceso debes dirigirte a la siguiente ruta **LADM-COL —> Gestión de Insumos –> Ejecutar ETL de Insumos**

<a class="" data-lightbox="Paso 1: Ejecutar ETL de Insumos" href="../_static/tutorial/gestion_de_insumos/cap13gestioninsumos1.gif" title="Paso 1: Ejecutar ETL de Insumos" data-title="Paso 1: Ejecutar ETL de Insumos"><img src="../_static/tutorial/gestion_de_insumos/cap13gestioninsumos1.gif" class="align-center" width="800px" alt="Paso 1: Ejecutar ETL de Insumos"/></a>

### Paso 2: Seleccionar ETL para datos de COBOL

Se despliega una interfaz en la cual debes seccionar la opción *ETL para datos de COBOL* y dar clic en el botón `Siguiente`.

<a class="" data-lightbox="Paso 2: Seleccionar ETL para datos de Cobol" href="../_static/tutorial/\gestion_de_insumos/cap13gestioninsumos2.gif" title="Paso 2: Seleccionar ETL para datos de Cobol" data-title="Paso 2: Seleccionar ETL para datos de Cobol"><img src="../_static/tutorial/gestion_de_insumos/cap13gestioninsumos2.gif" class="align-center" width="800px" alt="Paso 2: Seleccionar ETL para datos de Cobol"/></a>

### Paso 3: Seleccionar archivos para ejecutar el ETL para datos de COBOL

En la ventana que se despliega se habilitan las opciones para configurar los datos fuente (cargar los datos de COBOL). Debes cargar cada uno de los archivos de extensión **.lis** que se encuentra en los datos proporcionados al inicio del tutorial y el archivo de extensión **.gdb** en el último recuadro. Una vez que estén cargados los archivos se habilita el botón `Ejecutar ETL`.

<a class="" data-lightbox="Paso 3: Seleccionar Archivos para ejecutar el ETL para datos de Cobol" href="../_static/tutorial/gestion_de_insumos/cap13gestioninsumos3.gif" title="Paso 3: Seleccionar Archivos para ejecutar el ETL para datos de Cobol" data-title="Paso 3: Seleccionar Archivos para ejecutar el ETL para datos de Cobol"><img src="../_static/tutorial/gestion_de_insumos/cap13gestioninsumos3.gif" class="align-center" width="800px" alt="Paso 3: Seleccionar Archivos para ejecutar el ETL para datos de Cobol"/></a>

### Paso 4: Ejecutar ETL para datos de COBOL

Al dar clic en el botón `Ejecutar ETL` se despliega un cuadro de diálogo, en el que se te consulta si deseas o no continuar con la operación, debes dar clic en **Sí**, de esta manera se inicia la ejecución del ETL. Una vez que el ETL finalice debes dar clic en el botón `Siguiente`.

<a class="" data-lightbox="Paso 4: Ejecutar ETL para datos de Cobol" href="../_static/tutorial/gestion_de_insumos/cap13gestioninsumos4.gif" title="Paso 4: Ejecutar ETL para datos de Cobol" data-title="Paso 4: Ejecutar ETL para datos de Cobol"><img src="../_static/tutorial/gestion_de_insumos/cap13gestioninsumos4.gif" class="align-center" width="800px" alt="Paso 4: Ejecutar ETL para datos de Cobol"/></a>

### Paso 5: Resultados del ETL para datos de Cobol

Finalmente, se despliega un cuadro de diálogo donde se muestra el resultado de la ejecución del ETL, debes hacer clic en el botón `Finalizar` para terminar el proceso.

<a class="" data-lightbox="Paso 5: Resultados del ETL para datos de Cobol" href="../_static/tutorial/gestion_de_insumos/cap13gestioninsumos5.png" title="Paso 5: Resultados del ETL para datos de Cobol" data-title="Paso 5: Resultados del ETL para datos de Cobol"><img src="../_static/tutorial/gestion_de_insumos/cap13gestioninsumos5.png" class="align-center" width="400px" alt="Paso 5: Resultados del ETL para datos de Cobol"/></a>

## Identificación de novedades

### Paso 1: Abrir interfaz configurar identificación de novedades

Para iniciar con el proceso debes dirigirte a la siguiente ruta **LADM-COL —> Identificación de novedades —> Configurar identificación de novedades**

<a class="" data-lightbox="Paso 1: Abrir interfaz configurar identificación de novedades" href="../_static/tutorial/gestion_de_insumos/cap13gestioninsumos8.gif" title="Paso 1: Abrir interfaz configurar identificación de novedades" data-title="Paso 1: Abrir interfaz configurar identificación de novedades"><img src="../_static/tutorial/gestion_de_insumos/cap13gestioninsumos8.gif" class="align-center" width="800px" alt="Paso 1: Abrir interfaz configurar identificación de novedades"/></a>

### Paso 2: Configuracion de conexiones

Considerando que todo el proceso a lo largo de este tutorial se ha desarrollado en una única base de datos, se debe seleccionar la misma base de datos para **Barrido predial** y para **Insumos**. Tan pronto hayas seleccionado la misma base de datos, procedes a dar clic en `Aceptar`, lo que genera un mensaje de confirmación que informa que el proceso fue ejecutado con éxito. Por favor, **no cierres ese mensaje**.

<a class="" data-lightbox="Paso 2: Configuracion de conexiones" href="../_static/tutorial/gestion_de_insumos/cap13gestioninsumos9.gif" title="Paso 2: Configuracion de conexiones" data-title="Paso 2: Configuracion de conexiones"><img src="../_static/tutorial/gestion_de_insumos/cap13gestioninsumos9.gif" class="align-center" width="800px" alt="Paso 2: Configuracion de conexiones"/></a>

### Paso 3: Abrir consulta masiva

Para la identificación de novedades es necesario hacer clic en el botón `Consulta masiva` que se encuentra en el mensaje de confirmación que se desplegó luego de realizar el paso anterior.

<a class="" data-lightbox="Paso 3: Abrir consulta masiva" href="../_static/tutorial/gestion_de_insumos/cap13gestioninsumos11.gif" title="Paso 3: Abrir consulta masiva" data-title="Paso 3: Abrir consulta masiva"><img src="../_static/tutorial/gestion_de_insumos/cap13gestioninsumos11.gif" class="align-center" width="600px" alt="Paso 3: Abrir consulta masiva"/></a>

### Paso 4: Resultado consulta masiva

Se obtiene un resumen de novedades sobre el cual puedes dar clic en el botón `Ver predios` y seleccionar un predio para identificar el tipo de novedad asociada. 

<a class="" data-lightbox="Paso 4: Resultado consulta masiva" href="../_static/tutorial/gestion_de_insumos/cap13gestioninsumos12.gif" title="Paso 4: Resultado consulta masiva" data-title="Paso 4: Resultado consulta masiva"><img src="../_static/tutorial/gestion_de_insumos/cap13gestioninsumos12.gif" class="align-center" width="800px" alt="Paso 4: Resultado consulta masiva"/></a>
