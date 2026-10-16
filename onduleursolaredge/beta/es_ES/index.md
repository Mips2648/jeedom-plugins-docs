---
layout: default
title: Documentación de Solaredge
lang: es_ES
pluginId: onduleursolaredge
---

# Descripción

El complemento permite leer los datos de producción fotovoltaica de una instalación SolarEdge a través de la API de monitorización v2.

La información disponible es la siguiente:

- la potencia de generación fotovoltaica;
- la energía generada, según el periodo seleccionado;
- la energía total generada desde la puesta en marcha de la instalación;
- las características del recinto y de sus instalaciones.

> **Importante**
>
> SolarEdge exige que el acceso externo a Jeedom se realice mediante **HTTPS con un certificado válido**.\
> No podrás utilizar el complemento sin tener este acceso.

# Versiones compatibles

| Componente | Versión |
|-----------|---------------------------|
| Debian    | Bookworm (12) y Trixie (13) |
| Jeedom    | >= 4.5 |
| PHP | >= 8.2 |

# Instalación

Para utilizar el plugin, debes descargarlo, instalarlo y activarlo como cualquier otro plugin de Jeedom.

# Configuración

## Conexión a SolarEdge

> **Importante**
>
> La API v2 utiliza autenticación OAuth. La clave API anterior ya no permite configurar esta versión del complemento.

### Obtención del ID de cliente y del secreto de cliente

Debes disponer de un **ID de cliente** y un **secreto de cliente** para acceder a OAuth de SolarEdge. Si aún no dispones de estos datos de acceso, sigue el procedimiento que se indica a continuación.

> **Importante**
>
> SolarEdge exige un acceso externo a Jeedom mediante **HTTPS con un certificado válido**. No se puede utilizar una dirección interna ni una dirección sin HTTPS como URL de redirección.

1. Visita la [plataforma para desarrolladores de SolarEdge](https://developer.solaredge.com/) y crea una cuenta.
2. Crea una aplicación. Los únicos parámetros obligatorios son el **nombre** de la aplicación y la **URL de redirección**.
3. En la URL de redirección, indica la dirección externa de Jeedom seguida de `/plugins/onduleursolaredge/core/php/oauth.php`, por ejemplo: `https://monjeedom.mondomaine.com/plugins/onduleursolaredge/core/php/oauth.php`.
4. Genera las credenciales de la aplicación activando **todos los ámbitos disponibles** (autorizaciones de acceso): `SITE_DATA` y `DEVICE_DATA`. El **Client Id** y el **Client Secret** obtenidos deberán introducirse en la configuración del complemento.

### Conexión entre Jeedom y SolarEdge

1. Comprueba que la dirección de acceso externo de Jeedom esté correctamente configurada en su configuración de red y que sea accesible desde el navegador utilizado para la autorización.
2. En la configuración del complemento, rellena los campos **ID de cliente** y **Secreto de cliente** y, a continuación, guarda los cambios.
3. Haz clic en **Conectar Jeedom y SolarEdge** y confirma la apertura de la ventana de autorización.
4. Inicia sesión con tu cuenta de SolarEdge y aprueba la vinculación.
5. Una vez que hayas vuelto a Jeedom, haz clic en **Actualizar** para comprobar que el estado es **OK**.

El complemento guarda los tokens de acceso y los renueva automáticamente. Si el estado indica que se necesita autorización, vuelve a establecer la conexión.

## Creación del dispositivo en tu Jeedom

1. Abre el menú **Plugins**, luego **Energía** y **Solaredge**.
2. Haz clic en **Añadir** y asigna un nombre al dispositivo.
3. Introduce el **ID del sitio** de SolarEdge al que tiene acceso tu cuenta.
4. Configura el objeto principal, las opciones **Activar** y **Visible**, y luego guarda los cambios.

Los datos de la instalación se guardan provisionalmente si aún no se conoce la fecha de instalación. El botón **Recargar los detalles de la instalación** permite actualizarlos: tipo, fecha de instalación, potencia máxima, fabricante, modelo y número de optimizadores.

## Configuración de los controles

La acción **Actualizar** se crea automáticamente.

Un mismo equipo puede contener varios comandos de información de producción; añade los comandos que desees con el botón **Añadir un comando**.

Para cada comando, introduce un nombre, el dato que se va a recuperar, el periodo y la unidad. Los comandos añadidos son de tipo «información numérica». Puedes elegir entre mostrarlos y guardarlos en el historial.

| Datos | Periodos disponibles | Unidades disponibles |
| -------- | ---------------------- | -------------------- |
| Producción fotovoltaica (potencia) | Cuarto de hora, hora | W, kW, MW |
| Producción fotovoltaica (energía) | Cuarto de hora, hora, día, semana, mes, año, total | Wh, kWh, MWh |
| Producción fotovoltaica total | Total | Wh |

El comando de tipo **Producción fotovoltaica total** devuelve la energía producida desde la puesta en servicio de la instalación, leyendo un contador de energía acumulada integrado en los equipos, en lugar de sumar las mediciones recibidas para cada intervalo.\
SolarEdge utiliza el valor del contador de producción si la instalación dispone de uno, o la suma de dichos contadores si hay varios. En su defecto, el valor corresponde a la suma de los contadores de energía acumulada de los inversores.\
A diferencia del comando **Producción fotovoltaica (energía)** con el periodo **Total**, este valor no se ve afectado por las lagunas en el historial de transmisión: refleja el valor real de los contadores, y no solo la suma de los intervalos recibidos.

### Actualización

Cada comando de información dispone también de un campo cron para programar su propia actualización. El botón **?** abre el asistente cron de Jeedom.

Deja el cron de un comando en blanco si no deseas añadirle una programación individual. El comando **Actualizar** actualiza todos los comandos de información del equipo, incluidos aquellos que tienen su propio cron. También se puede invocar desde un escenario.

Cada comando actualizado realiza su propia solicitud: adapta la frecuencia al número de comandos y a los límites aplicables a tu acceso a SolarEdge.

### Valores recuperados

Para las órdenes de potencia y energía, el complemento solicita las mediciones desde el inicio del periodo anterior hasta el momento de la consulta y, a continuación, toma el último valor numérico disponible en la respuesta.

Si el último punto tiene el valor «null», por ejemplo, porque el cuarto de hora actual aún no está disponible, el complemento utiliza el punto numérico anterior. Se conserva el valor «0». Por lo tanto, el valor mostrado no se corresponde necesariamente con una lectura instantánea.

Si no hay ningún valor numérico disponible, el comando no se actualiza y se registra una advertencia en los registros. En el caso de la producción total, el valor se lee directamente en el campo de energía enviado por SolarEdge.

## Migración desde la API v1

> **Atención**
>
> La migración a la API v2 requiere reconfigurar la conexión y los dispositivos. Los dispositivos antiguos se desactivan al realizar la actualización; sus antiguas tareas de actualización se eliminan.

1. **Crea tu cuenta** en la [plataforma para desarrolladores de SolarEdge](https://developer.solaredge.com/)
2. **Configura la conexión OAuth** en la configuración del complemento (ID de cliente + clave secreta de cliente).
3. **Crear los nuevos dispositivos** introduciendo el ID del sitio.
4. **Añade los comandos** que desees (potencia, energía por periodo, energía total).
5. **Configurar las programaciones** de refrigeración.
6. **Comprobar los valores recibidos**.
7. **Adapta tus escenarios, widgets, elementos virtuales, diseño**, etc. (para ello, puedes utilizar la herramienta *Reemplazar* del núcleo).
8. Una vez que todo esté comprobado, **elimina los antiguos equipos v1**.

# Registro de cambios

[Ver el registro de cambios](./changelog)

# Asistencia

Si tienes algún problema, empieza por leer los últimos temas relacionados con el plugin en [community]({{site.forum}}/tag/plugin-{{page.pluginId}}).

Si, a pesar de todo, no encuentras respuesta a tu pregunta, no dudes en crear un nuevo tema sin olvidar incluir la etiqueta del plugin ([plugin-{{page.pluginId}}]({{site.forum}}/tag/plugin-{{page.pluginId}})).

Como mínimo, habrá que presentar:

- una captura de pantalla de la página de estado de Jeedom
- una captura de pantalla de la página de configuración del complemento, ocultando el ID de cliente y el secreto de cliente
- Todos los registros disponibles del complemento, con nivel *INFO*, pegados en un `Texto preformateado` (botón `</>` en la comunidad), ¡sin archivos! En caso de problemas con los datos, el nivel *DEBUG* permite ver las respuestas de la API.
- según el caso, una captura de pantalla del error que se ha producido, una captura de pantalla de la configuración que da problemas...

Antes de publicar capturas de pantalla o registros, oculta los identificadores, los tokens de OAuth y cualquier dato personal.
