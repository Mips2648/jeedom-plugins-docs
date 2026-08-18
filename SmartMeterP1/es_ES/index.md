---
layout: default
title: Documentación de SmartMeter P1
lang: es_ES
pluginId: SmartMeterP1
---

# Descripción

Este complemento permite conectarse a [este pasarela](https://www.domohab.be/categorie-produit/passerelle/) conectada a tu contador para recuperar toda la información que este transmite a través del puerto P1.

Funciona tanto con contadores trifásicos como monofásicos.

# Versiones compatibles

| Componente | Versión                     |
|-----------|-----------------------------|
| Debian    | Bullseye(11) & Bookworm(12) |
| Jeedom    | >= 4.5                      |

# Instalación

Para utilizar el plugin, debes descargarlo, instalarlo y activarlo como cualquier otro plugin de Jeedom.
A continuación, hay que instalar las dependencias.

# Configuración del complemento

En la configuración del complemento, puedes configurar, si lo deseas, el ciclo que define el intervalo de tiempo entre cada envío de información a Jeedom.
El valor por defecto debería ser adecuado para la mayoría de los casos, pero puedes ajustarlo si es necesario. No tiene sentido bajar de 1 s, ya que el contador solo envía la información cada segundo.

Inicia o reinicia el demonio.

# Las instalaciones

El complemento se encuentra en el menú Complementos → Energía.

Cada dispositivo corresponderá a una pasarela conectada a un contador. Por lo tanto, debes empezar por añadir un dispositivo y asignarle un nombre.
En la configuración del equipo, verás los parámetros habituales comunes a todos los equipos Jeedom.

A continuación, introduce la dirección IP de tu puerta de enlace y el puerto que hayas configurado; por defecto es el 8088.

Activa el equipo y guarda los cambios; en unos segundos, los comandos deberían actualizarse.

# Los pedidos

Hay comandos que se actualizan según la frecuencia definida en la configuración del complemento:

- la energía consumida e inyectada durante las horas punta y las horas valle, así como los importes correspondientes.
- la potencia consumida e inyectada en tiempo real, así como la potencia neta, que es igual a la potencia consumida menos la potencia inyectada (lo cual te resultará útil para tus escenarios e integraciones con otros complementos)
- la tensión y la intensidad en las tres fases. Si algunos de estos valores se mantienen en cero, es normal; depende de si tu conexión es monofásica o trifásica y del tipo de trifásica (con o sin neutro) que tengas.

Cada minuto, el complemento también calculará la siguiente información, que también está disponible mediante comandos:

- Consumo energético diario y mensual
- Energía inyectada a lo largo del día y del mes

Por lo tanto, estos contadores se ponen a cero cada día a medianoche o el último día de cada mes.

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
