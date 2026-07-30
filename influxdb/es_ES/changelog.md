---
layout: default
title: Registro de cambios de InfluxDB
lang: es_ES
pluginId: influxdb
---

# Registro de cambios

## 2026-06-12

- Implantación de un nuevo flujo de trabajo para la documentación
- Corrección de un error poco frecuente en Debian 12/PHP 8
- Actualización de dependencias

## 2025-08-11

- Modificación de la integración con InfluxDB v1.8+: la política de retención de datos por defecto ya no se especifica; InfluxDB la determinará en función de la configuración de la base de datos.
- Actualización de dependencias

## 2025-06-27

- Se ha añadido un parámetro avanzado: *Tiempo total para los reintentos*, que establece el tiempo total máximo para realizar los intentos de envío a Influx, independientemente del número de reintentos, los tiempos de espera y el intervalo entre cada intento.
- Compatibilidad con PHP 8.4

## 2024-12-25

- Actualización de dependencias
- Actualización del icono
- Se requiere Jeedom v4.4

## 2024-08-28

> **Atención**
>
> El complemento ya no es compatible con versiones de InfluxDB inferiores a 1.8; debes tener una versión de InfluxDB igual o superior a 1.8 o igual o superior a 2.0. Actualiza tu InfluxDB antes de actualizar el complemento (consulta la documentación oficial de InfluxDB para conocer el procedimiento).
>
> Es imprescindible tener instalado, como mínimo, Debian 11 Bullseye para que el complemento funcione. Si tienes Debian 10, no instales la actualización.

- Mejoras en los campos de contraseña
- Se ha dejado de ofrecer soporte para las versiones de InfluxDB anteriores a la 1.8, principalmente para garantizar la compatibilidad del complemento con Debian 12 y PHP 8.
- Actualización de dependencias
- Traducción del complemento al inglés, alemán, español, italiano y portugués

## 2024-04-10

- Modificación interna de la gestión de dependencias para garantizar la compatibilidad con Jeedom v4.4
- Se requiere como mínimo Jeedom v4.2
- Actualización de dependencias

## 2023-02-06

- Se ha añadido un nuevo modo de exportación: *Historial*, que permite exportar cada noche todo el historial del día anterior.
- Actualización de la presentación de los comandos para Jeedom v4.3
- Corrección: el cron no se eliminaba correctamente al desinstalar el plugin

## 2022-02-09

- Se ha añadido una nueva opción para seleccionar el valor de la marca de tiempo enviada; hay tres opciones posibles: hora de envío, hora de recogida de Jeedom, hora del valor de Jeedom (véase la documentación)
- Incorporación de la visualización en formato de tabla de la lista de equipos para Jeedom 4.2

## 2022-01-25

- Rediseño del «motor» del complemento para que todas las tareas se ejecuten de forma asíncrona en procesos dedicados, con el fin de no afectar al resto de procesos de tu Jeedom ni a la navegación por el panel de control.
- Se ha añadido la exportación del historial a InfluxDB (que se beneficia de la remodelación explicada anteriormente)
- Se ha añadido el comando **Enviar todo** para forzar el envío del valor actual de todos los comandos seleccionados en el equipo
- Se han añadido varios comandos de información para conocer el estado del conector: **Estado**, **Último error**... (véase la documentación)
- Inclusión de la información sobre el estado de los conectores en la página de estado general
- Se han añadido controles para los contadores totales y diarios del número de mediciones enviadas por equipo
- Se ha añadido una configuración avanzada para definir los tiempos de espera y el número de intentos de envío
- Clasificación de equipos y pedidos en las pantallas de selección por objeto/pieza
- A partir de ahora, las mediciones se enviarán con una marca de tiempo que corresponda a su fecha de validez en Jeedom, en lugar de la hora de envío.
- Corrección: En la selección de equipos por objeto, no era posible buscar ni seleccionar equipos sin objeto ni pieza.

## 2021-10-26

- Corrección: el punto no se enviaba a influx cuando tenía el valor *0*

## 2021-10-04

- Ajuste de los tiempos de espera de las conexiones en InfluxDB v2

## 2021-08-22

- Rediseño completo de la selección de pedidos; interfaz mucho más ágil, incluso con un número muy elevado (+15 000) de pedidos que mostrar:
  - Se ha añadido la posibilidad de buscar y añadir pedidos individuales
  - Se ha añadido la posibilidad de buscar y añadir pedidos por objeto/pieza
  - Y rediseño de la función de búsqueda y de la incorporación de comandos a través de la lista completa de comandos
  - Incorporación de un campo de búsqueda/filtro en todas las listas
- Incorporación de la visualización en formato de tabla de la lista de equipos para Jeedom 4.2

## 2021-02-04

- Incorporación de la compatibilidad con https para InfluxDB v1.x
- Se ha añadido compatibilidad con InfluxDB v2.x (véase la documentación)
- Nueva presentación de la lista de objetos

## 2020-09-04

- Revisión del diseño para la versión 4
- Optimización de las configuraciones

## 2020-08-15

- Corrección: el envío en tiempo real no funcionaba tras desactivar y volver a activar el complemento (a menos que se volviera a guardar el equipo correspondiente)

## 2020-08-09

- Se ha añadido la posibilidad de definir un nombre de medida y una clave personalizados para cada comando (se configura en la lista de comandos)
- Se ha añadido una opción de configuración en el equipo que permite seleccionar las etiquetas que se enviarán con cada punto
- Incorporación de las etiquetas (opcionales) «Nombre del comando» (*CommandName*) y «Tipo genérico del comando» (*GenericType*)

## 2020-05-03

- Se ha añadido el botón «Duplicar» para un equipo

## 2020-04-23

- Se ha solucionado un problema de ordenación en la columna «Enviado» de la pantalla de configuración de los pedidos

## 2020-04-16

- Solucionar un problema de dependencias en Jeedom Smart

## 2020-04-12

- Incorporación de la programación personalizada en el modo «actualización automática» (por defecto, cada minuto)

## 2020-04-06

Primera versión

# Documentación

[Ver la documentación]({{site.baseurl}}/{{page.pluginId}}/{{page.lang}})
