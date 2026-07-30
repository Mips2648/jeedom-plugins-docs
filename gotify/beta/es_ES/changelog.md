---
layout: default
title: Registro de cambios de Gotify
lang: es_ES
pluginId: gotify
---

# Registro de cambios

## 2026-06-12

- Implantación de un nuevo flujo de trabajo para la documentación

## 2026-05-12

- Actualización de dependencias
- Se requiere Jeedom v4.5

## 2025-07-07

- Actualización de dependencias

## 2024-12-25

- Actualización de dependencias
- Actualización del icono

## 2024-10-17

- Actualización de dependencias
- Se requiere Jeedom v4.4

## 2024-09-16

- Se ha eliminado la opción para no verificar el certificado del servidor de Gotify; esta opción llevaba casi cuatro años inactiva.
- Se requiere como mínimo la versión Debian 11

## 2024-08-19

- Actualización de dependencias
- Traducción del complemento al inglés, alemán, español, italiano y portugués

## 2023-10-09

- Cifrado de los datos de configuración confidenciales (token) en la base de datos

## 2023-05-20

- Actualización de la página de configuración de los dispositivos
- Mejoras en los campos de contraseña
- Se han añadido enlaces a la documentación en fase beta

## 2022-10-17

- Actualización de la presentación de los comandos para Jeedom v4.3

## 2022-09-19

- El token de cliente se configura ahora en el dispositivo y ya no en la configuración general del complemento, para permitir crear dispositivos (aplicaciones en Gotify) y clientes bajo diferentes usuarios de Gotify => comprueba tu configuración.

## 2022-01-05

- Incorporación de la visualización en formato de tabla de la lista de equipos para Jeedom 4.2

## 2020-11-28

- Nueva presentación de la lista de objetos
- Revisión del diseño para la versión 4

## 2020-06-16

- Corrección: el mensaje puede quedar vacío si se ha adjuntado un archivo

## 2020-05-03

- Optimizaciones internas
- Se ha añadido el botón «Duplicar» para un equipo

## 2020-02-12

- Comprobación de si el mensaje está vacío antes de enviarlo a Gotify

## 2020-01-19

- Se ha añadido la posibilidad de crear varios comandos de envío por dispositivo
- Se ha añadido una opción de configuración en cada comando para elegir la prioridad del envío
- Se ha añadido una opción de configuración en cada comando para elegir el formato del mensaje
- Se ha añadido un comando para eliminar todos los mensajes del servidor (es necesario haber configurado un token de cliente)

## 2019-09-28

- Se ha añadido una opción para verificar el nombre de host del certificado de Gotify
- Se ha añadido compatibilidad con notificaciones con imágenes

## 2019-08-02

Primera versión

# Documentación

[Ver la documentación]({{site.baseurl}}/{{page.pluginId}}/{{page.lang}})
