---
layout: default
title: Registro de cambios de Arlo
lang: es_ES
pluginId: arlo
---

# Beta

- Actualización de dependencias
- Se requiere Python 3.11; se instalará automáticamente si es necesario.

# Estable

## 2026-05-29

- Adaptación para dar soporte a la nueva gestión de modos personalizados.
- Corrección en la lectura del modo de un equipo de tipo «alquiler» que provocaba un error cuando la conexión con la nube ya no estaba activa
- Corrección: faltaban algunos comandos (por ejemplo, el control de la sirena o del foco) para las cámaras conectadas directamente a la red wifi
- Compatibilidad con imágenes de equipos personalizadas (Jeedom 4.5)
- Actualización de dependencias

## 2025-08-11

- Se ha añadido compatibilidad con varios modelos nuevos de cámaras
- Limita a un día la recuperación de vídeos y capturas de la biblioteca desde la nube
- Actualización de dependencias
- Compatibilidad con PHP 8.4

## 2025-02-24

- Mejora del proceso de inicio de sesión y eliminación de avisos en el registro
- Información sobre la grabación y la transmisión local

## 2025-02-13

- Detén el demonio si no es posible conectarse a Arlo
- Actualización de los encabezados utilizados durante la autenticación

## 2025-02-06

- Se ha añadido la compatibilidad con la Arlo Pro 5
- Actualización de dependencias
- Solución de emergencia para solucionar un bloqueo de la conexión que se produjo durante la noche del 5 al 6 de febrero

## 2024-12-25

- Se ha añadido compatibilidad con el Video Doorbell HD y 2K
- Corrección de un error en el comando **Estado de la planificación**
- Actualización de dependencias
- Actualización del icono

## 2024-11-16

- Mejoras en la compatibilidad con los modelos Arlo Essential
- Se ha corregido un posible bloqueo del demonio en caso de que falle la actualización del modo
- Limita la versión de una dependencia (cryptography) para mantener la compatibilidad con los Raspberry Pi 3 instalados en 32 bits. ¡Atención: la compatibilidad con los sistemas de 32 bits se eliminará en una próxima versión!
- Actualización de dependencias
- Se requiere Jeedom v4.4

## 2024-09-23

- Corrección de un error en el comando **Estado de la planificación**
- Se ha corregido un error que provocaba un bloqueo del demonio si el nombre de usuario del correo no era una dirección de correo electrónico

## 2024-09-16

- Esta nueva versión revisa por completo la integración con Arlo para garantizar la compatibilidad con la interfaz «Arlo V4» (en fase beta desde hace seis meses).
Véase también [este tema en la comunidad](https://community.jeedom.com/t/nouvelle-version-pour-la-compatibilite-arlo-v4/119611)
- Se ha añadido la compatibilidad con la Arlo Essential Indoor 2
- Se ha añadido la compatibilidad con el Video Doorbell 2
- Se ha añadido la compatibilidad con la Arlo Essential XL
- Mejoras en el soporte de la Arlo Essential XL
- Traducción del complemento al inglés, alemán, español, italiano y portugués
- Reducción del tamaño del complemento
- Optimización del tamaño de las copias de seguridad
- Se requiere como mínimo la versión 11 de Debian

## 2024-01-20

- Modificación de la comprobación de dependencias para la compatibilidad con Debian 12
- Permite mostrar los controles **On** y **Off** en el widget de la cámara

## 2023-08-21

- Modificación interna de la gestión de dependencias
- Adaptación de la URL de la última captura durante la primera sincronización para evitar un problema de acceso (CSP)
- Bloquea el demonio en caso de que no se encuentre ningún servidor de autenticación de Arlo

## 2023-07-19

- Solución para el problema de que la grabación en la nube se inicia más lentamente que antes (debido a la nube de Arlo)
- Soluciona la grabación y la transmisión local
- Se ha corregido el error por el que la opción de duración no se mostraba en el comando «Grabación» en los guiones
- Soluciona un problema de dependencias en pi3 en Buster

## 2023-07-03

- Adaptación de la biblioteca multimedia para la navegación en dispositivos móviles
- Rediseño y mejora significativa del sistema de autenticación en Arlo:
  - Guardar la sesión para volver a utilizarla al volver a conectarse: ahora, la reconexión a Arlo al reiniciar el demonio será casi instantánea (si la sesión anterior sigue siendo válida), ya que ya no será necesario autenticarse (por lo tanto, ya no hay que esperar el código único por correo electrónico, ni pasar por Cloudflare, etc.)
  - Se han añadido métodos de conexión alternativos para los casos en que Cloudflare bloquee la conexión (aunque esto no funciona al 100 %)

## 2023-05-22

- Solución para la grabación en la nube

## 2023-05-17

- Solución al cambio de modo de la Arlo Baby tras un cambio en el funcionamiento de Arlo
- Mejoras en los campos de contraseña
- Compatibilidad con Jeedom v4.4
- Exclusión de las capturas y los vídeos guardados localmente de la copia de seguridad de Jeedom para reducir su tamaño
- Actualización de las dependencias para resolver un bloqueo al conectarse al iniciar el demonio
- Modificación en la gestión de dependencias para evitar posibles conflictos con otros complementos

> En principio, las dependencias se reinstalarán automáticamente al actualizar el complemento. Si no es así, por favor, reinícialas manualmente.

## 2022-11-11

- Corrección menor relacionada con los timbres con audio

## 2022-10-17

- Actualización de la presentación de los controles para Jeedom v4.3

## 2022-10-06

- Mejora de la integración del Arlo Floodlight: compatibilidad con más modelos, incorporación de la gestión personalizada de eventos si no hay base (ver documentación)
- Corrección de un error menor en el widget de la cámara para Jeedom v4 y eliminación de la compatibilidad con Jeedom v3; la versión mínima requerida de Jeedom es ahora la 4.0

## 2022-08-17

- Corrección: el widget de la cámara para los usuarios que no son administradores no mostraba la última captura

## 2022-05-17

- Soporte para el modelo VMC4041P (Arlo Pro4)
- Se han añadido los comandos **Activar gestión de eventos**, **Desactivar gestión de eventos** y **Estado de la gestión de eventos** en el Arlo Doorbell Wire Free y el Arlo Go

## 2022-02-11

- Se ha añadido el comando **Estado del escudo** en la Arlo Essential Indoor
- Se han añadido los controles **Estado de la sirena**, **Sirena activada** y **Sirena desactivada** en la Arlo Essential
- Mejora: permite, de forma opcional, mostrar todos los comandos de acción disponibles en el widget de la cámara
- Se ha añadido un botón en la biblioteca para descargar las grabaciones
- La gestión de eventos en la Arlo Essential está desactivada de forma predeterminada cuando no hay ningún hub conectado, ya que agota la batería de este modelo demasiado rápido
- Se han añadido nuevos comandos para activar la gestión de eventos bajo demanda en la Arlo Essential: **Activar gestión de eventos**, **Desactivar gestión de eventos** y **Estado de la gestión de eventos**
- Corrección: el nombre del objeto o pieza seguía apareciendo en el widget de la cámara
- Se ha eliminado la instalación de la versión personalizada de ffmpeg, que era necesaria en Debian Stretch.

## 2021-10-31

- Actualización de los controles de audio durante la actualización manual y automática de Arlo Baby
- Solución para la grabación de vídeo en la nube

## 2021-09-22

- Mejor integración con plugins de terceros como [Jeedom Connect]({{site.market}}/index.php?v=d&p=market_display&id=4077) ([Consulte la documentación]({{site.baseurl}}/{{page.pluginId}}/{{page.lang}}) para obtener más información)
  - Se ha añadido el comando *URL de la última captura* a las cámaras; este comando se puede utilizar en la configuración *Comando URL de instantánea* del widget de cámara de Jeedom Connect
  - Se ha añadido un enlace fácil de copiar en la página de configuración de la cámara; esta ruta se puede utilizar en la configuración de la *Carpeta de grabaciones* del widget de cámara de Jeedom Connect
- Se han restablecido varias funciones para el Arlo Video Doorbell Wire-Free (la gestión de eventos sigue desactivada); [Consulte la documentación]({{site.baseurl}}/{{page.pluginId}}/{{page.lang}}) para obtener más detalles.
- Incorporación del timbre Arlo Chimes 2 (AC2001)
- Se ha corregido el estado «Reproducción» en Arlo Baby, que no siempre era correcto.

## 2021-08-22

- Incorporación de la visualización en formato de tabla de la lista de equipos para Jeedom 4.2
- Mejora: permite, de forma opcional, mostrar los siguientes datos en el widget de Arlo Baby: **Temperatura**, **Humedad**, **Calidad del aire**, **Luminosidad**
- Corrección: el comando **Calidad del aire** devolvía un valor en partes por mil en lugar de en porcentaje; ahora el valor vuelve a expresarse en porcentaje.
- Se ha corregido un error del demonio en el caso de que una cámara (no conectada a una base) esté desconectada.

## 2021-07-28

- Compatibilidad con Arlo Essential Indoor
- Compatibilidad con la Arlo Pro4
- Permite mostrar los mosaicos en forma de tabla (excepto el mosaico de la cámara, que se personaliza mediante el complemento)
- Desactivación de la gestión de eventos en el Arlo Video Doorbell Wire-Free (no hay ningún problema con el Video Doorbell clásico), ya que agota la batería de este modelo demasiado rápido
- Optimización interna de los procesos de heartbeat y reconexión
- Mejor gestión de los tiempos de espera
- Mejora: actualización del modo en tiempo real si se modifica fuera del complemento (es decir, en la aplicación Arlo); antes tardaba como máximo 1 minuto y 30 segundos.

## 2021-06-02

- Incorporación de un comando de acción *Enviar una grabación* en los Arlo VideoDoorbell
- Se ha corregido el problema con la extracción del código de autenticación en dos pasos tras un cambio en el formato del correo electrónico enviado por Arlo
- Rediseño completo de la gestión de la conexión al sistema Arlo por parte del demonio:
  - el demonio intentará volver a conectarse automáticamente sin detenerse si surge algún problema al iniciar sesión o si Arlo fuerza la desconexión,
  - el demonio volverá a ejecutar el cambio de modo solicitado antes de la desconexión, si es necesario

## 2021-04-03

Es necesario volver a ejecutar la instalación de los componentes adicionales tras instalar esta actualización, aunque ya estén *OK*.

- Compatibilidad con el timbre con cámara Arlo Essential (sin cables) AVD2001
- Mejora de la compatibilidad con la gama Arlo Essential y Arlo Go
- Rediseño completo de la gestión de eventos por parte del demonio (reducción de las desconexiones y del número de solicitudes en dispositivos que funcionan con batería, como Arlo Essential y Arlo Go)
- Actualización urgente tras un cambio realizado por Arlo durante la noche del 2 al 3 de abril: si no realizas esta actualización, el demonio ya no podrá conectarse

## 2021-01-11

- Mejora del «heartbeat» del demonio al inicio
- Mejora de la integración de Arlo Essential
- Solución al problema de la imagen del videoportero modelo AVD1001A, que no se mostraba
- Corrección: desde la última actualización, el equipo de sirena (integrado en algunas bases) incluía por error los siguientes comandos: *Actualizar*, *Conectado*, *Modo* y *Estado de planificación*, que, como es lógico, no funcionaban. Estos comandos se pueden eliminar de este equipo; el complemento ya no los creará.
- Se ha corregido un error menor que podía aparecer en los registros (sin consecuencias) cuando una cámara no se compartía con Jeedom

## 2020-12-02

- Nueva presentación de la lista de objetos
- Mejora del diseño de la configuración del equipo y de los controles
- Se ha añadido la compatibilidad con Arlo Essential
- Instalación de la cámara Fix en el videoportero si está conectada sin base

## 2020-09-21

- Se ha añadido la compatibilidad con la autenticación en dos pasos ([Ver documentación]({{site.baseurl}}/{{page.pluginId}}/{{page.lang}}))
- Se ha añadido compatibilidad con la iluminación en las cámaras Arlo Pro 3 y Arlo Ultra
- Se ha añadido la compatibilidad con el Arlo Pro3 Floodlight
- Se ha corregido un error que provocaba que el demonio se colgara cuando un equipo estaba desconectado o desactivado

## 2020-08-26

- Fuerza la configuración de la clave API en modo localhost
- Rotación automática de la clave API con cada actualización
- Revisión del diseño para la versión 4
- Se ha eliminado un registro de «error» de conexión que no era relevante (ya que el demonio se vuelve a conectar automáticamente si es necesario)
- Se añade un registro si la autenticación de dos factores está activada para el usuario del complemento, ya que aún no es compatible

## 2020-08-02

- Se han solucionado los problemas con las funciones de transmisión y grabación local que se produjeron tras un cambio de Arlo (su nuevo sistema parece más lento que antes).
- Corrección urgente debido a un cambio de URL en Arlo realizado durante la noche del 31 de julio al 1 de agosto: si no realizas esta actualización, el demonio ya no podrá conectarse.

## 2020-07-08

- Configurar el demonio si solo hay un videoportero (sin base)

## 2020-06-18

- Se han añadido controles de modo al widget del Video Doorbell (cuando no está conectado a una base)
- Se han añadido los comandos «info *IP*», «*Luminosidad*», «*Temperatura*», «*Humedad*» y «*Calidad del aire*» en Arlo Baby
- Se ha añadido la gestión de la luz nocturna de Arlo Baby: encendido/apagado, temporizador, brillo, color, temperatura de color y modo ([Ver documentación]({{site.baseurl}}/{{page.pluginId}}/{{page.lang}}))
- Se ha añadido la gestión de las canciones de cuna de Arlo Baby: Reproducir/Pausa/Siguiente, temporizador, lista de reproducción, volumen, modo de repetición y aleatorio ([Ver documentación]({{site.baseurl}}/{{page.pluginId}}/{{page.lang}}))
- Optimización del widget
- Se ha solucionado el problema con la gestión de los modos en la Arlo Baby, que no siempre se actualizaban correctamente
- Corrección de las descripciones emergentes en el widget de la cámara en la versión 4

## 2020-06-4

- Corrección urgente debido a un cambio de URL en Arlo realizado durante la noche del 3 al 4 de junio: si no realizas esta actualización, el demonio dejará de recibir los eventos (aunque esté *OK*) y es probable que pronto ya no pueda conectarse en absoluto.

## 2020-05-24

Es necesario volver a ejecutar la instalación de los componentes adicionales tras instalar esta actualización, aunque ya estén *OK*.

- Migración del demonio a Python 3
- Ajuste de permisos: los usuarios que no sean administradores pueden ver la transmisión y la biblioteca multimedia.
- Mejor gestión de las opciones de visibilidad de los controles (principalmente batería, movimiento...) en el widget de las cámaras
- Se ha añadido la compatibilidad con el Arlo Video Doorbell
- Optimización de las dependencias.

## 2020-03-30

- Traslado de la documentación
- Optimización: ya no se vuelve a instalar ffmpeg si ya se ha instalado la versión correcta

## 2020-03-21

- Incorporación de la comprobación de la versión de FFmpeg en la verificación de dependencias
- Se ha corregido el error HTTP 403 que se producía al iniciar el demonio, causado por un cambio introducido por Arlo en el inicio de sesión

## 2020-02-19

- Soluciona un problema de streaming que puede producirse en Raspbian Stretch: obliga a utilizar ffmpeg 4.2.1, ya que la versión 4.2.2 parece estar dañada (reinstala las dependencias necesarias si te encuentras en esta situación)

## 2020-02-14

- Soluciona un problema de visualización en el modo «Planificación»
- Compatibilidad con los complementos [Rocket.Chat]({{site.market}}/index.php?v=d&p=market&author={{site.author}}&categorie=communication), [Cola de notificaciones]({{site.market}}/index.php?v=d&p=market&author={{site.author}}&categorie=communication) y [Gotify]({{site.market}}/index.php?v=d&p=market&author={{site.author}}&categorie=communication), además de Mail y Telegram para el envío de notificaciones

## 2020-02-06

- Se ha añadido la posibilidad de activar el modo «Planificación»
- Se ha añadido el comando «Enviar captura» a las cámaras, lo que permite enviar una captura desde un escenario seleccionando el comando de notificación que se desea utilizar

## 2020-01-22

- Se ha solucionado un problema con los controles de encendido y apagado de las cámaras Arlo Q y Arlo Qs
- Solución a un problema de streaming en Raspbian Buster

## 2019-12-28

- Solución a un problema de transmisión con las cámaras Arlo Q y Arlo Qs
- Se ha añadido la compatibilidad con Arlo Pro3
- Se ha añadido compatibilidad con la sirena integrada en las cámaras Arlo Pro 3 y Arlo Ultra

## 2019-12-01

- Se ha añadido una página de asistencia técnica específica que ofrece una visión general de todos los dispositivos Arlo
- Mejora de la integración con la aplicación móvil de Jeedom
- El comando «Última imagen» ahora devuelve la ruta relativa a la imagen

## 2019-09-26

- Incorporación de la retransmisión en directo
- eliminación de los comandos «startStream» y «streamURL»

## 2019-09-17

- Se ha añadido la función de grabación local
- Actualización a Font Awesome 5 (para Jeedom V4)
- Mejoras en la biblioteca multimedia e incorporación de la reproducción de vídeo
- Adaptación del widget
- Solución para los controles de encendido/apagado de Arlo Baby

## 2019-09-10

- protección del acceso a las capturas en las instalaciones
- Actualización de la API al dominio my.arlo.com tras los cambios realizados por Arlo

## 2019-08-02

- Compatibilidad con Jeedom V4 y PHP 7.3
- Solución: las capturas no se guardan si Jeedom no se ejecuta en /var/www/html/
- Corrección: tamaño predeterminado de los widgets

## 2019-07-19

- Se han añadido controles de modo al widget de las cámaras Arlo Baby y Arlo Q
- Incorporación de los controles de encendido/apagado y de estado en los equipos de cámaras
- Mejoras en la biblioteca: se ha añadido un botón para eliminar una captura y se muestra la captura a tamaño real
- Se ha solucionado un problema con el demonio si el complemento solo se utiliza con una cámara Arlo Baby

## 2019-06-26

- Se ha añadido la compatibilidad con Arlo Go
- Incorporación de tipos genéricos en los comandos para preparar la integración con la aplicación móvil de Jeedom

## 2019-06-21

- Se ha añadido la compatibilidad con Arlo Lights
- Se ha añadido la compatibilidad con los timbres Arlo

## 2019-06-10

- Se ha añadido una función para enviar capturas de pantalla a través de Telegram o correo electrónico (es necesario tener instalados los complementos correspondientes)
- Establece el tamaño de las capturas en el widget móvil
- Corrige un error que se producía al iniciar el demonio si la contraseña contenía determinados caracteres especiales
- Mejora del proceso «heartbeat»
- Optimización interna del complemento para preparar la integración de nuevos dispositivos Arlo

## 2019-05-30

Se recomienda volver a ejecutar la instalación de los componentes adicionales tras instalar esta actualización, aunque ya estén *OK*.

- Se ha añadido la compatibilidad con Arlo Q
- Adaptación del estado de carga en el widget cuando la cámara está conectada a la red eléctrica: se muestra un enchufe en lugar de una batería
- Soluciona problemas de compatibilidad con las dependencias
- Soluciona un problema de compatibilidad de las dependencias en *Debian Jessie*: si utilizas Jessie, debes reinstalar las dependencias aunque ya estén *en orden*
- reducción del tamaño del complemento
- Fija la imagen de las Arlo Baby

## 2019-05-24

- Mejora de la estabilidad del demonio
- Cambio del puerto predeterminado al 55064 para evitar conflictos con el complemento *RfPlayer*

## 2019-05-13

- Mejora del widget de la cámara e incorporación de opciones de personalización de la visualización (en la pestaña *Visualización* de la configuración avanzada del equipo)
- Evita la creación de dispositivos inactivos: si tienes dispositivos inactivos en Arlo, no se crearán ni se sincronizarán con Jeedom
- Mejora de la compatibilidad cuando hay varias estaciones base en la cuenta de Arlo
- Soluciona un fallo del demonio si no hay ninguna estación base (por ejemplo, si se utiliza solo con cámaras Arlo Q)

## 2019-05-12

Primera versión estable

# Documentación

[Ver la documentación]({{site.baseurl}}/{{page.pluginId}}/{{page.lang}})
