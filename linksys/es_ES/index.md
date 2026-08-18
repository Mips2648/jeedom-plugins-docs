---
layout: default
title: Documentación de Linksys
lang: es_ES
pluginId: linksys
---

# Descripción

Complemento que permite controlar determinados aspectos de tus routers Linksys compatibles.

Lo que hay disponible:

- Modelo y firmware
- Estado de la red de invitados y del control parental
- Número de dispositivos conectados al router por tipo de conexión
- Activar/Desactivar el control parental
- Activar/Desactivar la red de invitados
- Reinicio
- Activar/desactivar los LED del router
- Actualización del firmware
- Estado de la WAN

> **Importante**
>
> El complemento se ha probado con un router Linksys Velop y debería funcionar también con otros modelos.

# Versiones compatibles

| Componente | Versión                     |
|-----------|-----------------------------|
Debian | Bullseye (11) y Bookworm (12) |
| Jeedom    | >= 4.5                      |

# Instalación

Para utilizar el plugin, debes descargarlo, instalarlo y activarlo como cualquier otro plugin de Jeedom.

No es necesario realizar ninguna configuración en el plugin.

## Configuración de los dispositivos

El complemento se encuentra en el menú Complementos → Comunicación.

Una vez creado un nuevo dispositivo, estarán disponibles las opciones habituales.

A continuación, deberá introducir la dirección IP local del router, el nombre de usuario de la cuenta de administrador (si no es «admin») y la contraseña.

También puedes configurar la frecuencia de actualización de los datos.

# Créditos

Este complemento fue creado inicialmente por @hugoks3.

Este complemento se ha inspirado en el trabajo de [reujab](https://github.com/reujab) a través de su biblioteca Go para JNAP: [linksys](https://github.com/reujab/linksys)

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
