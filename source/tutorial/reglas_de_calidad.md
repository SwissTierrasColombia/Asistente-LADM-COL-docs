# Reglas de Calidad

El asistente LADM-COL cuenta con un conjunto de reglas de calidad que permiten comprobar temática y topológicamente el estado de los datos. 

Estas reglas de calidad se clasifican en 4 grupos:

- Reglas de calidad para puntos.
- Reglas de calidad para lineas.
- Reglas de calidad para polígonos.
- Reglas de calidad de consistencia lógica.

## Paso 1: Menú de control de calidad.

Dirigete a la ruta: **LADM-COL –> Calidad.**

<a class="" data-lightbox="Paso 1: Menú de control de calidad." href="../_static/tutorial/reglas_de_calidad/cap10calidad1.png" title="Paso 1: Menú de control de calidad." data-title="Paso 1: Menú de control de calidad."><img src="../_static/tutorial/reglas_de_calidad/cap10calidad1.png" class="align-center" width="400px" alt="Paso 1: Menú de control de calidad."/></a>

## Paso 2: Ejecución de las reglas de calidad.

Se desplegará una interfaz de diálogo con cada una de las reglas de validación existentes, en esta ventana debes dar clic en el botón `Seleccionar todo` seguido del botón `Aceptar` para proceder a ejecutar todas las reglas de calidad.

<a class="" data-lightbox="Paso 2: Ejecución de las reglas de calidad." href="../_static/tutorial/reglas_de_calidad/cap10calidad2.gif" title="Paso 2: Ejecución de las reglas de calidad." data-title="Paso 2: Ejecución de las reglas de calidad."><img src="../_static/tutorial/reglas_de_calidad/cap10calidad2.gif" class="align-center" width="800px" alt="Paso 2: Ejecución de las reglas de calidad."/></a>

## Paso 3: Resultados del control de calidad.

Una vez terminan de ejecutarse las reglas de calidad, se habilita el botón `Mostrar resultados`. Mediante el cual es posible desplegar un informe en el que se identifican las reglas que se validaron resaltadas en color rojo (cuando se encuentran errores de validación) o verde (sin errores de validación). Adicionalmente, se generan capas temporales asociadas a los errores de validación obtenidos, éstas se encuentran en el panel de *Capas* en el grupo *Errores de validación*.

<div class="seealso">
<p class="admonition-title">TIP</p>
<p>Es posible exportar los resultados obtenidos de las reglas de validación. Para ello debes dar clic en el botón <i>Mostrar resultados -> Exportar PDF.</i></p>
</div>

<a class="" data-lightbox="Paso 3: Resultados del control de calidad." href="../_static/tutorial/reglas_de_calidad/cap10calidad3.gif" title="Paso 3: Resultados del control de calidad." data-title="Paso 3: Resultados del control de calidad."><img src="../_static/tutorial/reglas_de_calidad/cap10calidad3.gif" class="align-center" width="800px" alt="Paso 3: Resultados del control de calidad."/></a>

<div class="seealso">
<p class="admonition-title">TIP</p>
<p>También es posible exportar las capas geográficas y/o alfanuméricas con errores en una base de datos tipo GeoPackage. Para ello debes dar clic en el botón guardar, que se encuentra al lado del grupo <i>Errores de validación</i> dentro del panel de Capas.</p>
</div>

<a class="" data-lightbox="Paso 3: Resultados del control de calidad." href="../_static/tutorial/reglas_de_calidad/cap10calidad4.gif" title="Paso 3: Resultados del control de calidad." data-title="Paso 3: Resultados del control de calidad."><img src="../_static/tutorial/reglas_de_calidad/cap10calidad4.gif" class="align-center" width="800px" alt="Paso 3: Resultados del control de calidad."/></a>