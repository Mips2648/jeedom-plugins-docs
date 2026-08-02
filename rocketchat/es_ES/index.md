---
layout: default
title: Documentación de Rocket.Chat
lang: es_ES
pluginId: rocketchat
---

# Descripción

Complemento que permite conectarse a un servidor de Rocket.chat. Rocket.chat es una plataforma de mensajería colaborativa (similar a Slack, HipChat...).
El complemento gestiona las consultas (en los escenarios), las interacciones y el envío de archivos adjuntos (por ejemplo, imágenes de la cámara).
La ventaja de esta solución es que se puede alojar en tu propia casa (basta con un Docker), por lo que tus datos siguen estando en tu poder.

# Versiones compatibles

| Componente | Versión |
|-----------|-----------------------------|
Debian | Bullseye (11) y Bookworm (12) |
| Jeedom    | >= 4.5 |

# Instalación

Para utilizar el plugin, debes descargarlo, instalarlo y activarlo como cualquier otro plugin de Jeedom.
Es necesario disponer ya de un servidor Rocket.chat; las diferentes soluciones para ello están muy bien documentadas en su página web.
En este, asegúrate de crear un usuario con el rol «bot».

# Configuración del complemento

En la configuración del plugin, tendrás que introducir la URL del servidor de RocketChat en el formato `https://IP_SERVER:3000`, así como el nombre de usuario y la contraseña de tu bot.

# Las instalaciones

En cuanto se inicie el demonio y tu bot haya podido conectarse, el complemento creará un dispositivo por cada canal existente en tu servidor (siempre que el bot tenga acceso).

Cada dispositivo dispone de un comando «action» para enviar un mensaje al canal, así como de dos comandos «info» que muestran el último mensaje enviado (por un usuario distinto del bot) y el nombre del usuario.

Por defecto, cuando se recibe un mensaje en el canal, el complemento creará un comando correspondiente al usuario que lo haya enviado (si aún no existe).

El equipo dispone de una opción para desactivar este comportamiento.
![Configuración del equipo](../images/device.png "Config équipement")

Estos comandos permiten enviar un mensaje al canal del dispositivo para notificar al usuario correspondiente (por ejemplo: `@Mips Este es un mensaje de prueba`).

# Opciones de los comandos de mensajes

En los comandos *mensajes* del complemento hay un campo llamado *Opciones*. Actualmente solo hay una opción: la posibilidad de especificar un archivo accesible localmente para enviarlo (por ejemplo, una captura de cámara que ya se encuentre en tu Jeedom).
Hay que introducir una configuración similar a esta: `file=/path/to/file description="descripción de mi archivo"`

Asegúrate de poner comillas si hay espacios en la ruta o en la descripción (si no, no es necesario); la descripción es opcional.

> **Consejo**
>
> Esto no es necesario al enviar una nueva captura desde el complemento de cámara (por ejemplo); en este caso, basta con utilizar el comando adecuado del complemento de cámara en tu escenario y especificar en él el comando *message* del complemento *Rocket.Chat* para el envío.

# Interacciones

Para que las interacciones funcionen, es necesario que el complemento conozca al usuario, por lo que debe haberse creado el comando correspondiente (véase más arriba).

A continuación, en la pestaña «Control», hay que seleccionar el usuario de Jeedom correspondiente al usuario de Rocket.Chat seleccionándolo de la lista. Es posible activar o desactivar la gestión de las interacciones para cada usuario.
![Comandos](../images/commands.png «Comandos»).

En los canales públicos o en los grupos de chat privados, tu bot (el complemento) solo responderá a las interacciones si se le menciona en el canal (p. ej.: `@jeedombot Enciende la radio`), con el fin de evitar que responda `Lo siento, no lo he entendido` a cada mensaje intercambiado entre otros usuarios.
Esto no ocurre en los mensajes privados directos entre tú y el bot.

# Registro de cambios

[Ver el registro de cambios](./changelog)

# Asistencia

Si tienes algún problema, empieza por leer los últimos temas relacionados con el plugin en [community]({{site.forum}}/tag/plugin-{{page.pluginId}}).

Si, a pesar de todo, no encuentras respuesta a tu pregunta, no dudes en crear un nuevo tema sin olvidar incluir la etiqueta del plugin ([plugin-{{page.pluginId}}]({{site.forum}}/tag/plugin-{{page.pluginId}})).

Como mínimo, habrá que presentar:

- una captura de pantalla de la página de estado de Jeedom
- una captura de pantalla de la página de configuración del complemento
- Todos los registros disponibles del complemento, con nivel *INFO*, pegados en un `Texto preformateado` (botón `</>` en la comunidad), ¡sin archivos!
- según el caso, una captura de pantalla del error que se ha producido, una captura de pantalla de la configuración que da problemas...
