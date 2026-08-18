---
layout: default
title: Registro de cambios de la pasarela Theengs
lang: es_ES
pluginId: tgw
---

# Registro de cambios

## 2026-08-15

- Actualización de dependencias

## 2026-06-12

- Implantación de un nuevo flujo de trabajo para la documentación
- Se ha añadido una opción avanzada para configurar el modo de escaneo
- Actualización de dependencias
- Se requiere Jeedom v4.5

## 2026-01-01

- Corrección de un error en el script de instalación de la antena

## 2025-08-11

- Se ha añadido la gestión de *bindkeys*, véase <https://gateway.theengs.io/use/use.html#reading-encrypted-advertisements>
- Abrir la página de notas de la versión en una nueva pestaña
- Actualización de dependencias

## 2025-04-18

- Corrección: ya no era posible desactivar un dispositivo al que no se podía acceder a través de SSH

## 2025-02-24

- Corrección en la notificación de actualizaciones de Theengs Decoder
- Desactivación del servicio si el equipo Jeedom está desactivado

## 2025-01-05

- Se ha solucionado un problema con la detección de la versión de Theengs Decoder (si es >= 1.8.3)

## 2024-12-25

- Actualización de dependencias
- Actualización del icono
- Se requiere Jeedom v4.4

## 2024-06-16

- Actualización de dependencias
- Traducción del complemento al inglés, alemán, español, italiano y portugués
- Se requiere como mínimo la versión Debian 11

## 2024-07-02

> **Atención**
>
> Se ha producido un cambio importante en la gestión de las antenas que requiere desinstalarlas y volver a instalarlas. Si no quieres que esto te afecte de inmediato, no actualices.
>
> La instalación de Antenna en **Debian Buster (10) ya no es compatible**. Para instalar Antenna, es imprescindible disponer de un equipo con Debian Bullseye (11) o Debian Bookworm (12).

## 2024-04-11

- Actualización de dependencias

## 2024-03-16

- Se ha añadido la opción de reinicio automático de la antena
- Actualización de dependencias

## 2024-02-14

- Corrección: envía el mensaje de «antena fuera de línea» únicamente si el equipo está activado
- Se ha añadido un parámetro opcional para activar la publicación de datos avanzados

## 2024-02-04

- Se ha añadido el número de versión instalada y la última versión disponible en la página de configuración del equipo
- Añadir un mensaje si hay una nueva versión disponible
- Se ha añadido un botón para actualizar la antena si la última versión es posterior a la versión instalada
- Se han añadido los parámetros opcionales: *Duración del escaneo* y *Intervalo entre dos escaneos*
- Se ha añadido un parámetro opcional para la decodificación de direcciones MAC privadas/aleatorias (véase la documentación)

## 2023-12-16

- Se ha corregido un pequeño error en la configuración de la antena que, en ocasiones, podía causar problemas con la pasarela Theengs >1.2 y/o Debian 11

## 2023-12-04

- Se ha añadido un comando para forzar la limpieza de los registros remotos
- Corrección para gestionar `localhost` en la configuración (equivalente a `127.0.0.1`)
- Incorporación de la configuración de logrotate para los registros de las antenas remotas
- Se ha añadido el botón «Detener el servicio» en la página de configuración del equipo (misma función que el comando **Stop**)
- Se han añadido botones para consultar los registros de la antena directamente desde la página de configuración del equipo
- Solución para recuperar la lista de adaptadores Bluetooth en una antena remota

## 2023-11-06

- Se ha corregido la configuración de la antena al añadir un modelo que se debe ignorar cuyo nombre ya formaba parte del nombre de un modelo que ya se había ignorado.
- Se ha corregido la configuración de la antena en caso de que la lista de modelos que se deben ignorar estuviera vacía
- Se ha corregido un error en la visualización de la lista de modelos que se deben ignorar

## 2023-11-02

- Se ha añadido una opción para incluir un mensaje en el centro de mensajes cuando la antena está desconectada

## 2023-10-30

- Al realizar un cambio de configuración, la antena se reiniciará automáticamente si es necesario y posible, y siempre que ya estuviera en funcionamiento.

## 2023-10-23

- Actualización de dependencias

## 2023-10-20

- Modificación de la instalación de las antenas para garantizar la compatibilidad con Debian 12. No es obligatorio reinstalar las antenas existentes inmediatamente después de actualizar el complemento, pero te recomiendo que lo hagas cuando te sea posible. Basta con hacer clic en el botón «Instalar la antena» y el complemento se encargará de eliminar la instalación anterior y reinstalar la antena.

## 2023-10-15

- Visualización de la lista de interfaces Bluetooth disponibles (con su dirección MAC) en la página de configuración de la antena
- Modificación de la pantalla de configuración del complemento

## 2023-10-14

- Se ha añadido la configuración del nivel de registro de la antena
- Se ha añadido un resumen de la configuración actual de la antena (habrá que volver a enviar la configuración para que se vea en el equipo)
- Recuperación automática de los registros del servicio (cada minuto) en Jeedom

## 2023-10-13

- Mejora de la comprobación del estado de la instalación
- Se ha añadido la posibilidad de comprobar manualmente el estado de la instalación
- Se ha añadido una acción para desinstalar el servicio y la antena si es necesario

## 2023-10-12

- Se ha añadido la instalación del paquete del sistema bluez durante la instalación de la antena, por si aún no estuviera instalado.

## 2023-10-11

- Se ha añadido un segundo control para comprobar si la instalación sigue en curso
- Comprobación de que el plugin está correctamente configurado al configurar una antena

## 2023-10-10

- Incorporación de la información sobre el estado de las antenas en la página «Estado» de Jeedom
- Incorporación del estado de la antena en el modo de visualización de la tabla de equipos

## 2023-10-08

Primera versión

# Documentación

[Ver la documentación]({{site.baseurl}}/{{page.pluginId}}/{{page.lang}})
