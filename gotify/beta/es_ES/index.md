---
layout: default
title: Documentación de Gotify
lang: es_ES
pluginId: gotify
---

# Descripción

Complemento que permite a Jeedom funcionar como una aplicación Gotify capaz de enviar mensajes (notificaciones) a un servidor Gotify.
Encontrarás más detalles en <a href="https://gotify.net/docs/" target="_blank">la documentación de Gotify</a>.

La ventaja de este sistema es que se puede alojar en tu propia red (basta con un contenedor Docker), por lo que tus datos siguen estando en tu poder.

# Versiones compatibles

| Componente | Versión |
|-----------|-----------------------------|
Debian | Bullseye (11) y Bookworm (12) |
| Jeedom    | >= 4.5 |

# Instalación

Para utilizar el plugin, debes descargarlo, instalarlo y activarlo como cualquier otro plugin de Jeedom.

Es necesario disponer ya de un servidor Gotify; aquí no se detallará la instalación, ya que se explica muy claramente en la página web.

# Configuración del complemento

En la configuración del complemento, habrá que introducir la URL del servidor Gotify con el siguiente formato:

```HTTP
http://yourdomain.com:32768
```

# Configuración de los dispositivos

Una vez creado un nuevo dispositivo, estarán disponibles las opciones habituales.

También tendrás que introducir el token de la aplicación que hayas creado previamente en Gotify (no lo confundas con el token de cliente).
Así pues, un dispositivo Jeedom se corresponde con una aplicación Gotify.

Si lo deseas, puedes configurar un token de cliente; esto permitirá a Jeedom consultar y eliminar los mensajes de todas las aplicaciones de ese cliente (de lo contrario, solo podrá enviarlos).

Es posible crear varios comandos de envío con diferentes prioridades (consulta la documentación de Gotify al respecto) si tu aplicación cliente las admite.

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
