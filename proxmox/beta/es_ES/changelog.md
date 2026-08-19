---
layout: default
title: Registro de cambios de Proxmox
lang: es_ES
pluginId: proxmox
---

# Registro de cambios

## 2026-08-03

- Actualización de dependencias

## 2026-06-12

- Implantación de un nuevo flujo de trabajo para la documentación
- Actualización de dependencias

## 2025-11-08

- Posibilidad de configurar etiquetas de recursos de Proxmox que se deben excluir; los dispositivos correspondientes no se crearán en Jeedom
- Guarda las etiquetas definidas en Proxmox en los dispositivos Jeedom correspondientes para que puedan utilizarse en la búsqueda del panel de control de Jeedom

## 2025-08-11

- Se ha añadido la opción de incluir o excluir la RAM (el estado de la máquina virtual) al realizar una instantánea de una máquina virtual; **Atención**: comprueba tus escenarios, ya que el comportamiento por defecto ha cambiado; ahora, la RAM se excluye de forma predeterminada.
- Actualización de dependencias

## 2025-04-18

- Se han añadido controles de uso del disco (valor y porcentaje) en LXC
- Reorganización de la página de salud y del panel
- Correcciones en el panel: algunas traducciones no se habían aplicado

## 2025-02-24

- Se ha corregido un error para que ya no se intente crear recursos que no tengan nombre (esto puede ocurrir debido a un problema en vuestros servidores Proxmox)

## 2024-12-25

- Reducción de los tiempos de espera en las solicitudes a Proxmox
- Se ha corregido un error que se producía cuando uno de los nodos de un clúster se desconectaba (en el caso de una instalación con varios nodos).
- Actualización de dependencias
- Actualización del icono
- Se requiere Jeedom v4.4

## 2024-09-16

- Actualización de dependencias
- Traducción del complemento al inglés, alemán, español, italiano y portugués
- Se requiere como mínimo la versión Debian 11

## 2024-07-02

- La casilla de selección *Activar* ahora es de solo lectura, ya que se actualiza durante la sincronización
- Corrección para Debian 12 en caso de que la configuración de Proxmox sea incorrecta y, por lo tanto, el complemento no tenga acceso a toda la información a la que intenta acceder

## 2024-04-11

- Actualización de dependencias

## 2024-03-18

- Incorporación del comando **Eliminar instantánea** en VM y LXC

## 2023-05-20

- Se ha modificado la nomenclatura de los equipos de tipo «almacenamiento» para evitar conflictos en caso de utilizarse con un clúster de nodos.
- El campo *Nombre del equipo* ahora es de solo lectura, ya que el nombre del equipo viene definido por el proceso de sincronización y, por lo tanto, no se puede modificar.
- Se han añadido los comandos de información **Número de tareas con error** y **Errores** en los equipos *Nodo*; el número de horas que se deben tener en cuenta para la comprobación se configura por equipo.
- Mejoras en los campos de contraseña
- Compatibilidad con Jeedom v4.4
- Se han añadido enlaces a la documentación en fase beta

## 2022-10-17

- Actualización de la presentación de los comandos para Jeedom v4.3

## 2022-07-15

- Actualización de bibliotecas internas

## 2022-02-11

- Mejora: posibilidad de configurar una lista de direcciones IP, separadas por comas, en la configuración del complemento (dirigidas a distintos nodos de un mismo clúster) para garantizar la resiliencia
- Pequeños cambios en el diseño de las pantallas de configuración

## 2021-12-27

- Se ha añadido un comando de información **Nodo** en VM y LXC que devuelve el nodo en el que se ejecuta la máquina virtual (útil si tienes varios nodos en el clúster)
- Se ha añadido el comando **Reiniciar** (reboot), que realizará un reinicio más limpio de las máquinas virtuales; el comando **Reiniciar inmediatamente** (reset) sigue estando disponible.
- Se ha añadido un panel y se ha rediseñado la página de salud. Debes activar el panel en la configuración del complemento.
  - Organización de los recursos por nodo;
  - Clasificación de los recursos (mismo orden que en Proxmox: LXC, VM, almacenamiento);
  - Posibilidad de realizar acciones ((re)iniciar, pausar, detener...) en las máquinas virtuales y LXC desde el panel;
- Se ha añadido más información sobre la configuración de LXC
- Se han añadido comandos de información sobre los nodos que indican el número de máquinas virtuales (VM) y LXC iniciadas y detenidas ([Ver la documentación]({{site.baseurl}}/{{page.pluginId}}/{{page.lang}}))
- Incorporación de la visualización en formato de tabla de la lista de equipos para Jeedom 4.2
- Mejora: Los equipos que son plantillas de VM y LXC tienen un icono diferente para identificarlos más fácilmente
- Mejora: la sincronización ahora se ejecuta en segundo plano para poder aumentar la frecuencia de actualización, que se puede configurar en los ajustes del complemento.
- Mejora: el comando **Actualizaciones disponibles** es ahora un comando de tipo «info/numérico» en lugar de «info/binario», como debería haber sido desde el principio. Por favor, comprueba tus escenarios.
- Varias mejoras en la interfaz
- correcciones de errores menores

## 2020-12-02

- Se ha añadido una configuración al complemento que permite definir el objeto principal por defecto que se utilizará al crear un nuevo recurso, lo que te evitará tener que hacerlo manualmente cada vez.
- Nueva presentación de la lista de objetos
- Mejora del diseño de la configuración de los equipos y los controles

## 2020-08-25

- Actualización del icono del complemento para que se ajuste al estándar de Jeedom
- Se ha añadido un icono por tipo de recurso de Proxmox para mayor claridad
- Durante una sincronización, el complemento activará y desactivará automáticamente los dispositivos Jeedom correspondientes a los recursos de Proxmox, en función de si existen o no, con el fin de facilitar la gestión y aportar mayor claridad.
- Se ha añadido un menú desplegable en la página de equipos

## 2020-06-09

- Se ha añadido la compatibilidad con el modo de compresión Zstandard (zstd) en las opciones de copia de seguridad; requiere Proxmox 6.2

## 2020-03-30

- Traslado de la documentación
- Se ha añadido un comando **Reiniciar** en las máquinas virtuales

## 2020-02-12

- Se han añadido los comandos **Iniciar todo** y **Detener todo** en los nodos
- Se han añadido los comandos **Detener el nodo** y **Reiniciar el nodo**
- Se han añadido los comandos **Pausa** y **Reanudar** en las máquinas virtuales y LXC

## 2019-11-23

- Se ha añadido una página específica de estado que ofrece una visión general de todos los equipos Proxmox

## 2019-11-16

- Se ha añadido un campo para introducir una descripción (opcional) al realizar una captura de pantalla. Si tienes escenarios que utilicen este comando, compruébalos.
- Se ha añadido el comando **Lista de instantáneas** en VM y LXC
- Se ha añadido un comando que muestra el porcentaje de uso de la memoria, el disco y el espacio de intercambio en todos los equipos afectados
- Eliminación de los comandos «vmid» y «Nodo» en todos los dispositivos
- Fijo: el estado *paused* se indica correctamente en una máquina virtual o un contenedor en pausa
- Corregido: ahora es posible cambiar el nombre del equipo en Jeedom por uno diferente al que tiene en Proxmox

## 2019-11-12

- Incorporación de información de configuración sobre las máquinas virtuales (agente, procesadores, memoria, red)
- Incorporación de comandos de información sobre IPv4, IPv6 y direcciones MAC en las máquinas virtuales
- Se ha añadido la versión PVE a la página de configuración del nodo
- Se han añadido comandos que indican la carga media en el nodo
- Se ha añadido un comando que muestra el uso del swap
- Se ha añadido un comando binario que indica si hay actualizaciones disponibles en el nodo

## 2019-11-05

- Incorporación de información adicional sobre los equipos de almacenamiento
- Se ha añadido un comando «Backup» para las máquinas virtuales (consulta la documentación para conocer todas las opciones)

## 2019-10-28

- Corrige un error (no bloqueante) que se producía al iniciar y al cerrar el complemento
- Se han añadido las traducciones para en_US

## 2019-10-26

- Incorporación de información adicional sobre los nodos
- Se ha añadido un comando «Actualizar» en los nodos

## 2019-10-22

- Se ha añadido compatibilidad con contenedores de Linux (LXC)
- Se ha añadido un comando para realizar una instantánea en VM y LXC
- Se han añadido los comandos «Iniciar», «Detener» y «Detener inmediatamente» para VM y LXC (consulta la documentación)
- Incorporación de un comando «Actualizar» en VM y LXC
- Soluciona el problema de conexión a Proxmox cuando el certificado no es válido

## 2019-10-21

Primera versión estable

# Documentación

[Ver la documentación]({{site.baseurl}}/{{page.pluginId}}/{{page.lang}})
