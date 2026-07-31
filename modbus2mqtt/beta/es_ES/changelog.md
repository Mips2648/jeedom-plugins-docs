---
layout: default
title: Registro de cambios de Modbus 2 MQTT
lang: es_ES
pluginId: modbus2mqtt
---

# Registro de cambios

## 2026-07-22

- Actualización de dependencias

## 2026-06-12

- Implantación de un nuevo flujo de trabajo para la documentación
- Compatibilidad con imágenes personalizadas de los dispositivos (Jeedom 4.5)
- Actualización de dependencias
- Se requiere Python 3.11; se instalará automáticamente si es necesario.

## 2025-06-27

- Se ha solucionado un problema al iniciar el demonio que podía producirse en Debian 12

## 2025-04-18

- Se ha añadido la gestión de las tablas *Coil status* y *Input status*
- Migración a pymodbus 3.8 => eliminación de la opción para invertir el orden de los bytes
- Adaptación del ID de cliente MQTT al formato «modbus2mqtt-[ID aleatorio]» para facilitar la supervisión
- Actualización de dependencias

## 2024-12-26

- Se ha añadido una nueva opción para invertir el orden de los bytes
- Se ha añadido compatibilidad con números de coma flotante en 32 bits
- Se ha añadido una opción para configurar el tiempo de espera de las solicitudes Modbus
- Se ha añadido una opción para configurar el intervalo entre dos lecturas
- Se ha eliminado la opción de elegir el modo de escritura: ahora se determina automáticamente en función del tipo.
- Actualización del demonio
- Actualización de dependencias
- Actualización del icono
- Traducción del complemento al inglés, alemán, español, italiano y portugués
- Solución: la dirección del terminal (ID de esclavo) no se tenía en cuenta correctamente
- Se requiere Jeedom v4.4

## 2024-04-10

- Corrección en la comprobación de dependencias
- Actualización de dependencias

## 2024-03-16

- Se ha añadido una nueva opción para elegir el modo de escritura: simple (función 06) o múltiple (función 16)
- Se ha añadido una nueva opción para configurar la dirección del terminal esclavo

## 2024-02-26

- Optimización del tamaño de las copias de seguridad

## 2024-02-14

- Se ha añadido compatibilidad con números enteros con y sin signo en 32 y 64 bits
- Se ha añadido una nueva opción para invertir los dígitos si es necesario (para números de 32 y 64 bits).
- Mejora técnica en el demonio: cambio a asíncrono completo
- Modificación del script de instalación de las dependencias para garantizar la compatibilidad con Debian 12
- Nueva versión de las dependencias (paho-mqtt 2.0) y adaptación del demonio en consecuencia

## 2023-08-24

- Solucionar un problema de dependencias en Debian 11 / Python 3.9

## 2023-05-20

- Compatibilidad con Jeedom v4.4

## 2023-01-30

- Solución: en algunos casos no se pueden eliminar determinados comandos de los dispositivos

## 2022-11-11

- Primera versión

# Documentación

[Ver la documentación]({{site.baseurl}}/{{page.pluginId}}/{{page.lang}})
