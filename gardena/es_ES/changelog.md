---
layout: default
title: Registro de cambios de Gardena-Husqvarna
lang: es_ES
pluginId: gardena
---

# Registro de cambios

## 2026-06-12

- Implantación de un nuevo flujo de trabajo para la documentación
- Actualización de dependencias
- Se requiere Python 3.11; se instalará automáticamente si es necesario.
- Se han añadido los comandos de información **Altura de corte**, **Tipo de corte**, **Progreso**, fecha de **Última finalización** y fecha de **Último abandono** por zona para los Husqvarna Automower.
- Se ha añadido un comando de información **Restricción externa** que indica el motivo de la restricción de programación. Utiliza el botón *Crear los comandos que faltan* en la página del equipo para añadirlo.

## 2026-01-01

- Se ha corregido un error en el comando **Ajuste de la altura de corte**
- Mejora en la limpieza de la memoria utilizada durante una nueva sincronización
- Actualización de dependencias

## 2025-08-11

- Migración a la API v2 para los dispositivos Gardena Smart System, que devuelve nuevos valores para la información de *Actividad* y *Error*
- Actualización de dependencias

## 2025-03-23

- Corrección para la API de Husqvarna Automower v2 relativa a la información de posiciones GPS
- Solución para los cortacéspedes Husqvarna que no tienen *zona de trabajo*
- Ocultar las configuraciones clave y el secreto de la aplicación
- Actualización de dependencias

## 2025-03-13

- Corrección de los mensajes de estado tras la API de Husqvarna Automower v2
- Se ha eliminado la compatibilidad con la API de Husqvarna Automower v1 (que dejó de existir el 1 de marzo)
- Actualización de dependencias

## 2025-02-22

- Aumento del tiempo de espera durante la conexión, ya que parece que los servidores de Husqvarna tardan un poco más en responder
- Compatibilidad con la API de Husqvarna Automower v2 (será obligatoria a partir del 1 de marzo)
- Para los cortacéspedes *Husqvarna*: se ha añadido un comando de acción **«Restablecer uso de las cuchillas»** que permite restablecer el tiempo de uso de las cuchillas
- Actualización de dependencias
- Actualización del icono
- Se requiere Jeedom v4.4

## 2024-09-16

- Actualización de dependencias
- Traducción del complemento al inglés, alemán, español, italiano y portugués
- Se requiere como mínimo la versión Debian 11

## 2024-07-02

- Corrección menor
- Actualización de dependencias

## 2024-06-11

- Se ha llevado a cabo una importante reescritura del código del demonio: debería ser aún **más estable**, **más rápido** y consumir, de media, un poco **menos de recursos**.
- Se ha añadido el comando «info & acción **Duración por defecto**» a todos los dispositivos (Gardena y Husqvarna) que cuentan con comandos de acción que permiten especificar una duración: anteriormente, la duración por defecto estaba fijada de forma rígida si no se especificaba al utilizar uno de estos comandos; ahora, el complemento tomará el valor de este nuevo comando **Duración por defecto**.
- Para los cortacéspedes *Husqvarna*: se añaden los comandos de acción **Inicio de la zona xxx** (uno por cada zona existente)
- Para los cortacéspedes *Husqvarna*: se añade **gestión de zonas de exclusión**. Por cada zona, se creará un interruptor «activo/inactivo», es decir, 3 comandos: una información binaria y 2 acciones (encendido/apagado).
- Se ha añadido una tarea de actualización automática para los cortacéspedes *Husqvarna* compatibles con la función **zonas de exclusión**
- Actualización de dependencias internas
- Esta versión **requiere actualizar las dependencias**; en principio, esto se hará automáticamente durante la actualización.

## 2024-04-08

- Corrección en la comprobación de dependencias

## 2024-03-28

- Pequeño cambio para mantener la compatibilidad con Debian 10 => Planifica una migración a Debian 11

## 2024-02-26

- Mejora: distinción entre los dos modelos de *Smart Sensor*: la imagen y la lista de comandos creados se adaptan en función del modelo.
- Optimización del tamaño de las copias de seguridad

## 2023-10-02

- Se han añadido descripciones para los nuevos códigos de error de los robots Husqvarna

## 2023-08-21

- Mejora del registro del demonio
- Se han corregido los comandos **Inicio en modo manual** y **Regreso a la base** para los robots Husqvarna: la duración recibida como parámetro del comando se interpretaba en horas en lugar de minutos.
- Modificación interna de la gestión de dependencias

## 2023-06-30

- Solución a un fallo del demonio con las cortadoras de césped Husqvarna sin módulo GPS

## 2023-05-24

- Modificación en la gestión de dependencias para evitar posibles conflictos con otros complementos

## 2023-04-05

- Se han añadido comandos de información estadística para los robots Husqvarna (consulta la documentación para ver la lista)
- Corrección menor: evita que el demonio se reinicie dos veces en determinados casos cuando se ha interrumpido la conexión del socket

## 2022-10-17

- Actualización de la presentación de los comandos para Jeedom v4.3

## 2022-06-30

- Se ha corregido un posible fallo del demonio al renovar la conexión

## 2022-06-11

- Cambio en el método de autenticación debido a una modificación realizada por Gardena / Husqvarna; es necesario volver a configurar el complemento: ya no se necesitan el correo electrónico ni la contraseña, pero ahora sí se requiere la clave secreta de la aplicación.

## 2022-05-22

- Solución: los comandos de acción/mensajes para los robots Husqvarna no funcionaban.
- Solución: el comando «**Tiempo restante**» para los robots Husqvarna nunca se actualizaba.

## 2022-04-30

- Actualización de la información de los robots Husqvarna en tiempo real y, por lo tanto, eliminación de la tarea programada de actualización, que ya no es necesaria. Así pues, ya no hay límite en el número de actualizaciones.
- Se han añadido los siguientes comandos para los robots Husqvarna:
  - **Altura de corte**, que permite conocer y definir la altura de corte
  - **Faros** que permiten conocer y definir el modo de encendido de los faros
  - **Hora del último informe** y **Hora de la próxima salida**
  - **Restricción de programación** que indica el motivo de la excepción en la programación habitual
  - **Posiciones**, que contiene el historial de las últimas 50 posiciones del robot (los comandos **Última posición**, **Latitud** y **Longitud** siguen existiendo e indican la última posición conocida)
- Se ha añadido un widget para mostrar el historial de posiciones en un mapa, que se puede aplicar al comando **Posiciones** (véase la documentación) (contribución de @t0urista)

## 2022-03-12

- Corrección de la comprobación de dependencias

## 2022-02-11

- Pequeños cambios en el diseño de las pantallas de configuración

## 2021-10-04

- Se han añadido tres comandos que indican la posición GPS en el cortacésped Husqvarna: **Latitud**, **Longitud** y **Posición**
- Actualización de dependencias: esta actualización requiere reinstalar las dependencias; esto debería realizarse automáticamente al actualizar el complemento.

## 2021-08-22

- Incorporación de un control de **tiempo restante** en los cortacéspedes inteligentes Gardena
- Se ha añadido la actualización de la información **Tiempo restante** para los Husqvarna Automower (calculada internamente por el complemento) únicamente cuando se utilizan los comandos **Inicio en modo manual** o **Regreso a la base**
- Incorporación de la visualización en formato de tabla de la lista de equipos para Jeedom 4.2

## 2021-07-12

- Se ha añadido un cron configurable para la actualización de los cortacéspedes Husqvarna en la configuración del plugin.
- Se ha añadido la posibilidad de seleccionar la duración de la pausa (en minutos) con el comando **Pausa de programación**. Para disponer de esta opción, hay que eliminar el comando existente en el dispositivo (sin eliminar el dispositivo), guardar los cambios y, a continuación, utilizar la función *Crear los comandos que faltan* para que el comando se vuelva a crear con la configuración correcta. Será necesario adaptar los escenarios al nuevo comando.
- Se ha trasladado el complemento a la categoría «Naturaleza».

## 2021-03-14

- Corrección de la versión de una dependencia debido a un error en su última versión (véase <https://github.com/websocket-client/websocket-client/commit/3112b7d75b1e5d65cb8fdfca7801606649044ed1#commitcomment-48226116>). Si has instalado el complemento y sus dependencias después del 3 de marzo, es probable que tengas que volver a instalar las dependencias; si todo te funciona correctamente, no es necesario.
- Nueva presentación de la lista de objetos
- Mejora del diseño de la configuración de los equipos y los controles

## 2020-10-24

- Se ha solucionado un problema con los controladores de riego inteligentes que impedía que el demonio se iniciara correctamente
- Aumento del límite máximo de duración (de 1 h a 6 h) para el arranque manual de los cortacéspedes Gardena.

## 2020-08-29

- Se ha añadido el comando **Último error** para los dispositivos Gardena Smart Socket, Water Control e Irrigation Control. Utiliza el botón *Crear los comandos que faltan* en la página del dispositivo para añadirlo.
- Se ha añadido la información *Último error* en la página de estado
- Soluciona un problema de inicio del demonio con los cortacéspedes Husqvarna Automower

## 2020-08-27

- Se ha añadido un comando **Último error** en los Gardena Smart Mower
- Se ha eliminado el comando «Tiempo restante» en los Gardena Smart Mower, ya que la información no está disponible
- Se ha solucionado un problema con el comando «Actividad» de los cortacéspedes inteligentes Gardena, que no se actualizaba
- Se ha corregido un error relacionado con un enlace a una imagen incorrecta en la página de configuración del Gardena Smart Mower

## 2020-08-22

- Mejora del proceso de reconexión en caso de corte de red o desconexión de la API por parte de Gardena
- Revisión del diseño para la versión 4
- Soluciona un problema de dependencia en algunas instalaciones

## 2020-08-16

Primera versión

# Documentación

[Ver la documentación]({{site.baseurl}}/{{page.pluginId}}/{{page.lang}})
