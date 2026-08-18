---
layout: default
title: Documentación de InfluxDB
lang: es_ES
pluginId: influxdb
---

# Descripción

Complemento que permite conectarse a una base de datos InfluxDB. Permite enviar fácilmente la información deseada con solo seleccionar los comandos correspondientes de una lista, lo que permite externalizar el historial, que luego se puede consultar, por ejemplo, a través de Grafana.

El complemento también permite exportar el historial de comandos de Jeedom a InfluxDB.

# Versiones compatibles

> **Atención**
>
> El complemento es compatible con las versiones de InfluxDB >= 1.8 o >= 2.0. Las versiones anteriores de InfluxDB v1 < 1.8 no son compatibles.

| Componente | Versión                     |
|-----------|-----------------------------|
| Debian    | Bullseye(11) & Bookworm(12) |
| Jeedom    | >= 4.4                      |
| InfluxDB  | v1.8+ y v2                  |

# Instalación

Para utilizar el plugin, debes descargarlo, instalarlo y activarlo como cualquier otro plugin de Jeedom.

# Configuración del complemento

No hay que realizar ninguna configuración especial; el complemento utiliza, en su caso, el cronDaily para poner a cero los contadores.

# Las instalaciones

Cada dispositivo Jeedom corresponde a un conector de InfluxDB.

Cada conector se conectará y enviará los datos a una y solo una instancia de InfluxDB, pero puedes tener tantos conectores como necesites.
El complemento es compatible con InfluxDB v1.8+ y v2; el principio básico es el mismo en ambas versiones, pero la forma de conectarse cambia.

## InfluxDB v1.8+

Para cada conector, debes configurar la dirección IP de tu servidor InfluxDB, un usuario, una contraseña y el nombre de la base de datos.
Tienes la opción de activar o no el protocolo HTTPS.

![InfluxDB v1](../images/influxV1.png "InfluxDB v1")

## InfluxDB v2.0+

Para la versión 2, debes configurar la URL con el formato `https://server.my`, el token de acceso, la organización y el bucket de destino (consulta la documentación de InfluxDB).

![InfluxDB v2](../images/influxV2.png "InfluxDB v2")

> **Consejo**
> InfluxDB ofrece una versión gratuita en la nube para la v2 muy fácil de configurar, tanto para probarla como para utilizarla de forma definitiva si te conviene (limitada a una sola organización, en cuanto a volumen de datos y duración del historial). Más información: <https://www.influxdata.com/influxdb-cloud-pricing/>

## Forma de envío

También puedes elegir el modo de envío, que por defecto es la actualización automática. Este modo se puede cambiar en cualquier momento sin que ello tenga ninguna repercusión.

![Forma de envío](../images/mode.png "Mode")

- _Actualización automática_: el complemento enviará todas las mediciones seleccionadas según la programación elegida en una sola llamada; por defecto, cada minuto.
Este es el modo de funcionamiento recomendado, ya que es el más óptimo y apenas supone una carga para tu Jeedom, al tiempo que permite obtener mediciones cada minuto.
- _Tiempo real_: el complemento enviará las mediciones una a una cada vez que cambie un valor, lo que podría suponer varias llamadas por segundo para el mismo comando (todo depende de tus equipos y comandos). Este modo puede suponer una carga considerable para Jeedom, dependiendo de tu hardware y del número de comandos seleccionados, mientras que, en muchos casos, una actualización de InfluxDB por minuto es más que suficiente para obtener estadísticas útiles.
- _Historial_: permite exportar cada noche todo el historial del día anterior

Es perfectamente posible tener varios dispositivos conectados a la misma base de datos, cada uno configurado con un modo diferente y comandos distintos, si se desea que algunos comandos se envíen en tiempo real, al tiempo que se optimiza la carga para los demás.

En el modo _Actualización automática_, puedes elegir la programación, así como el valor que se enviará como marca de tiempo de la medición:

- _Hora de envío_, valor por defecto y comportamiento histórico del complemento
- _Fecha del valor del pedido_
- _Fecha de recogida del pedido_

## Selección de las mediciones que se van a enviar

En la segunda pestaña se muestran todas las órdenes seleccionadas para su envío a InfluxDB. Es posible filtrar las líneas que se muestran mediante el campo «Búsqueda».

![Configuración de comandos](../images/commands.png "Config commandes")

Es posible buscar y seleccionar los pedidos que se van a enviar mediante tres métodos:

- Búsqueda de un pedido concreto mediante el botón **Añadir un pedido**
- Búsqueda y adición de comandos múltiples mediante el botón **Añadir comandos por objeto**. Este método tiene la ventaja de que solo muestra los comandos de los equipos vinculados a un objeto concreto, por lo que la visualización será más rápida si tienes una gran cantidad de comandos (más de 10 000).
- Búsqueda y adición de comandos múltiples mediante el botón **Añadir comandos (lista)**. Esta pantalla mostrará toda la información sobre los comandos de tu Jeedom: resulta muy práctico, ya que se muestra todo, pero si tienes más de 10.000 comandos, puede tardar 30 segundos o más.

Ejemplo de búsqueda:

![Búsqueda de pedidos](../images/search.png "Recherche commandes")

1. En las pantallas de búsqueda de pedidos, es posible filtrar o buscar cualquier valor escribiendo la búsqueda en el campo situado en la parte superior de la lista.
2. La lista solo mostrará los comandos que aún no se hayan seleccionado para este equipo o conector.
3. Para seleccionar un comando y enviarlo a InfluxDB, basta con hacer clic en el botón **Añadir**. No olvides guardar la configuración del equipo una vez que hayas añadido todos los comandos que desees.

## Exportación del historial de Jeedom a InfluxDB

Para exportar el historial, debes ir a la pestaña _Medidas_, donde has configurado los comandos de tus dispositivos Jeedom que deseas enviar.

Puedes:

- o bien enviar el historial de un pedido concreto haciendo clic en el botón _Exportar_ de la línea correspondiente en las acciones
- O bien marcar o desmarcar las medidas deseadas (y marcar o desmarcar todas con los selectores de la columna) y, a continuación, hacer clic en el botón _Exportar_ situado en la parte superior de la columna.

En ambos casos, en el siguiente paso se te pedirá la fecha de inicio y la fecha de finalización deseadas para la exportación y, a continuación, se programará la tarea.
Puede tardar un poco, dependiendo de la cantidad de datos que se vayan a exportar, pero el proceso será transparente, ya que la tarea se ejecutará en segundo plano.

# Los pedidos

Los comandos del equipo/conector InfluxDB se pueden ver en la tercera pestaña:

- **Enviar todo** permite enviar todos los valores actuales de las mediciones configuradas en el equipo; no envía el historial de comandos, sino únicamente el valor actual.
- **Estado** indica el estado del conector; será igual a 1 si no se detecta ningún problema y a 0 en caso contrario.
- **Fecha del último envío** indica la fecha y la hora del último envío realizado con éxito
- **Fecha del último error** y **Descripción del último error** indican la fecha y la hora del último envío con error, así como el mensaje de error
- **Total de mediciones** y **Total diario de mediciones**: contadores de las mediciones enviadas: total y diario.

# Definiciones

Un **punto** en InfluxDB representa un dato caracterizado por cuatro componentes: la **medida**, un conjunto de **campos**, un conjunto de **etiquetas** y la información de **marca de tiempo**.

A continuación se muestra el enlace que establece el complemento entre los conceptos de InfluxDB y los de Jeedom:

| Jeedom | InfluxDB | Descripción |
| --- | --- | --- |
| Nombre del comando | Measurement | Una medida en InfluxDB es similar a una tabla SQL. |
| Fecha de valor del pedido | Marca de tiempo | Es la información de marca de tiempo de los datos. |
| Nombre del equipo | Campo (clave) | La clave de un campo es similar al nombre de una columna en una tabla SQL. |
| Valor del pedido | Field(value) | Es el dato del punto. |

## Las etiquetas

Las etiquetas en InfluxDB son datos adicionales opcionales que se pueden asociar a los puntos.
Permiten filtrar los resultados durante una búsqueda.
Las siguientes etiquetas pueden asociarse a cada punto enviado; hay que seleccionarlas en la página de configuración del equipo.
Esta lista se puede completar si necesitas más:

| Etiqueta (clave) | Etiqueta (valor) |
| --- | --- |
| Complemento | nombre del complemento |
| Objeto | nombre del objeto/pieza de Jeedom o «Ninguno» |
| CommandName | nombre del comando |
| GenericType | tipo genérico del comando |

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
