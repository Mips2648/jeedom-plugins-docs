---
layout: default
title: Registro de cambios de VMC (Zehnder/Storkair)
lang: es_ES
pluginId: vmczehnder
---

# Registro de cambios

## 2026-06-12

- Implantación de un nuevo flujo de trabajo para la documentación

## 2026-05-12

- Actualización de dependencias
- Se requiere Jeedom v4.5

## 2025-04-18

- Se ha corregido un error en la reconfiguración del servicio que, en algunos casos, no funcionaba.
- Adaptación del ID de cliente MQTT al formato «zehnder2mqtt-[ID aleatorio]» para facilitar la monitorización

## 2024-12-25

- Actualización de dependencias
- Actualización del icono
- Se requiere Jeedom v4.4

## 2024-09-16

- Actualización de dependencias
- Traducción del complemento al inglés, alemán, español, italiano y portugués
- Se requiere como mínimo la versión Debian 11

## 2024-06-01

- Compatibilidad del servicio remoto con Debian 12
- Actualización de dependencias

## 2024-04-10

- Actualización de dependencias

## 2024-02-27

- Actualización de dependencias

## 2023-10-03

- Se ha corregido un posible problema que se producía al instalar las dependencias
- Se ha corregido un posible problema al conectarse al broker MQTT sin nombre de usuario ni contraseña

## 2023-09-30

- Reescritura completa del complemento, que ahora se basa en MQTT para las comunicaciones entre Jeedom y la Pi remota conectada al sistema de ventilación mecánica controlada (VMC).
- Actualización de la página con la lista de equipos
- Mejoras en los campos de contraseña
- Actualización de la gestión de dependencias v4.2
- Compatibilidad con Jeedom v4.4

> **Importante**
>
> El complemento y el demonio remoto requieren, como mínimo, Debian Buster para funcionar, lo que incluye, por tanto, la Pi remota conectada a la VMC.
>
> El complemento requiere una instalación operativa del complemento «MQTT Manager (MQTT2)»; si aún no lo tienes instalado en tu sistema, se instalará automáticamente con la actualización, pero deberás completar su configuración (consulta la documentación de *MQTT Manager*).

## 2022-10-17

- Actualización de la presentación de los comandos para Jeedom v4.3

## 2021-02-06

- Nueva presentación de la lista de objetos
- Mejora del diseño de la configuración de los equipos y los controles

## 2020-06-18

- corrección de un error en la instalación del demonio

## 2020-06-15

- Rediseño de las páginas de configuración con vistas a futuras actualizaciones, para permitir la modificación de las configuraciones del sistema de ventilación mecánica controlada (VMC).

## 2020-05-12

- Traslado de la documentación

## 2020-01-29

- Se ha añadido compatibilidad con la aplicación móvil Jeedom: ahora es posible controlar la velocidad del ventilador a través de la aplicación
- Mejora de la conexión con el demonio remoto
- corregir el mensaje de error en caso de error de conexión

## 2019-08-03

- Actualizaciones para preparar la compatibilidad con Jeedom V4 y PHP 7.3
- Utiliza el daemon del plugin en lugar del genérico para evitar efectos secundarios en otros plugins o con ellos

## 2019-03-19

- añadir un retraso configurado (visible en la pestaña «Configuración» de tu VMC)
- añadir contadores de consumo (disponibles como comandos de información y visibles en la pestaña de configuración de tu VMC)
- Añade una acción para restablecer el contador de filtros (en la pestaña «Configuración» de tu VMC)
- Añadir el comando filterError (binario) para indicar que hay que limpiar o sustituir los filtros
- adaptar el diseño de la pantalla del dispositivo para que coincida con el 3.3

## 2019-03-15

- Añadir gestión de dependencias locales
- Cambiar la sincronización con VMC a cada minuto en lugar de cada 5 minutos
- Mejorar la gestión de los demonios
- Añadir la obtención de registros remotos del demonio (cada 5 min.)
- Añadir actualización automática del daemon remoto tras la actualización del complemento
- Añadir la gestión de Socat en una Pi remota (para conectar el módulo CCEase/ComfoSense)

## 2019-03-02

- Reducir el uso de la CPU del demonio remoto

## 2019-02-25

Primera versión estable

# Documentación

[Ver la documentación]({{site.baseurl}}/{{page.pluginId}})
