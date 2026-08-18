---
layout: default
title: Registro de cambios de WorxLandroidS
lang: es_ES
pluginId: worxLandroidS
---

# Registro de cambios

## 2026-06-13

- Implantación de un nuevo flujo de trabajo para la documentación
- Corrección de un aviso de error en PHP 8
- Compatibilidad con imágenes personalizadas de los dispositivos (Jeedom 4.5)
- Actualización de dependencias
- Se requiere Jeedom v4.5
- Se requiere Python 3.11; se instalará automáticamente si es necesario.

## 2025-08-11

- Mejora de los intentos de reconexión en caso de desconexión imprevista o de indisponibilidad de la nube de WorxLandroid
- Se ha corregido un error en el *Informe de actividad*
- Actualización de dependencias

## 2025-06-27

- Se ha corregido el comando *Actualizar*, que había dejado de funcionar, y se ha eliminado el comando *Update*, que sí funcionaba y realizaba la misma acción.
- Corrección: cuando se producía un problema de conexión con los servidores de Worx, podía ocurrir que el demonio no consiguiera volver a conectarse y que, tras unos diez minutos sin éxito, dejara de intentarlo; de este modo, aunque la conexión se interrumpiera definitivamente, el estado seguía siendo «OK».
- Actualización de dependencias

## 2024-12-25

- Actualización de dependencias
- Actualización del icono

## 2024-10-11

- Mejora de la integración de los modelos Landroid Vision
- Se han añadido los códigos de error y de estado, así como las descripciones, para los modelos Landroid Vision
- Se ha corregido un problema de inicio del demonio en las nuevas instalaciones de Jeedom
- Actualización de dependencias
- Traducción del complemento al inglés, alemán, español, italiano y portugués
- Se requiere Jeedom v4.4
- Se requiere Debian 11

## 2024-06-11

- Eliminación de la imagen «Pausa» del widget cuando el cortacésped está en pausa
- Corrección en la comprobación de dependencias
- Actualización del demonio
- Actualización de dependencias

## 2024-02-23

- Optimización del tamaño de las copias de seguridad
- Nueva versión de las dependencias (paho-mqtt 2.0) y adaptación del demonio en consecuencia

## 2023-12-21

- Pequeño cambio en el script de instalación de las dependencias
- Actualización de las versiones de las dependencias
- Compatibilidad con Python 3.9 / Python 3.7

## 2023-10-26

- Mejora técnica en el demonio: cambio a asíncrono completo
- Modificación en la gestión de dependencias para evitar posibles conflictos con otros complementos
- Cambio de la dirección del servidor de autenticación debido a una modificación en Worx; esto resuelve el problema «AuthorizationError: Unauthorized».

## 2023-10-02

- Cifrado del nombre de usuario y la contraseña en la base de datos
- Corrección de los comandos de activación y desactivación de los módulos adicionales

## 2023-08-31

- Reanudación del plugin por parte de @Mips
- Actualización de la presentación de los comandos para Jeedom v4.3
- Compatibilidad con Jeedom v4.4
- Se ha añadido el informe de actividad (que sustituye a la página de estado)
- Añadir información sobre el cortacésped: modelo, año de fabricación, anchura de corte
- Sustitución de las pestañas «Zonas» y «Horarios» por una pestaña «Mi césped», en la que se incluye:
  - Información general
  - Configuración multizona
  - Programación manual
  - Autoprogramación (si es compatible con tu modelo)
- Se ha añadido compatibilidad con el modelo Landroid Vision
- Se ha añadido la gestión del módulo *Off Limits*: estado actual, comandos de activación y desactivación de las zonas prohibidas y los atajos
- Incorporación de la gestión del módulo *Find My Landroid*: estado actual
- Se ha añadido la gestión del módulo *ACS*: estado actual, comandos de activación y desactivación
- Se ha añadido la comprobación y validación de la configuración del complemento
- Se ha añadido el comando **Definir distribución de zonas** de tipo acción/mensaje. Hay que indicar el porcentaje de las zonas (en tramos del 10 %). Por ejemplo:
  - `100` o `100,0,0,0` => todo en la zona 1
  - `0,0,0,100` => todo en la zona 4
  - `20,30,20,30` => 20 % zona 1, 30 % zona 2 …
- Modificación del comportamiento del comando **Área de trabajo**: ahora ya no se modifica la configuración del reparto entre las áreas, sino que se modifica el orden para que la siguiente salida corresponda al área seleccionada
- Corrección en el widget: no se mostraban los comandos adicionales

Consulta los detalles aquí <https://community.jeedom.com/t/version-beta-avril-2023/105197>

## 21 de noviembre de 2020 por @sebsst

- Modificación del mando para el corte del borde (se debe comprobar la compatibilidad de los modelos)

## 6 de junio de 2020 por @sebsst

- Se ha añadido la pestaña «Gestión de zonas de corte» (distancia inicial + % de distribución según cada zona).
- posibilidad de ocultar la información sobre la inclinación y la dirección

## 29 de mayo de 2020 por @sebsst

- Añadir información en caso de que no haya comunicación con el cortacésped durante más de 24 horas (desvincular y volver a vincular en la cuenta Worx)
- Modificación del registro de horas.
- Se ha añadido el historial al botón «Salud» del complemento (reinicia los datos en la nube para que el cambio surta efecto)
- se ha añadido información sobre la inclinación (lateral y frontal) y la dirección
- Intento de eliminar el error 500 si no es posible establecer comunicación con el cortacésped

## 10 de mayo de 2020 por @sebsst

- Cambio de plantilla: se han utilizado las imágenes de Antoinekl del widget worklandroid + trabajo de Tektek en las animaciones; gracias a ambos
- corrección para ocultar o mostrar determinadas zonas (planning_starttime permite ocultar o mostrar el día en el calendario)
- Es posible editar los horarios de corte desde el widget
- se ha añadido la gestión de la vida útil de las aspas (introducir la vida útil estimada en el equipo y registrarla; a continuación, restablecer la duración en el widget haciendo clic en las aspas situadas debajo del indicador de batería)

## 12 de marzo de 2020 por @sebsst

- corrección para la inicialización del equipo y la primera actualización de datos (+ayuda de @Mips)

## 8 de mayo de 2019 por @sebsst

- Se ha añadido un dato (virtualInfo) para concatenar varios datos del complemento, separados por comas, para su uso con el widget Worx Landroid.
- Sustitución de la información «planning/xxxx/xxx» por «planning_xxxxx_xxxx» tras un cambio en el núcleo de Jeedom

## 28 de abril de 2019 por @sebsst

- Varias correcciones
- Se ha añadido la función set_schedule para modificar la programación de corte de césped de un día concreto. Por defecto, la acción no es visible. El objetivo es realizar la planificación mediante un escenario, pero es posible hacerla visible en el widget si es necesario.
- Formato esperado: número día; hora de salida; duración en minutos; borde
Ejemplos:
  - 1;10:00;120;1 => lunes, arranque a las 10:00 durante 120 minutos, corte del borde
  - 0;08:00;300;0 => domingo, inicio a las 08:00 durante 300 minutos, no apaga el borde

## 3 de abril de 2019 por @sebsst

- Añadir coordenadas GPS si están disponibles

## 7 de noviembre de 2018 por @sebsst

- La nueva versión del complemento requiere volver a crear los dispositivos, por lo que debes eliminar los dispositivos existentes
- Gestión de varias cortacéspedes
- Detección automática del tipo de cortacésped
- eliminación del modo de reintento

## 11 de septiembre de 2018 por @sebsst

- Se ha añadido el parámetro «tipo de cortacésped»: Landroid versión S / Landroid versión M (firmware 5.x)
(si tienes algún problema, puedes marcar la opción «Restablecer la configuración» en la configuración del complemento y guardar los cambios)
- Incorporación de la función «pausa»

## 9 de julio de 2018 por @sebsst

- Posibilidad de definir un widget propio para los comandos de tipo «información» con el fin de permitir la visualización de datos adicionales
- Modificación de los tipos de información digital (también se puede hacer manualmente o recreando el equipo)

## 16 de junio de 2018 por @sebsst

- Modificación del script de instalación para intentar resolver los problemas relacionados con la versión de Mosquitto (versión mini 1.4.1)
- Instalación de la versión 1.5 de Mosquitto si se utiliza la versión 1.3 de Mosquitto
- Correcciones en las funciones de inicio y parada.
- Modificaciones del tiempo de espera si el servidor Mosquitto no envía ningún mensaje
- cambio del tiempo de retardo de la lluvia, que falta en algunos casos

## 9 de junio de 2018 por @sebsst

Incorporación de nuevas acciones:

- Incorporación de plazos para el corte del césped tras una lluvia
- Se han añadido las acciones «off_today» y «on_today» para facilitar la gestión de la actividad diaria mediante escenarios (por ejemplo, para los días festivos).

Otras modificaciones:

- El widget ya se puede personalizar (color, transparencia...)
- Posibilidad de eliminar cierta información: errorCode, statusCode, totalDistance, batteryChargeCycle, rainDelay
- Visualización de la próxima zona de corte. Se trata de la zona de inicio del próximo corte o del que se está realizando actualmente.
- Cambio de la información a formato digital para poder elaborar estadísticas (por ejemplo, la evolución de la batería).

## 6 de junio de 2018 por @sebsst

Modificación de la frecuencia de actualización de la información:

- Cada 2 minutos mientras se corta el césped
- Cada 30 minutos, excepto durante los periodos de corte
- bajo petición o envío de la actualización del horario de funcionamiento.

## 4 de junio de 2018 por @sebsst

- Modificación del tiempo de espera del daemon y otros parámetros de conexión al servidor Worx
- Ajuste del diseño del widget
- sustitución del ID de cliente de Mosquitto

## Mayo de 2018 por @sebsst

Creación del complemento

# Documentación

[Ver la documentación]({{site.baseurl}}/{{page.pluginId}}/{{page.lang}})
