---
layout: default
title: Registro de cambios de myVaillant
lang: es_ES
pluginId: vaillantmultimatic
---

# Registro de cambios

## 2026-08-03

- Actualización de dependencias

## 2026-06-12

- Implantación de un nuevo flujo de trabajo para la documentación

## 2026-05-12

- Compatibilidad con imágenes personalizadas de los dispositivos
- Actualización de dependencias
- Se requiere Jeedom v4.5

## 2026-01-01

- Tiempo de actualización predeterminado de 15 minutos (modificable en la configuración)
- Actualización de dependencias

## 2025-11-08

- Se ha añadido un comando de información **Presión del agua** en los sistemas que disponen de esta información. Si lo necesitas, debes crear los comandos que falten en el equipo *Sistema*.
- Se ha añadido la gestión de *circuitos*. Se creará un nuevo dispositivo por cada circuito existente en tu instalación, que, por el momento, mostrará dos datos de control: **Estado** y **Temperatura**.
- Actualización de dependencias

## 2025-06-27

- Adaptación de los controles en función del modelo del controlador (VRC700 u otros); si es necesario, deberá crear los controles que falten mediante el botón correspondiente en la página del equipo
- Actualización de dependencias

## 2025-02-24

- Actualización de dependencias

## 2024-12-25

- Actualización de dependencias
- Actualización del icono

## 2024-10-11

- Actualización de dependencias
- Se requiere Jeedom v4.4

## 2024-09-16

- Actualización de dependencias
- Traducción del complemento al inglés, alemán, español, italiano y portugués
- Se requiere como mínimo la versión Debian 11

## 2024-06-11

- Modificación interna del demonio
- Actualización de dependencias

## 2024-04-15

- Corrección de la migración de zonas si existen varias zonas

## 2024-04-08

- Se ha añadido la compatibilidad con myVaillant y se ha eliminado la compatibilidad con vaillantMULTIMATIC: hay muchos cambios, así que no olvides volver a configurar el complemento. La mayoría de tus dispositivos se migrarán, aunque puede haber algunos casos en los que aún no esté gestionado. Consulta también [este tema en la comunidad](https://community.jeedom.com/t/nouvelle-app-myvaillant/123431)
- Optimización del tamaño de las copias de seguridad
- Añadir iconos de las habitaciones
- Añadir información sobre el controlador

> **Atención**
>
> Esta versión requiere reinstalar las dependencias, aunque ya estuvieran correctas.
> La instalación de los paquetes adicionales puede tardar un tiempo dependiendo de la potencia de tu equipo (hasta 1 h) y de tu versión de Debian (muy rápida en Debian 12).

## 2023-08-21

- Modificación interna de la gestión de dependencias

## 2023-06-06

- Actualización de bibliotecas internas

## 2023-05-20

- Mejoras en los campos de contraseña
- Compatibilidad con Jeedom v4.4
- Se han añadido enlaces a la documentación en fase beta

## 2023-01-25

- Actualización de bibliotecas internas

## 2022-11-21

- Solucionar el problema de conexión del demonio a la nube de Vaillant

## 2022-10-17

- Actualización de la presentación de los comandos para Jeedom v4.3

## 2022-08-17

- Actualización de bibliotecas internas

## 2022-03-18

- Incorporación de la visualización en formato de tabla de la lista de equipos para Jeedom 4.2
- Corregir la instalación de las dependencias

## 2022-01-25

- Se han añadido los comandos de acción e información **Velocidad diurna** y **Velocidad nocturna** a los equipos de tipo *Ventilación*
- Se ha añadido un control **Duración del modo forzado** en los dispositivos de tipo *Habitación*, que permite definir, por habitación, la duración del modo forzado la próxima vez que se active dicho modo.

## 2021-12-11

- Simplificación de la gestión de la temperatura de consigna en las estancias: el complemento ajustará automáticamente la temperatura de consigna forzada o manual en función del modo actual de la estancia
- Mejora en la respuesta de estado al ejecutar un comando: solo se actualiza el equipo afectado, lo que permite una respuesta más rápida
- Se ha añadido el comando de acción **Actualizar** en los dispositivos compatibles con él

## 2021-11-04

- Corrección de los tipos genéricos
- Recopilación de información sobre el estado de la batería en dispositivos de tipo *Válvula* y *Termostato* (véase la documentación)

## 2021-10-17

- Corregir el mensaje de error que aparece en el registro cuando falla la conexión
- Se ha eliminado el comando *Modo vacaciones activado*, que no debería haber existido (no realizaba ninguna acción). Para activar el modo vacaciones, hay que utilizar los comandos *Definir fechas de vacaciones* y *Definir valor de consigna para vacaciones*.
- Mejora de la verificación de dependencias

## 2021-09-26

- Se ha añadido la posibilidad de configurar la frecuencia de actualización

## 2021-09-20

Primera versión

# Documentación

[Ver la documentación]({{site.baseurl}}/{{page.pluginId}}/{{page.lang}})
