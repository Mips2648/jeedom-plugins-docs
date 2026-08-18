---
layout: default
title: Documentación de Miele
lang: es_ES
pluginId: miele
---

# Descripción

Complemento que permite integrar todos los aparatos de la gama Miele@Home.
Es posible acceder a los datos de los dispositivos, supervisarlos y realizar determinadas acciones (dependiendo del dispositivo).

# Versiones compatibles

| Componente | Versión                     |
|-----------|-----------------------------|
| Debian    | Bullseye(11) & Bookworm(12) |
| Jeedom    | >= 4.4                      |

# Instalación

Para utilizar el plugin, debes descargarlo, instalarlo y activarlo como cualquier otro plugin de Jeedom.
Debes tener una cuenta de usuario de Miele con al menos un dispositivo compatible con Miele@Home vinculado y, por último, <a href="https://www.miele.com/f/com/en/register_api.aspx" target="_blank">activar el acceso a la API</a>

La instalación o actualización de las dependencias suele realizarse de forma automática. Si no es así, puedes iniciar la instalación manualmente. Se requiere como mínimo Python 3.11: se instalará automáticamente si es necesario, pero puede tardar un tiempo en una configuración pequeña. Por favor, espera y no interrumpas la instalación.

# Configuración del complemento

En la configuración del plugin, habrá que introducir el _Client Id_ y el _Client Secret_ recibidos, que permiten el acceso a la API, y guardar los cambios.
Inicia el servicio y, a continuación, haz clic en el botón «Vincular Jeedom y Miele@Home» y sigue las instrucciones. Se abrirá una nueva pestaña en la página web de Miele, donde deberás iniciar sesión con tus datos de acceso de Miele para validar la vinculación.

Si todo ha ido bien, al volver a la página de configuración deberías ver que el estado de la conexión es ahora _OK_.

![Configuración](../images/config.png "Configuration")

# Las instalaciones

En cuanto se haya completado con éxito la autenticación, el complemento sincronizará tus dispositivos. Creará los dispositivos que falten con sus comandos y actualizará el estado de todos los dispositivos conectados. A partir de ese momento, la actualización de los comandos se realizará en tiempo real (siempre que el demonio esté en ejecución).

> **Consejo**
>
> El complemento nunca eliminará un equipo de tu Jeedom. Si, efectivamente, un equipo ya no se corresponde con ningún dispositivo que tengas, elimínalo manualmente.

En la página de configuración de un dispositivo, hay un botón que permite volver a crear los comandos que faltan (útil si has eliminado un comando por error).

# Los pedidos

A continuación encontrarás la descripción de todos los comandos que pueden estar disponibles en tus dispositivos, según su tipo y funcionalidad. Es normal que no todos los comandos descritos a continuación estén presentes en tus dispositivos: esto depende de cada dispositivo, y el complemento lo gestiona de forma dinámica.

Además, para poder realizar una acción, el dispositivo debe encontrarse en un estado determinado. Por ejemplo, no es posible detenerlo si no se ha puesto en marcha.

## Mandos comunes a todos los dispositivos

- **Actualizar**: Actualizar la información del dispositivo.
- **Estado** y **Descripción del estado**: indican el estado del dispositivo (numérico) y su descripción, respectivamente (véase más abajo la lista de estados posibles)
- **Error**: valor binario que indica si el dispositivo presenta un error

## Información y medidas generales

A continuación encontrarás los comandos disponibles para distintos dispositivos, dependiendo de si se pueden encender o apagar, o de si disponen de una puerta o de iluminación asociada.

- **Estado**: comando de información/binario que indica si el dispositivo está encendido o apagado
- **Encender**: Encender el aparato.
- **Apagado**: Apagar el aparato.
- **Notificación**: valor binario que indica si hay una notificación activa
- **Puerta**: valor binario que indica si una o varias puertas del aparato están abiertas
- **Luz**: valor binario que indica el estado de la luz del dispositivo (si procede)
- **Encender la luz** y **Apagar la luz**

## Comandos de «programa»

Estos mandos suelen encontrarse en lavadoras, secadoras, lavavajillas, cafeteras, hornos (tradicionales, de vapor, microondas o combinados), frigoríficos, congeladores (o combinados) y vinotecas.

- **Inicio**: Iniciar el dispositivo; el dispositivo debe estar en el estado _4-Programado y en espera de inicio_.
- **Pausa**: Poner el dispositivo en pausa.
- **Apagar**: Apagar el dispositivo; el dispositivo debe estar en el estado _4-Programado y en espera de arranque_, _5-En funcionamiento_ o _6-Pausa_.
- **Tipo de programa**: indica el programa en curso (véase más abajo la lista de valores posibles conocidos)
- **Nombre del programa**: el nombre del programa que se está reproduciendo en los dispositivos compatibles con esta función.
- **Fase**: la fase actual del programa
- **Tiempo restante**: el tiempo que queda, en horas y minutos, hasta que finalice el programa; formato HHMM
- **Inicio en**: el tiempo que falta para el próximo inicio programado; formato HHMM
- **Tiempo transcurrido**: el tiempo transcurrido desde el inicio del programa; formato HHMM
- **Iniciar en**: Comando de acción para poner en marcha el dispositivo en un plazo determinado (formato HHMM).
- **Iniciar programa**: Iniciar un programa concreto.
- **Temperatura del programa**: la temperatura objetivo del programa
- **Temperatura**: la temperatura actual del aparato (por ejemplo, tu horno está programado a 180 °C, pero solo alcanza los 70 °C)

**Tiempo restante**, **Inicio en** y **Tiempo transcurrido** son, por tanto, datos numéricos en formato HHMM que se pueden utilizar directamente en un escenario, por ejemplo (con el bloque _EN_ o _A_), pero si se muestran en un widget, el complemento se encarga de hacerlos legibles y mostrará el valor en formato `hh:mm`, por ejemplo `01:30` o `--:--` si el valor es 0; lo que significa que la información no es relevante en el estado actual del dispositivo, que no hay ningún programa en curso y que no hay ningún programa programado.

## Controles de «temperatura»

Estos mandos suelen encontrarse en hornos (tradicionales, de vapor, microondas o combinados), frigoríficos, congeladores (o combinados) y vinotecas.

- **Temperatura del programa 1**: Temperatura objetivo del programa 1.
- **Temperatura 1**: Temperatura medida 1.
- **Temperatura del programa 2**: Temperatura objetivo del programa 2.
- **Temperatura 2**: Temperatura medida 2.
- **Temperatura del programa 3**: Temperatura objetivo del programa 3.
- **Temperatura 3**: Temperatura medida 3.

## Lavadora, secadora, lavavajillas

- **Velocidad de rotación**: Velocidad de rotación en revoluciones por minuto (rpm)
- **Nivel de secado**: Consulta a continuación la lista de valores posibles
- **Consumo de agua**: Consumo actual de la máquina en litros
- **Consumo energético**: Consumo actual de la máquina en kWh
- **Previsión de consumo de agua**: Previsión del consumo de agua (en %).
- **Previsión energética**: Previsión del consumo energético (en %).

## Campana extractora

- **Nivel de ventilación**: Valor de 1 a 4
- **Seleccionar nivel de ventilación**: Selecciona el nivel de ventilación (del 1 al 4)
- **Definir colores**: Definir el color de la iluminación del dispositivo.

## Frigoríficos, congeladores y vinotecas

- **Iniciar Freezing**: Iniciar el modo de congelación rápida.
- **Detener la congelación**: Detener el modo de congelación rápida.
- **Iniciar refrigeración**: Iniciar el modo de refrigeración intensiva.
- **Desactivar refrigeración**: Desactivar el modo de refrigeración intensiva.
- **Modo**: Selecciona el modo de funcionamiento (Normal, Descanso, Fiesta, Vacaciones).

# Valores posibles de los comandos «infos»

## Comando de información «Estado»

- 1 = APAGADO
- 2 = ENCENDIDO
- 3 = PROGRAMADO
- 4 = PROGRAMADO, A LA ESPERA DE INICIARSE
- 5 = EN MARCHA
- 6 = PAUSA
- 7 = FIN DEL PROGRAMA
- 8 = FALLO
- 9 = PROGRAMA INTERRUMPIDO
- 10 = INACTIVO
- 11 = RETENCIÓN DE ENJUAGUE
- 12 = SERVICIO
- 13 = SUPERCONGELACIÓN
- 14 = SUPERENFRIAMIENTO
- 15 = SOBRECALENTAMIENTO
- 146 = SUPERENFRIAMIENTO_SUPERCONGELACIÓN
- 255 = NO CONECTADO

## Información sobre el comando «Programa»

Esta lista no es exhaustiva; puede haber otros valores.

- Modo de funcionamiento normal
- Programa propio
- Programa automático
- Programa de limpieza y mantenimiento

## Comando de información «Fase»

Estas listas no son exhaustivas; puede haber otros valores.

### Lavavajillas

- Lavado a mano
- Aclarado
- Enjuague final
- Secado
- Finalizado

### Horno y cajón calentador

- PreHeat
- Programa en ejecución

## Información sobre el comando «Nivel de secado»

Esta lista no es exhaustiva; puede haber otros valores.

- Sin fase de secado
- Extra seco
- Normal Plus
- Normal
- Ligeramente seco
- Plancha de mano de nivel 1
- Plancha de mano de nivel 2
- Plancha

# Registro de cambios

[Ver el registro de cambios](./changelog)

# Asistencia

Si tienes algún problema, empieza por leer los últimos temas relacionados con el plugin en [Comunidad]({{site.forum}}/tag/plugin-{{page.pluginId}}).

Si, a pesar de todo, no encuentras respuesta a tu pregunta, no dudes en crear un nuevo tema sin olvidar incluir la etiqueta del plugin ([plugin-{{page.pluginId}}]({{site.forum}}/tag/plugin-{{page.pluginId}})).

Como mínimo, habrá que presentar:

- una captura de pantalla de la página de estado de Jeedom
- una captura de pantalla de la página de configuración del complemento
- Todos los registros disponibles del complemento, con nivel _INFO_, pegados en un bloque de «Texto preformateado» (botón «</>» en Community), ¡sin archivos!
- según el caso, una captura de pantalla del error que se ha producido, una captura de pantalla de la configuración que da problemas...
