---
layout: default
title: Registro de cambios de Solaredge
lang: es_ES
pluginId: onduleursolaredge
---

# Registro de cambios

## 2026-08-19

- Mejora de la fiabilidad en la recuperación de datos desde la API de SolarEdge
- Mejor gestión de los errores de comunicación y de las respuestas no válidas de la API

## 2026-06-12

- Implantación de un nuevo flujo de trabajo para la documentación

## 2026-05-12

- Actualización de dependencias
- Se requiere Jeedom v4.5

## 2024-12-25

- Actualización de dependencias
- Actualización del icono

## 2024-10-17

- Actualización de dependencias
- Se requiere Jeedom v4.4

## 2024-09-16

- Traducción del complemento al inglés, alemán, español, italiano y portugués

## 2024-03-18

- Mejor validación de las fechas y los horarios de salida y puesta del sol

## 2023-10-02

- Se ha corregido un problema con el comando *Fecha de actualización*

## 2022-10-17

- Se ha añadido el porcentaje de carga de la batería en el equipo «Potencia y flujo»
- Cambio en el horario de funcionamiento predeterminado (si no se había realizado ninguna configuración): anteriormente era de las 4:00 a las 22:00 y ahora es de las 0:00 a las 23:59. Puedes adaptar la configuración del complemento si es necesario.
- Inclusión de los distintos inversores en la visualización de los detalles de la instalación
- Actualización de la presentación de los comandos para Jeedom v4.3

## 2021-10-04

- Nueva presentación de la lista de objetos
- Mejora del diseño de la configuración de los equipos y los controles

## 2020-08-24

- Revisión del diseño para la versión 4

## 2020-03-30

- Traslado de la documentación

## 2020-03-27

- Se ha añadido una comprobación de los valores configurados erróneos para evitar errores
- Pequeñas mejoras.

## 2019-09-10

- Compatibilidad con Jeedom V4 y PHP 7.3

## 2019-03-19

- Maquetación de la página de equipamiento según la norma 3.3
- Se añade una opción para el cron: gestión dinámica (como antes), valor fijo o desactivado.

## 2019-03-15

- Cambio a un cron específico para el plugin
- Cálculo dinámico de la frecuencia del cron en función de las horas de salida y puesta del sol para maximizar el número de ejecuciones sin superar el límite permitido de 300 solicitudes al día
- Se ha añadido un segundo intento en caso de error técnico con la API de Solaredge

## 2019-02-25

- Se ha añadido una opción para elegir el tipo de información que se desea recuperar
- Incorporación de unidades en los pedidos
- Visualización de la información sobre el inversor en la página de equipos

## 2018-11-06

- Se ha añadido una opción para consultar los datos de energía: consumo, autoconsumo, compra y venta a la red (si está disponible en tu instalación).
- Cambio en el diseño de la página de pedidos

## 2018-09-30

- Se han añadido las traducciones en_US

## 2018-09-24

- Primera versión

# Documentación

[Ver la documentación]({{site.baseurl}}/{{page.pluginId}}/{{page.lang}})
