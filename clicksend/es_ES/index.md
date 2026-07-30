---
layout: default
title: Documentación de ClickSend
lang: es_ES
pluginId: clicksend
---

# Descripción

Complemento para integrar la plataforma [ClickSend](https://www.clicksend.com), que permite enviar mensajes de texto (SMS) o de voz (TTS)

# Versiones compatibles

| Componente | Versión |
|-----------|-----------------------------|
Debian | Bullseye (11) y Bookworm (12) |
| Jeedom    | >= 4.5 |

# Instalación

Para utilizar el plugin, debes descargarlo, instalarlo y activarlo como cualquier otro plugin de Jeedom.

# Configuración del complemento

Aquí no hay que realizar ninguna configuración.

# Configuración de los dispositivos

Empieza por crear una cuenta en [ClickSend](https://www.clicksend.com) y asegúrate de tener saldo en ella.

A continuación, en la sección «Developers > API Credentials», debes añadir una nueva «subaacount», elegir un nombre de usuario y generar una clave API.

En Jeedom, tras crear un nuevo dispositivo, están disponibles las opciones habituales.
También tendrás que configurar el nombre de usuario y la clave API de tu cuenta de Clicksend.

## Controles

![comandos](./../images/commands.png)

En la pestaña «Comandos» verás un comando **Actualizar** que permite actualizar el saldo restante; esta información también se actualiza automáticamente cada noche, así como un comando de información **Saldo**.

Puedes añadir comandos para enviar mensajes a través del botón *Añadir un comando*. Tendrás que darle un nombre, elegir el tipo *SMS* o *Llamada (TTS)* e introducir el número de teléfono en formato internacional.

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
