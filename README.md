# Proyecto de Semáforo con Máquina de Estados Finitos

## Descripción del Proyecto

Este proyecto implementa una máquina de estados finitos (FSM) para un semáforo utilizando Verilog. La FSM controla dos luces de tráfico ubicadas en intersecciones cruzadas, gestionando sus estados según las señales de entrada como presencia de vehículos, situaciones de emergencia y modos manuales.

## Estructura del Proyecto

El código Verilog está dividido en tres módulos principales:

- `top_fsm`: Es el módulo superior que integra los módulos del reloj y de la FSM del semáforo, gestionando las entradas y salidas.
- `clock`: Genera una señal de reloj derivada de una entrada de reloj a 100 MHz.
- `fsm_semaforo`: Define la lógica de la máquina de estados finitos para el control del semáforo.

### Diagrama de Estados

![image](https://github.com/nexbox09/Semaforo-FSM/assets/68700670/9022e8ec-5ace-4779-8f43-bb76e47ca309)


### Tabla de Estados

![image](https://github.com/nexbox09/Semaforo-FSM/assets/68700670/98a2c19e-2e52-4fd2-a4a0-48f02c178ad7)


## Más recursos

Tabla de Excel: [Tabla de verdad1.xlsx](https://github.com/nexbox09/Semaforo-FSM/files/15244862/Tabla.de.verdad1.xlsx)
Simulación con Logisim: 
Vídeo de YouTube: https://youtu.be/Cxe6SorxfYg
