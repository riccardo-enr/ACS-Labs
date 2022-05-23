# Lab02.2 - Notes

## Thresholds

- $a_4 = 200 \quad rad/s^2$
- $a_3$ not used
- $a_2 = -400 \quad rad/s^2$
- $a_1 = -420 \quad rad/s^2$

# Lab02.3 - Notes

$a_3$ threshold in not considered.
Pressure slopes are already defined as a start.

Acceleration thresholds are in $rad/s^2$ and pressure slopes are in $MPa/s$.

Do not change the folder when using send to Simulink, work in the original folder, the one there is when Matlab is opened by Carsim.

## Controller description

Right wheels on asphalt, left wheels on snow (low $\mu$).

### Additional constraint
Add it later if all works correctly by just tuning the thresholds.

On if the flag `AdCo = 1`, Off if 0. 

### Professor thresholds
Taken from video, maybe wrong.

- $a_4 = 150$
- $a_2 = -200$
- $a_1 = -220$

## Plot analysis
- Dashed blue: Vehicle velocity
- Solid blue: Wheel velocity
- Solid red: Mode (scaled)
- Dashed red: Signal from additional constraint
- Black: Signal acceleration
- Dashed green: Command braking pressure
- Green: Braking pressure on the wheel

Take a look at wheel speed and if it doesn't block the the thresholds chosen are good.


## Pressure slopes

---

# What to do in Lab
1. Upload saved parsfile.
2. Remember to upload modified parsfile later.
## Git commands


