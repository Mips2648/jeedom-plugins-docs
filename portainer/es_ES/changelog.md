---
layout: default
title: Registro de cambios de Portainer
lang: es_ES
pluginId: portainer
---

# Beta

- Actualización de dependencias

# Estable

## 2025-04-18

- Correcciones en el panel: algunas traducciones no se habían aplicado
- Actualización de dependencias

## 2025-02-22

- Actualización de dependencias
- Actualización del icono

## 2024-09-16

- Optimizaciones
- Actualización de dependencias
- Traducción del complemento al inglés, alemán, español, italiano y portugués
- Se han añadido comandos para los equipos de tipo contenedor: **Estado de salud**, **En ejecución**, **Pausado**, **Reiniciando**, **Muerto**, **OOMKilled** [(Ver documentación)]({{site.baseurl}}/{{page.pluginId}}/{{page.lang}})
- Se requiere como mínimo la versión 11 de Debian

## 2023-05-20

- Se ha añadido información sobre la última versión disponible de Portainer.io en la página de estado (requiere Portainer.io >= 2.17) + mensaje en el centro de mensajes
- Mejoras en los campos de contraseña
- Compatibilidad con Jeedom v4.4
- Se han añadido enlaces a la documentación en fase beta

## 2022-10-17

- Actualización de la presentación de los controles para Jeedom v4.3

## 2022-07-15

- Actualización de bibliotecas internas

## 2022-02-09

- Incorporación de la visualización en formato de tabla de la lista de equipos para Jeedom 4.2

## 2021-08-21

- Se ha añadido un comando _Estado_ a los equipos de los tipos **agente** y **docker**
- Se ha corregido un problema de sincronización cuando un punto final está desconectado

## 2021-05-19

- Se ha añadido compatibilidad con instancias de Portainer del tipo **agente**
- Se han añadido comandos de información que muestran el número de contenedores, volúmenes, imágenes, servicios y pilas en los equipos de tipo **agent** y **docker**

## 2021-02-08

- Incorporación del comando _URL pública_ en el equipo Docker
- Se ha añadido la visualización de la imagen utilizada para el contenedor en la página de configuración del equipo
- Se ha corregido un error por el que los contenedores aparecían duplicados en el panel cuando se utilizaban varios Docker (es necesario forzar una sincronización manual para que la página de estado muestre la información correcta tras actualizar el complemento).

## 2021-01-06

- Nueva presentación de la lista de equipos por categoría: Docker y contenedores

## 2020-12-02

- Nueva presentación de la lista de objetos
- Mejora del diseño de la configuración del equipo y de los controles

## 2020-09-06

- Se ha solucionado el problema por el que el comando «refrescar» no funcionaba en equipos de tipo _Docker_
- Inclusión del número de versión de Portainer en la página de estado
- Se ha añadido una opción en la configuración del complemento para elegir el modo de sincronización automática

## 2020-08-22

- Nueva página de estado que muestra un resumen de todos los contenedores y permite realizar todas las acciones básicas (similar a la página «Containers» de portainer.io)
- Un nuevo panel (que se debe activar en la configuración del complemento) incluye la misma información y las mismas acciones que la página de estado.
- Se ha añadido una opción de configuración al complemento que permite definir el objeto principal por defecto que se utilizará al crear un nuevo contenedor; esto te evitará tener que hacerlo manualmente cada vez.
- Durante una sincronización, el complemento activará y desactivará automáticamente los dispositivos Jeedom correspondientes a los contenedores, dependiendo de si existen o no en Docker, con el fin de facilitar la gestión de tus contenedores y aportar mayor claridad.
- Cuando se elimina y se vuelve a crear un contenedor en Docker, el complemento ya no creará un nuevo dispositivo Jeedom, sino que actualizará el dispositivo existente si lo encuentra (el nuevo contenedor debe tener el mismo nombre y estar en la misma instancia de Docker que el anterior); esto también reducirá considerablemente el mantenimiento que hay que realizar en Jeedom.
- Incorporación de comandos de información de red en los contenedores (IP, MAC, puerta de enlace)
- Se ha añadido la lista de puertos publicados por el contenedor con un enlace al mismo (visible en la configuración del equipo y en la nueva página de resumen)
- Al eliminar un equipo de Jeedom, los registros correspondientes a los contenedores también se eliminarán de tu Jeedom para facilitar el mantenimiento.
- Los equipos de tipo «Docker» tendrán un icono diferente al de los equipos de tipo «Container» para mejorar su visibilidad.

## 2020-03-30

- Traslado de la documentación

## 2020-03-19

Se ha añadido una opción para recuperar la salida de stdout y stderr durante la sincronización del equipo. Para activar la opción, es necesario volver a la página del equipo y guardar la configuración.

## 2020-03-10

Primera versión

# Documentación

[Ver la documentación]({{site.baseurl}}/{{page.pluginId}}/{{page.lang}})
