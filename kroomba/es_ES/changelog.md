---
layout: default
title: Registro de cambios de iRobot
lang: es_ES
pluginId: kroomba
---

# Beta

- Actualización de dependencias
- Se requiere Jeedom v4.5

# Estable

## 2026-01-02

- Mejor validación de la presencia de la contraseña durante el descubrimiento en modo nube
- Actualización de dependencias

## 2025-06-27

- Añadir registros

## 2025-04-03

- Modificación interna del demonio
- Modificación en el proceso de copia de seguridad de las configuraciones para evitar posibles duplicados en caso de que tu robot no tenga una dirección IP fija
- Se ha añadido el método «local» para la detección de robots, además del método ya existente a través de la nube (los robots siguen controlándose localmente a continuación).
- Adaptación del ID de cliente MQTT al formato «prefijo-[ID aleatorio]» para facilitar la supervisión
- Actualización de dependencias

## 2025-02-24

- Actualización de dependencias

## 2024-12-25

- Actualización de dependencias
- Actualización del icono
- Se requiere Jeedom v4.4

## 2024-09-16

- Actualización de dependencias
- Traducción del complemento al inglés, alemán, español, italiano y portugués
- Se requiere como mínimo la versión Debian 11

## 2024-06-11

- Modificación interna del demonio
- Actualización de dependencias

## 2024-04-16

- Actualización de dependencias
- Actualización de la versión mínima de Python para garantizar la compatibilidad con Debian 12. Será necesario reinstalar las dependencias si aún tienes Debian 10.

## 2024-04-08

- Corrección en la comprobación de dependencias

## 2024-02-26

- Optimización del tamaño de las copias de seguridad

## 2024-02-16

- Se han añadido los comandos **Activar seguridad infantil** y **Desactivar seguridad infantil**
- Se ha corregido un error menor que se producía al desconectar el demonio
- Nueva versión de las dependencias (paho-mqtt 2.0) y adaptación del demonio en consecuencia

## 2023-08-30

- Actualización de los comandos de regiones/habitaciones en caso de que iRobot modifique los identificadores de los mapas. Cuando esto ocurra, hay que reiniciar una limpieza manual de la habitación para que el complemento actualice el comando.

## 2023-08-21

- Se ha añadido la gestión de la limpieza por habitaciones
- Se han añadido los siguientes comandos de información sobre los Braava: **Tipo de paño**, **Tapa abierta**, **Depósito presente**, **Nivel del depósito**
- Se han añadido comandos para configurar las preferencias de limpieza (en los modelos compatibles; probado en el Braava jet m6):
  - **Cantidad de líquido** por defecto: *Eco*, *Estándar*, *Ultra*
  - **Solapamiento** de la ruta de lavado predeterminada: *Un poco*, *Más*, *Mucho*
- Mejora: el demonio ya no se conectará a los robots cuyo equipo correspondiente esté desactivado en Jeedom
- Limpieza del código y eliminación de dependencias innecesarias

## 2023-05-20

- Compatibilidad con Jeedom v4.4
- Se ha corregido un fallo del demonio si el nombre del robot contenía un carácter especial

## 2023-03-26

- Correcciones y optimizaciones menores

## 2022-11-21

> **Importante**
>
> Es necesario volver a ejecutar la instalación de los componentes adicionales tras instalar esta actualización, aunque ya estén *OK*.
>
> Tras instalar esta nueva versión, tendrás que volver a detectar tus robots (consulta la documentación) y se creará un nuevo dispositivo para cada robot.
> Utiliza las nuevas herramientas disponibles en Jeedom v4.3 para migrar tus comandos o hazlo manualmente; después, podrás eliminar los dispositivos antiguos, ya que ya no serán necesarios.

- @Mips se ha hecho cargo del complemento y lo ha rediseñado por completo; consulta <https://community.jeedom.com/t/nouvelle-version-du-plugin-roomba-cherche-testeurs-volontaires/86743> para obtener más detalles.
- Se requiere como mínimo Jeedom v4.2
- Se requiere el complemento *MQTT Manager* (MQTT2)
- Implementación de un demonio para mantener la conexión con el robot
- Comunicación a través de MQTT entre el demonio y Jeedom
- Detección y configuración de los robots automáticos (se requiere acceso a la nube de iRobot durante la configuración)
- Actualización de la presentación de los comandos para Jeedom v4.3
- Se ha añadido un botón para recrear los comandos que faltan según la configuración (se realiza automáticamente al actualizar el complemento)
- Se ha añadido el comando **Vaciado** (solo funciona en los modelos compatibles)
- Se ha añadido el comando de información **Depósito** (solo funciona en los modelos de lavadoras compatibles)
- Se han añadido los comandos de información: **Número de tareas de limpieza**, **Número de tareas completadas con éxito**, **Número de tareas fallidas**, **Número de vaciados automáticos**, **Número de detecciones de suciedad**, **Número de atascos**, **Número de tareas canceladas**
- Se han añadido los comandos «**Información**» y «**Seguridad infantil**»

## 24 de mayo de 2020 por @vedrine

- Nuevos iconos para los estados, por @kiboost.

## 23 de mayo de 2020 por @vedrine

- Nuevos estados hmMidMsn (Es necesario recargar) y hmPostMsn (tarea completada)

## 21 de septiembre de 2019 por @vedrine

- Migración a Python 3
- Se ha corregido un problema en las traducciones
- Nuevo script de Bash para instalar las dependencias
- Plantillas para Jeedom V4
- Compatibilidad entre Jeedom V3 y V4

## 13 de agosto de 2019 por @vedrine

- Compatibilidad entre PHP 7.3 y Font Awesome 5
- Versión mínima requerida de Jeedom: 3.3

# Documentación

[Ver la documentación]({{site.baseurl}}/{{page.pluginId}}/{{page.lang}})
