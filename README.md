# Infitary HBI3 Marlin Firmware

This repository contains the original [Marlin Firmware](https://github.com/MarlinFirmware/Marlin) bundled with this 3D printer.

Settings are specific to my printer; use at your own risk!

## 3D Printer details

Infitary HBI3 (Reprap Prusa I3 clone)

Seems to be similar to 'Anet A3', '[Alunar M508](https://github.com/camalot/alunar-prusa-i3-marlin-i3-firmware)' and 'Aworldnet Havit A602'

![](https://github.com/laroo/infitary-hbi3-prusa-i3-marlin-firmware/raw/master/assets/printer-infitary-hbi3.jpg)

### Board

LSEE 3D v1.0 board

![](https://github.com/laroo/infitary-hbi3-prusa-i3-marlin-firmware/raw/master/assets/mainboard-lsee-3d-v1.0.jpg)

### Specifications

| Product Specifications                        |                                                        |
|-----------------------------------------------|--------------------------------------------------------|
| Brand                                         | Infitary                                               |
| Model                                         | HBI3                                                   |
| Structure                                     | Acrylic frame type                                     |
| Print head number                             | 1                                                      |
| Print the object size                         | 200*200*210mm                                          |
| Thickness accuracy                            | 0.1-0.4mm                                              |
| Whether to support Offline Print              | yes                                                    |
| Is there a display                            | yes                                                    |
| XY axis speed (maximum)                       | 3000mm/min                                             |
| Z axis speed (maximum)                        | 200mm/min                                              |
| Print speed                                   | 40-120mm/s                                             |
| Standard extrusion head diameter              | 0.2/0.3/0.4mm                                          |
| Extrusion head operating temperature(maximum) | 260 degrees                                            |
| Hot bed temperature (maximum)                 | 80                                                     |
| Hot bed material                              | Aluminum plate                                         |
| XY axis positioning accuracy                  | 0.012mm                                                |
| Z axis positioning accuracy                   | 0.004mm                                                |
| It supports printing materials                | ABS, PLA, HIPS                                         |
| Supports printing material diameter           | 1.75                                                   |
| Recommended use of materials                  | PLA                                                    |
| Control software language                     | 13 languages(including, English, French Spanish, etc.) |
| The number of data input                      | STL, OBJ, G-Code etc                                   |
| Automatic support generation model            | Support                                                |
| Machine size                                  | 510*400*415mm                                          |
| Machine weight                                | 8.5KG                                                  |
| Package Size                                  | 500*350*200mm                                          |
| Package weight                                | 9.5KG                                                  |
| Power supply/ maximum power consumption       | 220V/110V/180W                                         |
| Operating System Support                      | XP, WIN7, MacOS                                        |
| Print Host Software                           | Repetier-Host                                          |
| Working environment                           | Temp: 10-40 degrees, Humidity: 20-50%                  |

## Compiling

### Setup

Download & install [arduino-cli](https://arduino.github.io/arduino-cli/)

```
$ make setup-arduino-cli
```

### Build

```
$ make compile
```
