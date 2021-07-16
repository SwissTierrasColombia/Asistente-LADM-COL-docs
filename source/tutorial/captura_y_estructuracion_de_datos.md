# Captura y Estructuración de Datos

## Preprocesamiento de insumos

## Consulta de dominios

## Paquete de topografía y representación

### Puntos de lindero

### Puntos de levantamiento

### Puntos de Control

### Linderos

### Construcción De Linderos

### Relación Entre Puntos y Linderos

## Unidad Espacial

### Creación De Terrenos y Sus Relaciones

#### Creación De Relación Entre Los Linderos y Los Terrenos

### Creación De Construcciones

### Creación De Unidades De Construcción

## Unidad Básica Administrativa

### Crear Predio

## Interesados

### Crear Agrupación De Interesados

## Fuentes

Para continuar con el desarrollo del tutorial, es necesario tener en cuenta los datos de prueba registrados a continuación:

### Tabla fuentes administrativas 

| Variables                       | Fuente 1                                                 | Fuente 2                                                 | Fuente 3                                                 |
| ------------------------------- | -------------------------------------------------------- | -------------------------------------------------------- | -------------------------------------------------------- |
| **Tipo**                        | Escritura pública                                        | Escritura pública                                        | Escritura pública                                        |
| **Estado <br />disponibilidad** | Disponible                                               | Disponible                                               | Disponible                                               |
| **Nombre<br /> archivo**        | escritura_01.jpg                                         | escritura_02.jpg                                         | escritura_03.jpg                                         |
| **Observación**                 | Soporte Predio<br />251750000000000<br />000000500000001 | Soporte Predio<br />251750000000000<br />000000500000002 | Soporte Predio<br />251750000000000<br />000000500000003 |

### Paso 1: Crear fuente administrativa

En el botón ``Crear objetos de Levantamiento`` selecciona la opción **Crear Fuente Administrativa**.

<a class="" data-lightbox="Paso 1: Crear Fuente administrativa" href="../_static/tutorial/captura_y_estructura_de_datos/cap8fuentes1.gif" title="Paso 1: Crear Fuente administrativa" data-title="Paso 1: Crear Fuente administrativa"><img src="../_static/tutorial/captura_y_estructura_de_datos/cap8fuentes1.gif" class="align-center" width="800px" alt="Paso 1: Crear Fuente administrativa"/></a>

### Paso 2: Selección método de creación de la fuente administrativa

Se desplegará un cuadro de diálogo con dos opciones para crear una fuente administrativa: *Ingresando datos manualmente en un formulario* ó *Desde otra capa de QGIS*. Para este caso, selecciona la primera opción y presiona el botón ``Crear``.

<a class="" data-lightbox="Paso 2: Selección método de creación de la Fuente administrativa" href="../_static/tutorial/captura_y_estructura_de_datos/cap8fuentes2.gif" title="Paso 2: Selección método de creación de la Fuente administrativa" data-title="Paso 2: Selección método de creación de la Fuente administrativa"><img src="../_static/tutorial/captura_y_estructura_de_datos/cap8fuentes2.gif" class="align-center" width="800px" alt="Paso 2: Selección método de creación de la Fuente administrativa"/></a>

### Paso 3: Diligenciamiento de formulario fuente administrativa

Se despliega un formulario que debe ser diligenciado con la información correspondiente de acuerdo con los datos de referencia proporcionados en la [tabla](#tabla-fuentes-administrativas) que se encuentra al inicio de esta sección.

<a class="" data-lightbox="Paso 3: Diligenciamiento de formulario Fuente administrativa" href="../_static/tutorial/captura_y_estructura_de_datos/cap8fuentes3.gif" title="Paso 3: Diligenciamiento de formulario Fuente administrativa" data-title="Paso 3: Diligenciamiento de formulario Fuente administrativa"><img src="../_static/tutorial/captura_y_estructura_de_datos/cap8fuentes3.gif" class="align-center" width="800px" alt="Paso 3: Diligenciamiento de formulario Fuente administrativa"/></a>

### Paso 4: Adjuntar archivos en Fuente administrativa

Debes dirigirte a la pestaña *extarchivo* y agregar el archivo correspondiente a cada fuente administrativa.

<div class="seealso">
<p class="admonition-title">TIP</p>
<p>Los archivos los encuentras en la carpeta compartida al inicio del tutorial <i>Datos -> Soportes</i>.</p>
</div>


<a class="" data-lightbox="Paso 4: Adjuntar archivos en Fuente administrativa" href="../_static/tutorial/captura_y_estructura_de_datos/cap8fuentes4.gif" title="Paso 4: Adjuntar archivos en Fuente administrativa" data-title="Paso 4: Adjuntar archivos en Fuente administrativa"><img src="../_static/tutorial/captura_y_estructura_de_datos/cap8fuentes4.gif" class="align-center" width="800px" alt="Paso 4: Adjuntar archivos en Fuente administrativa"/></a>

Una vez que se ha cargado el archivo, debes dar clic en ``Aceptar``.

### Paso 5: Resultado formulario Fuente administrativa

Repite este proceso para los tres (3) archivos relacionados a fuentes administrativas. 

<a class="" data-lightbox="Paso 5: Resultado formulario Fuente administrativa" href="../_static/tutorial/captura_y_estructura_de_datos/cap8fuentes5.gif" title="Paso 5: Resultado formulario Fuente administrativa" data-title="Paso 5: Resultado formulario Fuente administrativa"><img src="../_static/tutorial/captura_y_estructura_de_datos/cap8fuentes5.gif" class="align-center" width="800px" alt="Paso 5: Resultado formulario Fuente administrativa"/></a>

## RRR

Ya que se han creado los interesados y las fuentes administrativas, es necesario crear las relaciones entre estos, para esto es necesario crear los **Derechos** correspondientes considerando:

<a class="" data-lightbox="Información RRR" href="../_static/tutorial/captura_y_estructura_de_datos/cap9derechos1.png" title="Información RRR" data-title="Información RRR"><img src="../_static/tutorial/captura_y_estructura_de_datos/cap9derechos1.png" class="align-center" width="800px" alt="Información RRR"/></a>

### Paso 1: Seleccionar la fuente administrativa. 

Debes dirigirte a la tabla de atributos de la fuente administrativa, y seleccionar la fila correspondiente a la información de la fuente administrativa que vas a asignar:

<a class="" data-lightbox="Paso 1: Seleccionar la fuente administrativa." href="../_static/tutorial/captura_y_estructura_de_datos/cap9derechos2.gif" title="Paso 1: Seleccionar la fuente administrativa." data-title="Paso 1: Seleccionar la fuente administrativa."><img src="../_static/tutorial/captura_y_estructura_de_datos/cap9derechos2.gif" class="align-center" width="800px" alt="Paso 1: Seleccionar la fuente administrativa."/></a>

### Paso 2: Crear Derecho

En el botón ``Crear objetos de Levantamiento`` selecciona la opción **Crear Derecho**.

<a class="" data-lightbox="Paso 2: Crear Derecho" href="../_static/tutorial/captura_y_estructura_de_datos/cap9derechos3.gif" title="Paso 2: Crear Derecho" data-title="Paso 2: Crear Derecho"><img src="../_static/tutorial/captura_y_estructura_de_datos/cap9derechos3.gif" class="align-center" width="800px" alt="Paso 2: Crear Derecho"/></a>

### Paso 3: Selección método de creación del Derecho

Se desplegará un cuadro de diálogo con dos opciones para crear predios: *Ingresando datos manualmente en un formulario* o *Desde otra capa de QGIS*. Para este caso, selecciona la primera opción y presiona el botón ``Siguiente``. En la ventana que se despliega, verifica que la fuente administrativa se encuentre seleccionada y posteriormente das clic en `Crear`. 

<a class="" data-lightbox="Paso 3: Selección método de creación del Derecho" href="../_static/tutorial/captura_y_estructura_de_datos/cap9derechos4.gif" title="Paso 3: Selección método de creación del Derecho" data-title="Paso 3: Selección método de creación del Derecho"><img src="../_static/tutorial/captura_y_estructura_de_datos/cap9derechos4.gif" class="align-center" width="800px" alt="Paso 3: Selección método de creación del Derecho"/></a>

### Paso 4: Diligenciamiento de formulario Derecho

Esta acción despliega un formulario que debe ser diligenciado con la información correspondiente de acuerdo con los datos de referencia proporcionados en la [imagen](#rrr) anterior.

<a class="" data-lightbox="Paso 4: Diligenciamiento de formulario Derecho" href="../_static/tutorial/captura_y_estructura_de_datos/cap9derechos5.gif" title="Paso 4: Diligenciamiento de formulario Derecho" data-title="Paso 4: Diligenciamiento de formulario Derecho"><img src="../_static/tutorial/captura_y_estructura_de_datos/cap9derechos5.gif" class="align-center" width="800px" alt="Paso 4: Diligenciamiento de formulario Derecho"/></a>

Repite este proceso para los tres (3) **Derechos** mencionados en [imagen](#rrr) y considerando lo descrito en [tabla](#tabla-fuentes-administrativas). 