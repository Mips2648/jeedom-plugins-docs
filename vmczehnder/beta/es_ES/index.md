---
layout: default
title: Documentación sobre sistemas de ventilación mecánica controlada (VMC) (Zehnder/Storkair)
lang: es_ES
pluginId: vmczehnder
---

# Descripción

Complemento que permite conectar un sistema de ventilación mecánica controlada (VMC) de la marca Zehnder —también conocido como Storkair, ComfoAir o Wernig— a través del puerto serie (RS232) que utiliza el CCEase/ComfoSense.
Los siguientes modelos deberían ser compatibles, aunque no todos se han probado:

- ComfoAir 180, 200, SL 330, 350
- ComfoD 250/350/450/550
- WHR 920/930/950/960

# Versiones compatibles

| Componente | Versión                     |
|-----------|-----------------------------|
| Debian    | Bullseye(11) & Bookworm(12) |
| Jeedom    | >= 4.5                      |

# Instalación de equipos

## Requisitos previos

Necesitarás una Raspberry Pi (no hace falta que sea un modelo potente, basta con una Pi Zero W, o un modelo antiguo si tienes alguno por ahí) o cualquier otro sistema que funcione con Debian Buster como mínimo (no se ha probado con otras distribuciones).
Si tu Jeedom está cerca del sistema de ventilación mecánica controlada (VMC), puedes utilizarlo, pero te recomiendo separar ambas funciones.
El resto de la documentación da por hecho que dispones de una Raspberry Pi, distinta de Jeedom.

Debes instalar tu Raspberry Pi, conectarla a la red con una dirección IP fija y activar SSH.
Esta Raspberry albergará un demonio que se encargará de la conexión entre el sistema de ventilación mecánica controlada (a través de su interfaz serie, véase más abajo) y el complemento (a través de MQTT). La conexión SSH se utiliza para la instalación y la configuración del demonio remoto.

El complemento requiere una instalación operativa del complemento «MQTT Manager (MQTT2)»; si aún no lo tienes instalado en tu sistema, se instalará automáticamente, pero tendrás que completar su configuración (consulta la documentación de *MQTT Manager*).

En este punto, se recomienda actualizar ya tu Raspberry Pi (apt-get update, apt-get upgrade) para agilizar la instalación del demonio más adelante (véase más abajo).

> **Importante**
>
> Se debe instalar sudo en el equipo conectado a la VMC; el usuario que utilice el complemento debe pertenecer al grupo sudoers y tener permiso para ejecutar un comando sudo sin tener que confirmar su contraseña.

## Conexión del sistema de ventilación mecánica controlada (VMC)

El complemento se comunicará con el sistema de ventilación mecánica controlada (VMC) a través de la interfaz RS232. En el VMC, esta interfaz está disponible:

- ya sea a través de un bloque de terminales (4 hilos) al que quizá esté conectado el CCEase, si es que tienes uno,
- ya sea un puerto DB9,
- o, en ocasiones, un puerto RJ45.

![Imagen de la interfaz serie](../images/connectorBoard_picture.jpg "Interface série")

![Esquema de la interfaz serie](../images/connectorBoard_schema.png "Schéma interface série")

Tendrás que conectar esta interfaz a la Raspberry Pi.
Existen adaptadores DB9-USB; es la opción más sencilla si tu sistema de ventilación mecánica controlada (VMC) dispone de un puerto DB9.

![Adaptador DB9-USB](../images/db9_usb_adaptor.jpg "Adaptateur db9-usb")

Si no dispone del puerto DB9, también existen adaptadores de bornero a DB9 para conectar posteriormente un adaptador DB9-USB; en ese caso, deberá conectar los cables al bornero del sistema de ventilación mecánica controlada (VMC) o al puerto RJ45.

![Adaptador de regleta de bornes_db9](../images/bornier_db9_adaptor.jpg "Adaptateur bornier_db9")

# Instalación del complemento

> **Consejo**
>
> Para utilizar el plugin, debes descargarlo, instalarlo y activarlo como cualquier otro plugin de Jeedom.

No es necesario realizar ninguna configuración adicional aquí.

# Configuración de los dispositivos

## Creación del dispositivo en tu Jeedom

- Accede a la página de configuración de los equipos a través del menú «Plugins», luego «Confort» y «VMC (Zehnder/Storkair)»;
- Haz clic en «Añadir» y ponle un nombre;
- Accederás a la página de configuración del dispositivo, donde podrás configurar las opciones habituales en Jeedom (no olvides activar tu nuevo dispositivo).

![Configuración del equipo](../images/eqlogic_config.png "Configuration équipement")

## Conectividad entre el complemento y la Raspberry Pi (configuración de SSH)

A continuación, debes introducir la dirección IP de la Raspberry que has instalado previamente y que está conectada al sistema de ventilación mecánica controlada (VMC), el puerto SSH (si es diferente del puerto predeterminado), el nombre de usuario (si no es «pi») y su contraseña.

> **Importante**
>
> El usuario configurado debe pertenecer al grupo «sudoers» y tener permiso para ejecutar «sudo» sin tener que volver a introducir la contraseña.

**Guarda** tu equipo y, si la configuración es correcta, puedes pasar al siguiente paso.

## Instalación y configuración del demonio

### Primera instalación

En principio, tras guardar la configuración del equipo, el menú desplegable *Puerto serie VMC* debería mostrar la lista de dispositivos USB detectados en la Raspberry Pi. Si no es así:

- Comprueba los datos de inicio de sesión: IP, nombre de usuario y contraseña
- Comprueba que hayas conectado correctamente el adaptador USB al Pi.

Selecciona el puerto correcto y **guarda** el equipo.

Ahora puedes hacer clic en el botón **Instalar, configurar y reiniciar el servicio**. Esto llevará un poco de tiempo, así que ten paciencia; recibirás notificaciones periódicas sobre el progreso.

La instalación incluye:

- copiar los archivos necesarios en la Raspberry Pi (a través de SSH);
- instalar las dependencias;
- iniciar el servicio remoto

Si todo va bien, el demonio/servicio empezará a enviar la información sobre el sistema de ventilación mecánica controlada y el *estado* pasará a *OK*

### Cambio de configuración

Si cambia el puerto serie que se va a utilizar, deberá, tras guardar la configuración del equipo, volver a enviarla. Para ello, puede hacer clic en el botón **Configurar el servicio y reiniciar**

# Configuración del sistema de ventilación mecánica controlada

La acción «Recargar configuración» permite leer la configuración desde el sistema de ventilación mecánica controlada (VMC), que luego se puede consultar en la pestaña *Configuración*.
Normalmente no es necesario realizar esta acción, ya que la configuración se actualiza automáticamente cada vez que se inicia el servicio.

La pantalla muestra un resumen de la información del sistema de ventilación mecánica controlada (VMC), los contadores de consumo y la configuración de las velocidades de ventilación.

# Controles

Todos los pedidos creados se encuentran, como es lógico, en la pestaña *Pedidos*.
Encontrarás un botón para volver a crear los comandos que faltan en tu equipo. Realizar esta acción no conlleva ningún riesgo, ya que nunca se sustituirá ni se sobrescribirá un comando existente.

Además de los controles de información (velocidad actual de la ventilación, temperaturas registradas...) y del control de actualización de dicha información, existen:

- un comando para cada velocidad de ventilación (0-ausente, 1-lenta, 2-media, 3-rápida) para definir la velocidad de ventilación correspondiente.
Puedes utilizar estos comandos en tus escenarios para, por ejemplo, reducir la velocidad cuando no haya nadie en casa, durante las vacaciones o por la noche, o aumentarla en caso de que suba la humedad en el baño y/o la cocina (mediante sensores independientes).
- un comando para definir la temperatura de confort, que admite un valor comprendido entre 12 °C y 28 °C. La temperatura de confort determina si el sistema de ventilación mecánica controlada (VMC) utiliza o no el bypass (para enfriar la vivienda en caso de sobrecalentamiento; véase el manual del VMC). No se recomienda cambiar este valor con frecuencia, ya que el VMC se encargará de su gestión una vez definida la temperatura, y es probable que esta ya esté configurada correctamente en su instalación.

El comando *Conectado* indica el estado del demonio remoto.

# Rendimiento

El complemento calcula el rendimiento del sistema de ventilación mecánica controlada (VMC) mediante la fórmula del rendimiento del aire fresco: ηt = (T°C del aire insuflado – T°C del aire fresco) / (T°C del aire extraído – T°C del aire fresco)

El resultado obtenido te da una indicación del grado de suciedad de tus filtros: unos filtros sucios reducirán el rendimiento del sistema de ventilación mecánica controlada.

# Widget

![Ejemplo del widget básico](../images/widget.png "Exemple du widget de base")

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

# ¿Te gusta el plugin?

<a href="https://www.buymeacoffee.com/mips2648" target="_blank"><img src="https://cdn.buymeacoffee.com/buttons/default-orange.png" alt="Buy Me A Coffee" height="41" width="174"></a>
