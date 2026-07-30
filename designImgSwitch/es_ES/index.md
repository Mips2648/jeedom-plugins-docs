---
layout: default
title: Documentación Diseño Imagen
lang: es_ES
pluginId: designImgSwitch
---

# Descripción

Complemento que permite cambiar automáticamente la imagen de fondo de tus diseños en función del tiempo.
La información meteorológica, así como la hora de salida y puesta del sol, se obtendrá bien a través del complemento oficial de meteorología (integración automática), bien mediante los comandos que elijas con configuración manual.

# Versiones compatibles

| Componente | Versión |
|-----------|-----------------------------|
Debian | Bullseye (11) y Bookworm (12) |
| Jeedom    | >= 4.3 |

# Instalación

Para utilizar el plugin, debes descargarlo, instalarlo y activarlo como cualquier otro plugin de Jeedom.
También tendrás que instalar y configurar el plugin oficial de el tiempo (weather) si quieres utilizar la integración automática.

No es necesario realizar ninguna configuración en el plugin.

# Configuración de los dispositivos

El complemento se encuentra en el menú Complementos → Tiempo.

Una vez creado un nuevo dispositivo, estarán disponibles las opciones habituales.

Debes seleccionar los diseños en los que quieras cambiar la imagen de fondo en función de las condiciones meteorológicas.

Es necesario proporcionar comandos de información que indiquen la hora de la salida y la puesta del sol en formato Jeedom (HHMM), así como codificar las condiciones para cada una de las situaciones meteorológicas, de modo que el complemento pueda deducir la imagen de fondo que debe utilizarse.

Las imágenes de fondo se pueden personalizar a través de la pantalla de configuración de los dispositivos.

# Activación del equipo

Una vez realizada la configuración, puedes activar el equipo y guardar los cambios.
Los diseños seleccionados se actualizarán inmediatamente cada vez que cambien las condiciones meteorológicas, así como a la hora de la salida y la puesta del sol.
No es necesario realizar ninguna otra acción ni aplicar ningún otro escenario.

# Controles

El equipo dispone de un botón **Actualizar** para actualizar manualmente los diseños relacionados.
En principio, esta opción no debe utilizarse nunca, ya que las imágenes de fondo se actualizarán automáticamente cada vez que sea necesario.

Un comando info **Condición** proporciona la última condición meteorológica calculada, que tomará uno de los siguientes valores: _Niebla_, _Nieve_, _Nube_, _Tormenta_, _Lluvia_, _Sol_, _Viento_, _Por defecto_.

Una orden de información **Fase del día** tendrá uno de los siguientes valores: _Día_, _Noche_, en función de la fase del día actual que haya utilizado el complemento para elegir la imagen.

# Registro de cambios

[Ver el registro de cambios](./changelog)

# Asistencia

Si tienes algún problema, empieza por leer los últimos temas relacionados con el plugin en [community]({{site.forum}}/tag/plugin-{{page.pluginId}}).

Si, a pesar de todo, no encuentras respuesta a tu pregunta, no dudes en crear un nuevo tema sin olvidar incluir la etiqueta del plugin ([plugin-{{page.pluginId}}]({{site.forum}}/tag/plugin-{{page.pluginId}})).

Como mínimo, habrá que presentar:

- una captura de pantalla de la página de estado de Jeedom
- una captura de pantalla de la página de configuración del complemento
- Todos los registros disponibles del complemento, con nivel _INFO_, pegados en un `Texto preformateado` (botón `</>` en la comunidad), ¡sin archivos!
- según el caso, una captura de pantalla del error que se ha producido, una captura de pantalla de la configuración que da problemas...
