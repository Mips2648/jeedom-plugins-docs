---
layout: default
title: Documentación de Portainer
lang: es_ES
pluginId: portainer
---

# Descripción

Complemento que permite conectarse a un servidor [portainer.io](https://www.portainer.io/portainer-ce/), una solución de gestión de contenedores basada en Docker que, a su vez, se puede instalar muy fácilmente en un contenedor.
Mediante este complemento, es posible importar a Jeedom todos los Docker configurados en [portainer.io](https://www.portainer.io/portainer-ce/), así como todos sus contenedores.

El complemento también cuenta con una página de estado y un panel específico que muestra un resumen de todos los contenedores y permite realizar todas las acciones básicas, de forma similar a la página «Containers» de [portainer.io](https://www.portainer.io/portainer-ce/).

# Versiones compatibles

| Componente | Versión |
|-----------|-----------------------------|
Debian | Bullseye (11) y Bookworm (12)
| Jeedom    | >= 4.2 |

# Instalación

Para utilizar el plugin, debes descargarlo, instalarlo y activarlo como cualquier otro plugin de Jeedom.
Es necesario disponer ya de un servidor portainer.io; las distintas opciones para ello están muy bien documentadas en su página web.

# Configuración del complemento

En la configuración del plugin, hay que introducir la URL de Portainer en el formato `http://PORTAINER_SERVER:9000`, así como un nombre de usuario y una contraseña.

También puedes elegir si quieres activar o no el panel, así como el objeto principal que se utilizará al crear los dispositivos Jeedom: si aún no existe ningún dispositivo con el mismo nombre bajo ese objeto, el nuevo dispositivo Portainer tendrá como objeto principal ese objeto; de lo contrario, «Ninguno».
También es posible elegir entre dos modos de sincronización automática:

- o bien crear los nuevos contenedores que aún no existen en Jeedom y actualizar los contenedores existentes
- o simplemente actualizar los contenedores existentes

> **Tipo**
>
> La acción «Sincronizar», disponible en la página de equipos para forzar una sincronización manualmente, siempre creará los contenedores que falten. La opción anterior solo es aplicable a la sincronización automática

# Las instalaciones

En cuanto se haya configurado un usuario, el complemento intentará conectarse a portainer.io cada minuto para sincronizarse.
Todos los dispositivos a los que tiene acceso el complemento se crearán automáticamente en Jeedom; no es posible crear un dispositivo manualmente.
Es posible realizar una sincronización manual mediante el botón de la página de equipos.

Existen dos opciones para importar a Jeedom los registros de las salidas stdout y stderr. Si las opciones correspondientes están activadas en el dispositivo, los registros se leerán cada vez que se sincronice el dispositivo y estarán disponibles en la interfaz de registros de Jeedom.

# Los comandos disponibles

## Punto final

En los equipos de tipo EndPoint (instancia de Docker, agente de Portainer...), existen los siguientes comandos de información:

- **Estado** toma el valor 1 o 0, dependiendo de si el equipo está encendido y accesible o no
- **Número de CPU** indica el número de CPU del equipo
- **Memoria** indica la memoria total del equipo en bytes
- **Número de contenedores iluminados** y **Número de contenedores apagados**
- **Número de contenedores en buen estado** y **Número de contenedores en mal estado**
- **Número de volúmenes**
- **Número de imágenes**
- **Número de servicios**
- **Número de pilas**
- **URL pública**

## Contenedor

En los equipos tipo contenedor, existen los siguientes comandos de información:

- **Estado**: los valores posibles son: _created_, _running_, _paused_, _restarting_, _removing_, _exited_, _dead_
- **Estado de salud**: los valores posibles son: _none_, _starting_, _healthy_, _unhealthy_
- **Ejecución** info/binario
- **Pausado** info/binario
- **Reinicio** de info/binario
- **Dead** información/binario
- **OOMKilled** información/archivo binario
- **Dirección IP** del contenedor
- **Dirección MAC** del contenedor
- **Puerta de enlace** de red
- **Último inicio**: la fecha del último inicio
- **Última parada**: la última extinción

y los comandos de acciones:

- **Inicio**
- **Detener**
- **Reiniciar**
- **Pausa**
- **Retomar**
- **Matar**

# Registro de cambios

[Ver el registro de cambios](./changelog)

# Asistencia

Si tienes algún problema, empieza por leer los últimos temas relacionados con el plugin en [community]({{site.forum}}/tag/plugin-{{page.pluginId}}).

Si, a pesar de todo, no encuentras respuesta a tu pregunta, no dudes en crear un nuevo tema sin olvidar añadir la etiqueta del plugin ([plugin-{{page.pluginId}}]({{site.forum}}/tag/plugin-{{page.pluginId}})).

Como mínimo, deberá proporcionar:

- una captura de pantalla de la página de estado de Jeedom
- una captura de pantalla de la página de configuración del complemento
- Todos los registros disponibles del complemento, con nivel _INFO_, pegados en un `Texto preformateado` (botón `</>` en la comunidad), ¡sin archivos!
- según el caso, una captura de pantalla del error que se ha producido, una captura de pantalla de la configuración que da problemas...
