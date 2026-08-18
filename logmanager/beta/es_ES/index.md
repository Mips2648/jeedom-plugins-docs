---
layout: default
title: Documentación de LogManager
lang: es_ES
pluginId: logmanager
---

# Descripción

Complemento que permite una gestión personalizada de los registros en tus escenarios.
Se pueden crear tantos archivos de registro como se desee, y se pueden establecer diferentes niveles de registro para cada archivo.
Esto te permite organizar los registros de tus escenarios según tus preferencias; por ejemplo, agrupar todas las acciones realizadas en un dispositivo en el mismo registro, independientemente del escenario.

La consulta de los registros se realiza a través de la interfaz estándar de Jeedom.
La purga de los registros también se gestiona desde la configuración general de Jeedom.

# Versiones compatibles

| Componente | Versión                     |
|-----------|-----------------------------|
Debian | Bullseye (11) y Bookworm (12) |
| Jeedom    | >= 4.2                      |

# Instalación

Para utilizar el plugin, debes descargarlo, instalarlo y activarlo como cualquier otro plugin de Jeedom.

# Configuración de los dispositivos

El complemento se encuentra en el menú Complementos → Programación.

Una vez creado un nuevo dispositivo, estarán disponibles las opciones habituales.

Cada dispositivo corresponde a un archivo de registro; el nombre del dispositivo se utilizará como nombre del archivo de registro.

> **Consejo**
>
> Para evitar posibles problemas, el nombre del dispositivo debe estar compuesto únicamente por letras de la a a la z, en minúsculas o mayúsculas, y por el carácter de subrayado «_»; el primer carácter debe ser una letra.

Además, puedes seleccionar el nivel de registro que se va a escribir: Depuración, Información, Advertencia, Error.

# Los pedidos

Cada equipo (registro) dispone de un comando de tipo mensaje por nivel de registro:

- depuración
- información
- advertencia
- error

Basta con llamar al comando deseado con el mensaje y el registro se escribirá según el nivel de registro configurado en el equipo.

Dependiendo de la configuración, el complemento generará un evento (solo si el mensaje se ha registrado realmente en el registro).
Este evento puede utilizarse como desencadenante de un escenario, lo cual resulta útil si deseas realizar acciones personalizadas tras registrarse un determinado nivel de registro:

- #lm-debug#
- #lm-info#
- #lm-warning#
- #lm-error#

También existen los siguientes comandos, que tienen el mismo comportamiento que las acciones manuales correspondientes en Jeedom:

- **Vaciar**: vaciar el archivo de registro
- **Eliminar**: eliminar el archivo de registro

# El widget

Hay dos opciones:

- o bien se mostrará el contenido del registro en el mosaico, sin los controles del equipo.
- se mostrará un widget estándar con los mandos seleccionados (que se deben configurar en la página «Mandos» del equipo).

La selección se realiza en la configuración del equipo.

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
