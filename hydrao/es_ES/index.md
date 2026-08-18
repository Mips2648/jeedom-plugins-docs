---
layout: default
title: Documentación de Hydrao
lang: es_ES
pluginId: hydrao
---

# Descripción

Complemento que permite integrar los cabezales de ducha Hydrao.

# Versiones compatibles

| Componente | Versión                     |
|-----------|-----------------------------|
Debian | Bullseye (11) y Bookworm (12) |
| Jeedom    | >= 4.5                      |

# Instalación

Para utilizar el plugin, debes descargarlo, instalarlo y activarlo como cualquier otro plugin de Jeedom.

# Configuración del complemento

En la configuración del complemento, debes indicar tu nombre de usuario y contraseña de la aplicación Hydrao, así como la clave API. Para obtener tu clave API, debes ponerte en contacto directamente con el servicio de asistencia de Hydrao.

También puedes configurar cuántas duchas anteriores deben sincronizarse con Jeedom; esto resulta especialmente útil durante la primera sincronización. Más información a continuación.

# Las instalaciones

En cuanto la configuración del complemento sea correcta, este sincronizará tus cabezales de ducha.
Se realizará una sincronización cada dos horas y podrás actualizar manualmente el sistema mediante el comando correspondiente en el dispositivo.

> **Atención**
>
> Hydrao limita considerablemente el número de llamadas a la API; si aparece este error en el registro: «Login failed: (429) - response received: {"message":"Limit Exceeded"}», te recomiendo que te pongas en contacto directamente con ellos para pedirles que aumenten el límite.

El complemento creará un dispositivo *Cabezal* por cada cabezal activado en tu cuenta. Cada dispositivo *Mando de ducha* dispondrá de los comandos de información que se describen a continuación, que proporcionan datos sobre la *última ducha registrada*, pero las duchas anteriores que aún no se hayan sincronizado con Jeedom también se sincronizarán y se incluirán en el historial de comandos de Jeedom, con la hora registrada por Hydrao. El número máximo de duchas que se pueden sincronizar del pasado se puede seleccionar en la configuración del complemento.

> **Atención**
>
> Como ya sabes, la fecha de sincronización entre el cabezal de ducha y Hydrao no es necesariamente la fecha real en la que te duchaste, y como esa fecha de sincronización es la única que conoce el complemento, es imposible saber la fecha real en la que te duchaste, a menos que sincronices tu cabezal de ducha con Hydrao cada vez que te duches. Esta es una limitación del sistema que ofrece Hydrao, relacionada con el hecho de que los cabezales deben sincronizarse periódicamente con la nube de Hydrao a través de vuestro teléfono.

El complemento también creará un dispositivo llamado *Panel de control* que ofrece información y estadísticas generales relacionadas con tu cuenta (y no con una ducha en concreto).

# Los pedidos

En un dispositivo *Pommeau* existen los siguientes controles:

- **Fecha de sincronización** indica la última fecha de sincronización entre el pomo y Hydrao
- **Volumen** indica el número de litros consumidos durante la última ducha
- **Duración** indica la duración, en segundos, de la última ducha
- **Temperatura** indica la temperatura media del agua de la última ducha
- **Tiempo de enjabonado** y **número de enjabonados** de la última ducha (si se conoce)
- **Caudal** de la última ducha
- **Consumo medio** de las últimas 100 duchas

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
