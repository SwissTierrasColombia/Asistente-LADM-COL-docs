# Documentación del Asistente LADM-COL

Este es el repositorio de las fuentes de la documentación del plugin [Asistente de LADM-COL](https://github.com/SwissTierrasColombia/Asistente-LADM-COL) para QGIS.


## Documentación en línea

La documentación del Asistente LADM-COL puede ser consultada en internet desde:

https://swisstierrascolombia.github.io/Asistente-LADM-COL/

Nota: La versión en línea es siempre la versión más actualizada de la documentación.



## Instalar requerimientos

Para instalar los requerimientos de Python ejecuta el siguiente comando (desde la carpeta `source`):

```bash
sudo pip3 install -r requirements.txt
```



## Generar documentación

Para generar la documentación ejecuta el siguiente comando (desde la carpeta `source`):

```bash
sphinx-build -b html . _build --keep-going --no-color -w /tmp/sphinx-log
```



## ¿Cómo contribuir?

Si quieres contribuir a la documentación del Asistente LADM-COL:

1. Haz un *fork* de este repositorio.
2. Agrega tus contribuciones a las fuentes en formato MarkDown.
3. Crea un *Pull Request* describiendo los cambios que realizas.
4. Espera a que el equipo de desarrollo revise tu contribución y te de retroalimentación (sugerencias, preguntas, etc.).
5. Si es necesario, realiza las modificaciones sugeridas por el equipo de desarrollo en el paso 4.
6. ¡Eso es todo! Cuando tus cambios sean aprobados, ¡se verán reflejados en cuestión de minutos en la documentación en línea del Asistente LADM-COL!



## Guía de estilo

1. Los títulos de cada sección deben ir con una almohadilla (#), según el lenguaje MarkDown. Por ejemplo: "# Gestión de Insumos". Esto asegurará que el título aparezca en la tabla de contenido. 

2. Los subtítulos llevarán doble almohadilla (##), según MarkDown. Por ejemplo: "## Ejecutar ETL de insumos". 

3. En la redacción, es preferible usar forma impersonal o tutear. Se debe evitar hablar de usted o de nosotros. 

   Ejemplos: 

   ​    :heavy_check_mark: "Se debe dar clic en el botón `Aceptar`".

   ​    :heavy_check_mark: "Haz clic en el botón `Aceptar`".

   ​    :heavy_multiplication_x: "Debe dar clic en el botón `Aceptar`".

   ​    :heavy_multiplication_x: "Debemos dar clic en el botón `Aceptar`".

4. Para resaltar información o para dar información extra al lector, se usarán cajas de colores, así:

   a. **Tip:** Esta caja se usa en el caso de recomendar mejores prácticas en el uso de la herramienta.

      Ejemplo: 

      ![](source/_static/tip.png)

      Código HTML: 

      ```
      <div class="seealso">
      <p class="admonition-title">TIP</p>
      <p>Antes de ejecutar el ETL de SNC a submodelo de Insumos, crea la estructura de base de datos desde Administración de datos --> Crear estructura LADM-COL</p>
      </div>
      ```

   b. **Advertencia:** Esta caja se usa para advertir al usuario de posibles resultados inesperados.
   
      Ejemplo: 
   
      ![](source/_static/advertencia.png)
   
      Código HTML: 
   
      ```
      <div class="warning">
      <p class="admonition-title">ADVERTENCIA</p>
      <p>Antes de ejecutar el ETL del SNC, verifica la configuración de la conexión a la base de datos destino para evitar sobreescribir datos a una estructura incorrecta.</p>
      </div>
      ```

   c. **Importante:** Esta caja se usa para dar información clave de la funcionalidad actual. 

      Ejemplo: 

      ![](source/_static/importante.png)

      Código HTML:

      ```
      <div class="note">
      <p class="admonition-title">IMPORTANTE</p>
      <p>El rol elegido definirá el conjunto de módulos, barra de herramientas,  modelos e incluso, reglas de calidad, que tendrás a disposición desde la interfaz del Asistente LADM-COL.</p>
      </div>
      ```

   Se recomienda la utilización de las anteriores cajas de colores, solo para casos que lo requieran, con el fin de evitar sobrecargar al lector con mucha información.

5. Se recomienda utilizar imágenes (PNG) o animaciones (GIF) para ilustrar gráficamente el uso de una funcionalidad al lector.

   Se puede usar el siguiente código HTML para insertar una animación (GIF) que permita ser expandida a su resolución original en otra pestaña/ventana del navegador web:

   ```html
   <a href="_static/animacion.gif" target="_blank"><img src="_static/animacion.gif" alt="Cargar capas" title="Cargar capas" style="width:800px" /></a>
   ```

   Parámetros recomendados de grabación de la animación: 

   + Resolución: 1622 × 835 pixeles.
   + Cuadros por segundo (FPS): 10.
   + Duración: máximo 30 segundos (puede extenderse si la funcionalidad lo requiere o dividirlo en pasos más pequeños).

6. Los enlaces a documentos externos deberán abrirse en otra pestaña/ventana del navegador web, pero los enlaces a otras secciones del mismo documento deberán abrirse en la misma pestaña/ventana del navegador web.

7. En general, se debe intentar seguir el estilo de secciones ya documentadas. 
