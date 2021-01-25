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

