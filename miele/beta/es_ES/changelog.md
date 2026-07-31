---
layout: default
title: Registro de cambios de Miele
lang: es_ES
pluginId: miele
---

# Registro de cambios

## 2026-07-22

- Actualización de dependencias

## 2026-06-12

- Implantación de un nuevo flujo de trabajo para la documentación
- Actualización de dependencias

## 2026-04-12

> **Atención**
>
> Se ha llevado a cabo una importante revisión del complemento: toda la implementación de la API de Miele@Home se ha reescrito en Python y, ahora, el complemento utiliza un demonio en lugar de cron. Tras esta actualización, será necesario volver a establecer la conexión entre Jeedom y Miele@Home e iniciar sesión de nuevo a través de la página de configuración del complemento.

- Rediseño del complemento: implementación de un demonio de Python para conectarse a la API de Miele@Home y eliminación de las tareas programadas
- Información de estado en tiempo real (antes había que esperar a la tarea cron de cada minuto)
- Se ha añadido un comando de acción **Modo** en los dispositivos compatibles (nevera, congelador, vinoteca)
- Se ha añadido el comando de acción **Iniciar programa** en los aparatos compatibles (lavadora, secadora, lavavajillas, horno, cafetera, robot aspirador)
- Se ha añadido un comando binario **Estado** que indica si el dispositivo está encendido o apagado. Los comandos **On** y **Off** están vinculados a él.
- Se ha cambiado el nombre del antiguo comando **Estado** por **Descripción del estado** para evitar el conflicto con el nuevo comando y que se ajuste mejor a su contenido real
- Adaptación de los controles **Tiempo restante**, **Inicio en** y **Tiempo transcurrido**; consulte la documentación
- Actualización de dependencias
- Se requiere Python 3.11; se instalará automáticamente si es necesario.

## 2025-04-18

- Mejora para crear, siempre que sea posible, únicamente los comandos pertinentes para el tipo de equipo
- Actualización de dependencias
- Actualización del icono
- Se requiere Jeedom v4.4

## 2024-09-16

- Traducción del complemento al inglés, alemán, español, italiano y portugués
- Se requiere como mínimo la versión Debian 11

## 2024-06-11

- Incorporación de comandos adicionales de información sobre la temperatura para los equipos que cuentan con más de un sensor de temperatura (por ejemplo, los aparatos combinados)

## 2024-04-10

- Modificación interna de la gestión de dependencias para garantizar la compatibilidad con Jeedom v4.4
- Actualización de dependencias

## 2022-10-17

- Actualización de la presentación de los comandos para Jeedom v4.3

## 2022-03-10

- Se ha corregido un fallo que provocaba un bloqueo al sincronizar los datos de consumo tras un cambio en el comportamiento de la API de Miele@Home

## 2022-02-22

- Se han añadido los comandos **Consumo de agua** y **Consumo de energía** en los dispositivos compatibles con esta función (véase la documentación); si desea disponer de estos nuevos comandos, deberá crear los comandos que falten en el equipo.

## 2021-12-20

- Se han añadido los comandos **Definir nivel de ventilación** y **Definir colores** en los hosts
- Se han añadido los comandos **Encender** y **Apagar** en los dispositivos compatibles con esta función (debes crear los comandos que falten en el equipo si deseas disponer de estos nuevos comandos).
- Corrección debida a un cambio en el comportamiento de la API de Miele@Home

## 2021-11-13

- Actualización de la API de Miele@Home
- Se ha añadido un comando de información **Nombre del programa** que mostrará el nombre del programa que se está reproduciendo en los dispositivos compatibles con esta función (deberás crear los comandos que falten en el equipo si deseas disponer de este nuevo comando).
- Cambio del método de autenticación para mayor seguridad
- Nueva presentación de la lista de objetos en la configuración del equipo
- Mejora del diseño de la configuración de los equipos y los controles
- Incorporación de la visualización en formato de tabla de la lista de equipos para Jeedom 4.2

## 2020-08-24

- Revisión del diseño para la versión 4

## 2020-05-04

- Solución de un problema de dependencias en Jeedom Smart

## 2020-04-13

- Se ha añadido el estado de la autenticación en la configuración del complemento, así como la gestión de la conexión
- Incorporación del resumen de salud en la página de salud de Jeedom
- Se ha añadido una página específica sobre salud que ofrece una visión general de todos los equipos

## 2020-04-06

- Se han añadido los iconos predeterminados a algunos comandos de acción
- Visualización de las unidades en la pantalla de controles
- Se ha añadido la posibilidad de invertir los valores binarios

## 2020-04-03

Primera versión

# Documentación

[Ver la documentación]({{site.baseurl}}/{{page.pluginId}}/{{page.lang}})
