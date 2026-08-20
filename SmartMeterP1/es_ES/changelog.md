---
layout: default
title: Registro de cambios de SmartMeter P1
lang: es_ES
pluginId: SmartMeterP1
---

# Registro de cambios

## 2026-08-03

- Actualización de dependencias

## 2026-06-12

- Implantación de un nuevo flujo de trabajo para la documentación

## 2026-05-12

- Actualización de dependencias
- Se requiere Jeedom v4.5

## 2026-01-01

- Actualización de dependencias

## 2025-06-27

- Actualización de dependencias

## 2025-02-22

- Corrección de la decodificación para garantizar la compatibilidad con los contadores suizos
- Se han añadido los códigos 1.6.0 (potencia media máxima consumida en un cuarto de hora desde principios de mes) y 2.6.0 (potencia media máxima inyectada en un cuarto de hora desde principios de mes); esta última información no estará disponible para todos, ya que depende de si el contador la proporciona o no.
- Migración del demonio PHP a un demonio Python para mejorar el rendimiento
- Incorporación de un «heartbeat» interno al demonio
- Actualización de dependencias
- Actualización del icono

## 2024-10-17

- Actualización de dependencias
- Se requiere Jeedom v4.4

## 2024-08-21

- Actualización de dependencias
- Traducción del complemento al inglés, alemán, español, italiano y portugués

## 2024-04-10

- Actualización de dependencias

## 2024-03-03

- Se ha añadido un comando **Estado** que indica el estado de la conexión con el módulo

## 2024-03-01

- Eliminación de la tarea programada del plugin al desinstalarlo

## 2024-02-26

- Suma de la potencia consumida y inyectada por fase
- Permite modificar los subtipos de los comandos para poder configurar una «fórmula de cálculo» (requiere core >=4.4)

## 2024-02-01

Primera versión

# Documentación

[Ver la documentación]({{site.baseurl}}/{{page.pluginId}}/{{page.lang}})
