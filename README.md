# Documentación del Asistente LADM-COL

Este es el repositorio de las fuentes de la documentación del plugin Asistente de LADM-COL para QGIS.

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