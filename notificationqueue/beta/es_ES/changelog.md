---
layout: default
title: Registro de cambios de NotificationQueue
lang: es_ES
pluginId: notificationqueue
---

# Registro de cambios

## 2026-08-03

- Actualización de dependencias

## 2026-06-12

- Implantación de un nuevo flujo de trabajo para la documentación

## 2026-05-12

- Actualización de dependencias
- Se requiere Jeedom v4.5

## 2025-06-27

- Actualización de dependencias

## 2024-12-25

- Actualización del icono

## 2024-09-16

- Traducción del complemento al inglés, alemán, español, italiano y portugués
- Se requiere como mínimo la versión Debian 11

## 2024-03-18

- Actualización de dependencias

## 2023-10-02

- Posibilidad de añadir múltiples condiciones de envío y, para cada una de ellas, diferentes comandos de notificación. Esto permite enviar tus notificaciones a diferentes «canales» en función de las condiciones que definas.

## 2023-08-21

- Nueva opción para elegir cómo detectar una notificación duplicada: mensaje idéntico (comportamiento por defecto y anterior a esta actualización), título idéntico o mensaje y título idénticos

## 2022-10-17

- A partir de ahora, los mensajes caducados se eliminarán de la cola a medida que vayan apareciendo (y no solo si se cumple una condición).
- Actualización de la presentación de los comandos para Jeedom v4.3

## 2020-11-29

- Se ha añadido la gestión de la generación de texto aleatorio (el mismo sistema que en las interacciones; véase la documentación).
- Se ha añadido la gestión de texto condicional mediante un operador ternario (véase la documentación)
- Nueva presentación de la lista de objetos
- Mejora del diseño de la configuración de los equipos y los controles

## 2020-09-14

- Se ha añadido una función de (no) repetición que sirve para eliminar una notificación duplicada que ya se haya enviado en los últimos x minutos.

## 2020-06-16

- Se ha añadido una opción para configurar un tiempo durante el cual la notificación se mantendrá en la cola aunque la condición sea verdadera
- Se ha añadido un comando para activar manualmente la comprobación de la condición y el envío de mensajes si esta es válida
- Se ha añadido un comando para forzar el envío inmediato de todos los mensajes sin tener en cuenta la condición (pero sí el plazo de envío)

## 2020-05-03

- Se ha añadido el botón «Duplicar» para un equipo

## 2020-03-30

- Traslado de la documentación

## 2020-03-07

- Se ha añadido la gestión de activaciones en función de condiciones: la cola se procesará en cuanto la condición sea cierta.

## 2020-02-22

- Se ha añadido una opción para calcular dinámicamente el tiempo de pausa en función de la longitud del mensaje (para las notificaciones TTS).
- Se ha añadido la posibilidad de configurar un plazo de caducidad para los mensajes por cola

## 2020-01-11

- Se ha añadido una opción para gestionar las notificaciones duplicadas

## 2020-01-04

- Se ha añadido un comando para vaciar la cola
- Se ha añadido un comando «info» para conocer el número de mensajes en la cola
- Se ha añadido la compatibilidad con «ask» para las notificaciones

## 2020-01-01

- Se ha añadido un intervalo configurable entre cada evaluación del estado de una cola (que se aplica entre cada mensaje de la cola).
- Se ha añadido la gestión de múltiples comandos de notificación (separad los comandos con && en la configuración)

## 2019-10-05

- Se ha reescrito el complemento para que haya una cola por dispositivo en lugar de una por comando. La migración de tus antiguos dispositivos se lleva a cabo durante la actualización, pero tendrás que corregir tus escenarios.
- Mejora del comportamiento de las notificaciones TTS: debes incluir el estado de TTS en la condición para que funcione correctamente.

## 2019-09-18

- Primera versión

# Documentación

[Ver la documentación]({{site.baseurl}}/{{page.pluginId}}/{{page.lang}})
