---
layout: default
title: Registro de cambios de MQTT Discovery
lang: es_ES
pluginId: MQTTDiscovery
---

# Registro de cambios

## 2026-09-04

- Mejora de la coherencia y la seguridad del código para PHP 8
- Correcciones en los componentes de tipo `climate`
- Añadir un mensaje en el centro de mensajes cuando se detecte un nuevo tema (nueva categoría de equipo) al que no se esté suscrito
- Actualización de dependencias

## 2026-08-01

- Correcciones y optimizaciones en la actualización de los comandos al recibir un mensaje MQTT
- Correcciones en el análisis sintáctico de la información de descubrimientos cuando la carga útil contiene comillas
- Actualización de dependencias
- Se requiere Python 3.11; se instalará automáticamente si es necesario.

## 2026-06-13

- Compatibilidad con imágenes personalizadas de los dispositivos (Jeedom 4.5)
- Estandarización de la actualización de los comandos de los dispositivos Bluetooth
- Protección contra configuraciones incorrectas
- Se ha modificado el valor del ciclo de envío predeterminado del demonio de 1 s a 0,5 s y se ha cambiado el valor mínimo permitido de 0,5 s a 0,1 s
- Adaptación para gestionar las configuraciones de equipos de tipo *Cover* sin *state_topic*
- Adaptación para gestionar las configuraciones de equipos de tipo *Cover* con el porcentaje de apertura invertido (que, por lo tanto, es un porcentaje de cierre)
- Se ha corregido la configuración predeterminada de los comandos de tipo *humedad*, que estaban configurados como comandos de tipo *temperatura* (solo se aplica si se recibe el tipo genérico en la información de detección).
- Se requiere Jeedom v4.5
- Actualización de dependencias
- Implantación de un nuevo flujo de trabajo para la documentación

## 2026-01-02

- Corrección: la actualización de los comandos no funcionaba en algunos casos cuando la configuración utilizaba comodines MQTT (signo *+* en el tema), especialmente en el caso del pasarela *RTL_433toMQTT* de OMG.

## 2025-11-30

- Actualización de dependencias
- Se ha añadido la gestión del *paso* en el comando «acción del cursor» creado para una entidad *número*

## 2025-06-27

- Mejora del nombre que se asigna automáticamente a los comandos cuando no se ha definido en la configuración: el nombre debería ser más corto (sobre todo en el caso de zwave-js y zigbee2mqtt)
- Cambio en el comportamiento relativo a la activación de la propiedad *Visible* en los controles: ahora, la mayoría de los controles no están visibles por defecto al crearlos; debes marcar la casilla *Visible* para que aparezcan en el widget. El objetivo es que el widget sea más fácil de configurar, mostrando por defecto solo la información y los controles más relevantes, en lugar de mostrar casi todo.
- Mejora y traducción del nombre de los comandos cuando estos están correctamente clasificados por la fuente (~= existe un tipo genérico asociado al comando)
- Aplicación de un widget predeterminado en función del tipo genérico del comando (cuando exista)
- Modificación en la gestión de las imágenes de los dispositivos: la configuración anterior (y las imágenes personalizadas) debería migrarse, pero es posible que tengas que realizar algunas correcciones manuales.
- Gestión del *model_id* para recuperar correctamente las imágenes de los dispositivos en Zigbee2MQTT 2.x
- Adaptación del ID de cliente MQTT al formato «mqttdiscovery-[ID aleatorio]» para facilitar la supervisión
- Los nuevos comandos de información binaria creados a partir de una entidad *device_automation* tendrán ahora el parámetro «repetición de valores idénticos» activado por defecto al crearlos (no hay cambios en los comandos existentes).
- Se han añadido las traducciones que faltaban en algunos nombres de comandos
- Corrección: en algunos casos no se creaba el comando «off» de un interruptor.

## 2025-02-24

- Actualización de dependencias
- Corrección menor en la gestión de los temas descubiertos
- Se ha corregido un error que se producía al crear una acción de comando cuando varias acciones tenían el mismo nombre.

## 2024-12-26

- Compatibilidad con el tipo *clima* / *HVAC*
- Se ha añadido compatibilidad con el «esquema JSON» para el tipo *light*: admite bombillas con regulación de intensidad, temperatura de color, selección de colores, efectos y transiciones.
- Se han añadido los comandos **Estado**, **Encendido** y **Apagado** al tipo *light* utilizando el *esquema predeterminado*
- Corrección en los comandos de información para el tipo *vacuum*
- Se ha corregido un error en la creación de comandos de lista que, en algunos casos, no incluían la lista de opciones.
- Se ha corregido la integración *EMS-ESP* debido a una combinación de dos sintaxis diferentes que el complemento no admitía.
- Traducción del complemento al inglés, alemán, español, italiano y portugués
- Actualización de dependencias
- Actualización del icono
- Se requiere Jeedom v4.4

## 2024-07-02

- Se ha añadido el tipo *aspiradora*
- Se ha solucionado un problema por el que algunas imágenes de dispositivos no se mostraban
- Actualización de dependencias

## 2024-05-14

- Mejora: la creación de los comandos de los dispositivos tras su incorporación es inmediata; ya no es necesario reiniciar el demonio
- Mejora: se tiene en cuenta el último nombre del módulo durante la detección (útil si, por ejemplo, se cambia el nombre tras la inclusión)
- Mejora: el plugin recuperará automáticamente las imágenes de todos los módulos Zigbee (compatibles con Zigbee2MQTT).
- Se ha añadido un botón para abrir la configuración del módulo si se proporciona la URL en la información de detección (por ejemplo, a la configuración del módulo en Zigbee2MQTT, a OMG).
- Corrección de tipo *update* para los dispositivos Zigbee (a través de Zigbee2MQTT)
- Corrección del tipo *device_automation* / *device trigger*; es necesario eliminar los comandos correspondientes y reiniciar el demonio para volver a crearlos correctamente
- Corrección en la comprobación de dependencias
- Actualización de dependencias
- Modificación interna del demonio

## 2024-02-25

- Optimización del tamaño de las copias de seguridad
- Se ha añadido una imagen de algunos módulos Zigbee

## 2024-02-14

- Compatibilidad con el tipo *select* (comando de acción de lista)
- Compatibilidad con el tipo *device_automation*
- Compatibilidad con el tipo *music_player* (para la compatibilidad con la pasarela sonos2mqtt)
- Se han añadido los comandos **Abrir**, **Cerrar** y **Detener** al tipo *cover* (persiana, toldo, cortina...)
- Mejora: los comandos de información cuya unidad sea «%» tendrán su valor mínimo y máximo configurados en 0 y 100 por defecto.
- Se ha añadido la imagen de los módulos Zigbee *Sensor de presencia Sonoff (SNZB-06P)* y *Controlador de cortinas Aqara E1 (ZNCLBL01LM)*
- Se ha añadido un botón para eliminar todos los dispositivos detectados de la lista y del broker MQTT (excepto, por supuesto, los dispositivos creados).
- Se ha añadido un botón para eliminar los dispositivos desconocidos de la lista
- Se ha eliminado el botón «Duplicar» de un dispositivo que no tenía razón de ser.
- Nueva versión de las dependencias (paho-mqtt 2.0) y adaptación del demonio en consecuencia
- Corrección del problema que se producía al detectar un componente *Lock* cuando este no tenía un nombre definido
- Corrección de la acción en *cover* en determinados dispositivos

## 2023-12-09

- Reducción de los registros innecesarios
- Se ha añadido un botón para eliminar definitivamente un dispositivo detectado, incluso en el broker MQTT
- Solución: algunos comandos «off» no funcionaban correctamente porque su configuración se guardaba de forma errónea (dependía de la carga útil del comando)
- Incorporación de imágenes de diferentes modelos de equipos
- Incorporación de la configuración por defecto del tipo genérico en el comando (cuando sea posible)
- Incorporación de la información sobre el estado de la batería del equipo en el núcleo (cuando sea posible)
- Añadir un icono predeterminado a los controles en función del tipo genérico
- Se ha añadido la posibilidad de gestionar la presencia en dispositivos Bluetooth no descodificados (y que, por lo tanto, no aparecen en la lista de dispositivos detectados).
- Se ha añadido la posibilidad de definir un nombre de modelo personalizado y, por lo tanto, una imagen personalizada para cada dispositivo (tras haber modificado el nombre del modelo del dispositivo).
- Solución: actualización de los comandos de información de temperatura de los dispositivos Bluetooth cuando el comando había sido detectado por OMG (si lo detectaba Theengs Gateway, funcionaba correctamente)

## 2023-11-07

- Compatibilidad con el tipo *lock* para la gestión de cerraduras (p. ej., Nuki)
- Añadir una imagen predeterminada para el Nuki Smart Lock 3.0 Pro
- Filtra los tipos de archivo que admite el complemento al seleccionar una imagen para enviar a una plantilla de equipo
- Corrección del botón «Configuración» en la pantalla de dispositivos detectados

## 2023-11-02

- Mejora en el análisis sintáctico de las configuraciones de determinados dispositivos (compatibilidad con el «tema base» si se ha declarado)
- Cambio en la gestión de la presencia: los comandos **rssi** se establecerán obligatoriamente en -200 si no hay más actualizaciones del comando (tras el tiempo de espera configurado)

## 2023-10-22

- Configuración de los valores mínimo y máximo para los comandos **rssi**

## 2023-10-19

- Reorganización de los registros
- Se ha corregido un error menor en el proceso de creación automática durante la detección

## 2023-10-18

- Se ha añadido un comando **rssi** por cada pasarela que proporciona la información. El comando **rssi** principal mantiene el comportamiento actual: es el último valor recibido de todas las antenas y la gestión de presencia se basa en él.
- Reorganización interna del código que debería ser totalmente transparente

## 2023-10-16

- Se ha añadido un botón en la página de configuración del equipo para ver su configuración sin procesar, así como un botón para copiarla fácilmente y poder compartirla conmigo si fuera necesario
- Reorganización de los datos del complemento: en principio, las imágenes personalizadas se han trasladado a la ubicación correcta; si no es así, por favor, crea una entrada en la Comunidad.

## 2023-10-15

- Cambio en el comportamiento del tipo *cover* (por ejemplo, las persianas): creación de los comandos «open», «close» y «stop» aunque no haya respuesta de estado.
- Modificación de la visibilidad y de la plantilla predeterminada al crear determinados pedidos

## 2023-10-14

- Compatibilidad con el tipo *update*, que permite disponer de los comandos informativos **Versión instalada** y **Última versión**, así como del comando de acción **Actualización de firmware** para iniciar la actualización del hardware en los dispositivos que admiten esta funcionalidad (por ejemplo, OMG).

## 2023-10-12

- Compatibilidad con *device_tracker* para los «Tile», que envían datos de forma ligeramente diferente a los Nuts
- Se han añadido filtros en la ventana de alta manual de equipos para facilitar la búsqueda

## 2023-10-10

- Se ha añadido la posibilidad de incluir imágenes personalizadas en los dispositivos (una imagen por modelo)

## 2023-10-07

- Incorporación del identificador, el fabricante y el modelo del equipo en la página de configuración
- Se ha añadido una nueva función que muestra todos los dispositivos detectados pero aún no creados, con la posibilidad de añadirlos uno por uno, según se desee, sin necesidad de activar la creación automática.
- Se ha añadido una notificación en la página de dispositivos cuando se han detectado nuevos dispositivos
- Se ha corregido un error en el análisis de algunos dispositivos

## 2023-09-30

- Se ha añadido una configuración para desactivar la creación automática de los dispositivos detectados
- Se ha añadido el tipo *alarm_control_panel*

## 2023-09-11

- *MQTT Manager (mqtt2)* ya no es un requisito previo (es necesario tener instalado un servidor MQTT, ya sea por tu cuenta o a través de cualquier otro complemento de Jeedom). Si *MQTT Manager (mqtt2)* está instalado, la configuración del servidor es semiautomática.
- Implementación de un cliente MQTT específico para el complemento con el fin de mejorar el rendimiento y la flexibilidad; el complemento cuenta ahora con un demonio.
- Se ha añadido el tipo *cover*
- Modificación y mejora de la página de configuración del complemento

## 2023-09-07

- Ajuste de luz/brillo

## 2023-07-20

Primera versión

# Documentación

[Ver la documentación]({{site.baseurl}}/{{page.pluginId}}/{{page.lang}})
