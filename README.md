# Documentación Asistente LADM_COL

Documentación del plugin Asistente de LADM_COL para QGIS

## Instalar Requerimientos

Para instalar los requerimientos de python ejecute el siguiente comando:

```bash
sudo pip install -r requirements.txt
```

los requerimientos de QT para la documentación en este formato bajo ubuntu son:

```bash
apt-get install qttools5-dev-tools qt5-default
```

Para otros sistemas operativos es necesario instalar software equivalentes


## Generar Documentación

Para generar la documentación ejecute el siguiente comando:

```bash
sh generate.sh
```

## Ver documentación

Para ver la documentación puede usar assistant si esta instalado ejecutando el siguiente comando:

```bash
assistant -collectionFile build/en/qthelp/LADM_COLAssistant.qhc
```

```bash
assistant -collectionFile build/es/qthelp/LADM_COLAssistant.qhc
```
