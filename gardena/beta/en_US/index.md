---
layout: default
title: Gardena-Husqvarna Documentation
lang: en_US
pluginId: gardena
---

# Description

A plugin that allows you to integrate all devices in the Gardena Smart System lineup (Water Control, sensor, irrigation control, power socket, and Sileno mower), as well as Husqvarna Automower Connect robots with internet connectivity (i.e., not the Connect@Home models or any other models with Bluetooth-only connectivity, for example).
You can access device data, monitor devices, and perform certain actions (depending on the device; see below for more details)

> **Important**
>
> Regardless of the equipment (Gardena and Husqvarna), an internet connection is required. This plugin will not work with any other local connection technology, such as, but not limited to, Bluetooth.

# Supported Versions

| Component | Version                     |
|-----------|-----------------------------|
| Debian    | Bullseye(11) & Bookworm(12) |
| Jeedom    | >= 4.4                      |

# Installation

To use the plugin, you must download, install, and activate it just like any other Jeedom plugin.

> **Important**
>
> If you have tried to install the "Gardena Smart System" plugin, you must disable it before activating this one. This is because an issue in the "Gardena Smart System" plugin causes a conflict with this plugin, which may render Jeedom unavailable. This issue must be resolved in the other plugin; unfortunately, there is no way for me to work around it.

# Plugin configuration

In the plugin settings, you'll need to enter the application key and application secret to access the APIs.
You must also select the APIs you want to enable from the two available options (both can be enabled at the same time):

- Gardena Smart System
- Husqvarna Automower

You can find more information directly on the plugin's configuration page.

# Synchronization and Configuration of Devices

Once the plugin is configured correctly, it will synchronize the devices based on the enabled APIs.
It will create any missing devices along with their commands and update the commands for all connected devices.

Commands for all devices—whether from the Gardena Smart System line or Husqvarna robots—will be updated in real time, so no additional configuration is required.

There is a **Refresh** command to request an additional manual update for Husqvarna Automower robotic mowers, but this is generally not necessary since any status changes will be updated in real time. **Please note** that there is a limit of 10,000 manual updates per month; this limit is imposed by Husqvarna.

> **Tip**
>
> The plugin will never delete a device from your Jeedom. If a Jeedom device no longer corresponds to any device you own, please delete it manually.

On a device's configuration page, there is a button to create any missing commands for that device (in case you accidentally deleted a command, for example).

# Devices and Their Commands

## Commands common to all Gardena Smart System devices

Each Gardena Smart System device has the following commands:

- **Battery** shows the battery charge level (if applicable) as a percentage
- **Battery Status** provides a description of the battery's status: *OK*, *LOW*, *REPLACE_NOW*, *OUT_OF_OPERATION*, *CHARGING*, *NO_BATTERY*, *UNKNOWN*
- **Connection Level** indicates the connection level with the gateway as a percentage
- **Connection Status** provides a description of the connection status: *ONLINE*, *OFFLINE*, *UNKNOWN*

## Gardena Smart Sensor

- **Temperature** shows the room temperature
- **Brightness** indicates the brightness in lux
- **Soil Moisture** indicates the percentage of soil moisture
- **Floor Temperature** indicates the temperature of the floor

## Gardena Smart Water Control

- **Status** indicates the valve's overall status: *OK*, *WARNING*, *ERROR*, *UNAVAILABLE*
- **Last Error** returns the last error, if any; this is only valid if the **Status** command has a value of *WARNING* or *ERROR* (see below for a list of possible values)
- **Activity** indicates the current activity: *CLOSED*, *MANUAL_WATERING*, *SCHEDULED_WATERING*
- **Status**: binary command indicating whether the valve is open or closed
- **Start**: action command to start watering; optionally specifies the number of (whole) minutes to water
- **Stop** command to stop watering action
- **Time Remaining**: a command prompt showing the time remaining (in minutes) while watering is in progress
- **Programming Pause** command that optionally requires the number of minutes
- **Resume programming** command action

## Gardena Smart Power Socket

- **Status** indicates the socket's overall status: *OK*, *WARNING*, *ERROR*, *UNAVAILABLE*
- **Last Error** returns the last error, if any; this is only valid if the **Status** command has the value *WARNING* or *ERROR*; it may have the following values: *TIMER_CANCELLED*, *UNKNOWN*
- **We** issue a command to turn on the outlet
- **Off** action to turn off the outlet
- **Timer** action to turn on the outlet with automatic shut-off after x (whole) minutes have elapsed (optional command setting)
- **Activity** indicates the current activity: *OFF*, *FOREVER_ON*, *TIME_LIMITED_ON*, *SCHEDULED_ON*
- **Status**: binary command indicating whether the outlet is on or off
- **Time Remaining**: a command that displays the remaining time on the timer (if applicable)
- **Programming Pause** command that optionally requires the number of minutes
- **Resume programming** command action

## Gardena Smart Mower

- **Health** indicates the mower's overall status: *OK*, *WARNING*, *ERROR*, *UNAVAILABLE*
- **Activity** indicates the current activity: *PAUSED*, *OK_CUTTING*, *OK_CUTTING_TIMER_OVERRIDDEN*, *OK_SEARCHING*, *OK_LEAVING*, *OK_CHARGING*, *PARKED_TIMER*, *PARKED_PARK_SELECTED*, *PARKED_AUTOTIMER*, *NONE*
- **Active** binary command indicating whether the mower is active or not; it will be marked as active during the following activities: *OK_CUTTING*, *OK_CUTTING_TIMER_OVERRIDDEN*, *OK_SEARCHING*, *OK_LEAVING*, *OK_CHARGING*
- **Last Error** returns the last error, if any; this is only valid if the **Status** command has a value of *WARNING* or *ERROR* (see below for a list of possible values)
- **Work Hours**: A command that returns the number of work hours
- **Time Remaining**: a command that displays the remaining time on the timer (if applicable)
- **Start Manual Mode**: Command to start in manual mode, optionally specifying the number of minutes of activity
- **Start Auto Mode** action to start in auto mode (following the schedule)
- **Cancel and return to base** command; the mower will restart during the next action
- **Stop and return to base** command—the mower will not restart for the next task

## Gardena Smart Irrigation Control

The device allows you to control up to 6 24V valves. It features the following commands:

- **Controller Status** indicates the overall status of the controller: *OK*, *WARNING*, *ERROR*, *UNAVAILABLE*
- **Last Error** returns the last error, if any; this is only valid if the **Status** command has a value of *WARNING* or *ERROR* (see below for a list of possible values)
- **Turn Off All Valves** allows you to stop watering from all valves with a single command; watering will resume at the next scheduled time

As well as the following commands for each valve (where X will have a value from 1 to 6):

- **Valve X Status** indicates the current status: *CLOSED*, *MANUAL_WATERING*, *SCHEDULED_WATERING*
- **Valve X Command**: binary command indicating whether the valve is open or closed
- **Valve X Status** indicates the overall status of the outlet: *OK*, *WARNING*, *ERROR*, *UNAVAILABLE*
- **Start Valve X** command to start watering; optionally specifies the number of (full) minutes of watering
- **Shut Off Valve X** command to stop watering
- **Remaining time for valve X**: a command message showing the remaining time (in minutes) while watering is in progress
- **Pause valve X programming**: command that optionally requires the number of minutes
- **Resume programming of valve X** command action

## Husqvarna Automower

- **Connected**: a binary command indicating whether the mower is connected
- **Battery** shows the battery charge level (if applicable) as a percentage
- **Mode** will have one of the following values: *MAIN_AREA*, *DEMO*, *SECONDARY_AREA*, *HOME*, *UNKNOWN* (see below for a description of the values)
- **Status** will have one of the following values: *UNKNOWN*, *NOT_APPLICABLE*, *PAUSED*, *IN_OPERATION*, *WAIT_UPDATING*, *WAIT_POWER_UP*, *RESTRICTED*, *OFF*, *STOPPED*, *ERROR*, *FATAL_ERROR*, *ERROR_AT_POWER_UP* (see below for a description of the values)
- **Activity** will have one of the following values: *UNKNOWN*, *NOT_APPLICABLE*, *MOWING*, *GOING_HOME*, *CHARGING*, *LEAVING*, *PARKED_IN_CS*, *STOPPED_IN_GARDEN* (see below for a description of the values)
- **Latitude** command that returns the latitude of the last location
- **Longitude** command that returns the longitude of the last position
- **Last Position** command that returns the last GPS position in the format *latitude,longitude*
- **Positions** containing the history of the robot's last 50 positions in the format *position1,position2,position3,...*
- **Cutting height** and **Cutting height adjustment**, which allow you to check and set the cutting height (between 1 and 9)
- **Headlights** and **Headlight Settings**, which allow you to view and configure the headlight activation mode; possible values: *ALWAYS_ON*, *ALWAYS_OFF*, *EVENING_ONLY*, *EVENING_AND_NIGHT*
- **Last Report Time** and **Next Departure Time**: These values are timestamps in milliseconds (for easier use in a scenario) and will be displayed in date/time format on the widget
- **Scheduling restriction** explaining the reason for the exception during normal scheduling
- **Error Code** & **Error Description** provides the error code and description, if applicable
- **Time Remaining**: a command that displays the remaining active time; valid only when using the **Start Manual Mode** or **Return to Base** commands
- **Manual Mode** Starts and mows the lawn for the duration (in minutes) specified as an option in the command
- **Pause**
- **Resume** Resumes according to the schedule
- **Return to Base** Returns to base for the number of minutes specified as an option in the command, then resumes the schedule
- **Cancel and return to base** command; the mower will restart during the next action
- **Stop and return to base** command—the mower will not restart for the next task
- **Blade operating time** digital command information
- **Charge Cycles** Digital Command Information
- **Collisions** digital information command
- **Total charging time** digital command panel
- **Total cutting time** digital command
- **Total operating time** digital command control
- **Total search time** digital info command

# Widget Positions

The plugin provides a *Positions* widget that can be applied to the **Positions** command on Husqvarna mowers (Gardena mowers do not yet have GPS tracking).

For the widget to work properly, you must complete the following configurations:

1. In the advanced settings for the **Positions** command, on the *Display* tab, select the *Gardena/Positions* widget:

![Advanced Settings](../images/advance_config.png "Configuration avancée")

1. Take a screenshot of the mowing area (on Google Maps, for example), name the file *house.png* (for example), and then copy the image to the *plugins/gardena/data/* folder on your Jeedom (using Jeedom’s built-in file explorer, for example)
2. Identify the geographic coordinates (latitude and longitude) of the lower-left and upper-right corners of the area corresponding to the screenshot.
3. Enter the coordinates listed above in the widget's Settings: *latMin*, *longMin*, *latMax*, and *longMax* are required.
If you named your file something other than *house.png* or if you want to test a different screenshot, enter the file name in the *imgFile* parameter
4. The other settings are optional:

![Widget Configuration](../images/config_widget.png "Configuration widget")

Save, and you should see the mini-map showing the location history on the device tile:

![Positions](../images/Positions.png "Positions")

# Appendices

## Error descriptions for Gardena Smart System valves (Water Control or Irrigation Control)

- *NO_MESSAGE* - no error
- *CONCURRENT_LIMIT_REACHED* - Unable to open the valve; a maximum of 2 valves can be open at the same time
- *NOT_CONNECTED* - No valves connected
- *VALVE_CURRENT_MAX_EXCEEDED* - The valve was shut off due to excessive power consumption
- *TOTAL_CURRENT_MAX_EXCEEDED* - The valve was shut off because total power consumption was too high
- *WATERING_CANCELED* - Watering canceled
- *MASTER_VALVE* - The master valve is not connected
- *WATERING_DURATION_TOO_SHORT* - Watering duration too short; watering canceled
- *VALVE_BROKEN* - The electrical connection to the valve has been interrupted
- *FROST_PREVENTS_STARTING* - Frost prevents the valve from opening
- *LOW_BATTERY_PREVENTS_STARTING* - Low battery; unable to open the valve
- *VALVE_POWER_SUPPLY_FAILED* - Power supply issue; unable to open the valve
- *UNKNOWN* - Unknown

## Description of Gardena Smart Mower Errors

- *NO_MESSAGE* - no error
- *OUTSIDE_WORKING_AREA* - Outside the work area
- *NO_LOOP_SIGNAL* - No signal from the perimeter cable
- *WRONG_LOOP_SIGNAL* - Incorrect signal from the perimeter cable
- *LOOP_SENSOR_PROBLEM_FRONT* - Problem with the front cable sensor
- *LOOP_SENSOR_PROBLEM_REAR* - Problem with the rear cable sensor
- *LOOP_SENSOR_PROBLEM_LEFT* - Problem with the left cable sensor
- *LOOP_SENSOR_PROBLEM_RIGHT* - Problem with the right cable sensor
- *WRONG_PIN_CODE* - Incorrect PIN
- *TRAPPED* - Stuck
- *UPSIDE_DOWN* - Upside down.
- *EMPTY_BATTERY* - Battery empty
- *NO_DRIVE* - No guide cable
- *TEMPORARILY_LIFTED* - Mower lifted
- *LIFTED* - Lifted
- *STUCK_IN_CHARGING_STATION* - Stuck in the charging station
- *CHARGING_STATION_BLOCKED* - Charging station blocked
- *COLLISION_SENSOR_PROBLEM_REAR* - Problem with the rear collision sensor
- *COLLISION_SENSOR_PROBLEM_FRONT* - Problem with the front collision sensor
- *WHEEL_MOTOR_BLOCKED_RIGHT* - Right motor wheel blocked
- *WHEEL_MOTOR_BLOCKED_LEFT* - Left motor wheel blocked
- *WHEEL_DRIVE_PROBLEM_RIGHT* - Problem with the right-hand drive wheel
- *WHEEL_DRIVE_PROBLEM_LEFT* - Problem with the left drive wheel
- *CUTTING_MOTOR_DRIVE_DEFECT* - Defective cutting system motor drive
- *CUTTING_SYSTEM_BLOCKED* - Cutting system blocked
- *INVALID_SUB_DEVICE_COMBINATION* -
- *MEMORY_CIRCUIT_PROBLEM* - Problem with the memory circuit
- *CHARGING_SYSTEM_PROBLEM* - Problem with the charging system
- *STOP_BUTTON_PROBLEM* - Problem with the STOP button
- *TILT_SENSOR_PROBLEM* - Problem with the tilt sensor
- *MOWER_TILTED* - Tilted mower
- *WHEEL_MOTOR_OVERLOADED_RIGHT* -
- *WHEEL_MOTOR_OVERLOADED_LEFT* -
- *CHARGING_CURRENT_TOO_HIGH* -
- *ELECTRONIC_PROBLEM* - Electronic problem.
- *CUTTING_MOTOR_PROBLEM* -
- *LIMITED_CUTTING_HEIGHT_RANGE* -
- *CUTTING_HEIGHT_PROBLEM_DRIVE* -
- *CUTTING_HEIGHT_PROBLEM_CURR* -
- *CUTTING_HEIGHT_PROBLEM_DIR* -
- *CUTTING_HEIGHT_BLOCKED* -
- *CUTTING_HEIGHT_PROBLEM* -
- *BATTERY_PROBLEM* - Battery problem
- *TOO_MANY_BATTERIES* - Too many batteries
- *ALARM_MOWER_SWITCHED_OFF* - Alarm: Mower turned off
- *ALARM_MOWER_STOPPED* - Alarm: Mower Stopped
- *ALARM_MOWER_LIFTED* - Alarm: Mower lifted
- *ALARM_MOWER_TILTED* - Alarm: Mower tilted
- *ALARM_MOWER_IN_MOTION* - Alarm: Mower in motion
- *ALARM_OUTSIDE_GEOFENCE* - Alarm: Lawn mower outside the virtual fence
- *SLIPPED* - The lawn mower skidded
- *INVALID_BATTERY_COMBINATION* - Invalid combination of different battery types
- *UNINITIALIZED* - Mower status unknown
- *WAIT_UPDATING* - Mower waiting for firmware installation
- *WAIT_POWER_UP* - Mower turns on
- *OFF_DISABLED* - Mower turned off via the main switch
- *OFF_HATCH_OPEN* - Mower on standby with its hood open
- *OFF_HATCH_CLOSED* - Mower in standby mode with its hood closed
- *PARKED_DAILY_LIMIT_REACHED* - Mower parked, daily cutting limit reached

## Description of Gardena Smart Irrigation Control Errors

- *NO_MESSAGE* - no error
- *VOLTAGE_DROP* - Voltage drop detected on the power supply (VDD_IN)
- *WRONG_POWER_SUPPLY* - Incorrect power supply
- *NO_MCU_CONNECTION* - Communication problem with the secondary MCU
- *UNKNOWN* - Unknown

## Description of Husqvarna Automower modes

- *MAIN_AREA* - The mower will mow the lawn and return to the charging station to recharge according to its schedule.
- *DEMO* - Same as *MAIN_AREA* but shorter. No blade movement.
- *SECONDARY_AREA* - No scheduling; the mower is in manual mode.
- *HOME* - The mower is on its base, and the schedule is not active.
- *UNKNOWN* - Unknown.

## Description of Husqvarna Automower statuses

- *PAUSED* - The lawn mower is paused.
- *IN_OPERATION* - When in operation, see the **Activity** value.
- *WAIT_UPDATING* - The mower is downloading and updating the firmware.
- *WAIT_POWER_UP* - The mower turns on.
- *RESTRICTED* - The mower cannot mow due to its programming or a manual stop.
- *OFF* - The lawn mower is turned off.
- *STOPPED* - The mower has stopped and requires manual intervention.
- *ERROR*, *FATAL_ERROR*, *ERROR_AT_POWER_UP* - An error has occurred; see the value of **Error**. The mower requires manual intervention.
- *NOT_APPLICABLE* - Not applicable.
- *UNKNOWN* - Unknown.

## Description of Husqvarna Automower's Activities

- *MOWING* - Mowing in progress
- *GOING_HOME* - Returning to base
- *CHARGING* - On the base, charging.
- *LEAVING* - Leaves the base.
- *PARKED_IN_CS* - At the base.
- *STOPPED_IN_GARDEN* - Lawn mower stopped in the garden. Manual action required.
- *NOT_APPLICABLE* - Manual action required.
- *UNKNOWN* - Unknown.

# Change log

[View the changelog](./changelog)

# Support

If you're having a problem, start by reading the latest threads related to the plugin on [community]({{site.forum}}/tag/plugin-{{page.pluginId}}).

If you still can't find an answer to your question, feel free to create a new thread—and don't forget to include the plugin tag ([plugin-{{page.pluginId}}]({{site.forum}}/tag/plugin-{{page.pluginId}})).

At a minimum, you must provide:

- a screenshot of the Jeedom Health page
- a screenshot of the plugin's settings page
- All available plugin logs at the *INFO* level, pasted into `Preformatted Text` (use the `</>` button on the community), no files!
- Depending on the situation, a screenshot of the error encountered, a screenshot of the problematic configuration...
