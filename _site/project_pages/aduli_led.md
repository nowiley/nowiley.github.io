# FPGA - ADULI-LED
Auto-calibrating Display using Unconstrained Layouts of Individually-addressable LEDs built entirely in Spartan7 FPGA with SystemVerilog. Integrating camera, HDMI, and WS2812b LEDs sporting a custom log(n) calibration algorithm. Awarded MIT 2025 Northern Telecom/BNR Project Award.

### Details
- Role: Class Project in Collaboration with Luc Gaitskell
- Dates: November 2024 - December 2024
- Vision: Enable fast calibration and smooth video playback on low cost LED strands all built on an FPGA. 
- [Github](https://github.com/nowiley/aduli-led)
- [Paper](https://www.linkedin.com/in/noahjwiley/details/projects/)

### Goals
- Sub-linear calibration
- Effient use of logic resources and memory
- Video playback and animations to demonstrate capabilities

## Gallery
<div class="scroll-container">
    <img title="Level Shift Conditioning with Driver Module" src="/assets/img/projects/aduli_led/aduli2.JPG">
    <img title="Initial Programming" src="/assets/img/projects/aduli_led/aduli3.JPG">
    <img title="Post Calibration Test Pattern" src="/assets/img/projects/aduli_led/aduli1.JPG">
    <img title="Calibration" src="/assets/img/projects/projects_home/aduli_led.gif">
</div>
<br>

## Design and Process
**Process:** Understand how these LEDs work and how to calibrate them. Constrained by the colors our camera can see (RGB) and the frame rate of our camera. Linear calibration would take too long. Utilize red/blue LEDs to calibrate and mar spaces without either as unused. Efficiently use binary address of LEDs to calibrate in log(n) time.

**Challenges:** Driving the LEDs at 5V from a 3.3V FPGA involving level shifting and poor transitions on initial level shifter (seen in oscilloscope picture). Ensuring timing is correct for WS2812b LEDs. Getting a camera to work with an FPGA. 

**Optimization:** Our entire design fit inside the block RAM allowing for extremely fast and predictable timing. Bridged multiple clock domains from camera to FPGA to LEDs with a variety of frame buffers and efficient use of 2 port BRAM.

**Result:** Successfully demonstrated calibration and video playback on a ~300 LED strand. Won the MIT 2025 Northern Telecom/BNR Project Award.


