# Club Lighting
Custom lighting system for fraternity basement with lasers, moving lights and addressable LEDs, using ESP32, ESP8266, and Raspberry Pi system. Designed new LED fixtures, integrated old dmx fixtures, and programmed custom lighting effects, all over LAN and WIFI. User is able to easily control all lights through website.

### Details
- Role: Co-Director
- Dates: Summer 2023 - Present
- Vision: Provide intuitive, mesmerizing, and reliable club like lighting for the fraternity.

### Goals
- Intuitive control for any user
- Dope lighting effects
- Robust wireless control in high interference environment
- Easily serviceable, expandable, and inexpensive replacement components
- In budget (1k or less)

## Gallery
<div class="scroll-container">
    <!-- <video controls title="Tubes and bars only"> <source src="/assets/img/projects/club/tubes_bars.mp4"></video> -->
    <img title="Artnet to DMX with ESP8266" src="/assets/img/projects/club/club1.JPG">
    <video controls title="Programming moving lights"> <source src="/assets/img/projects/club/prog_movers.mp4"></video>
    <img title="Planning the tube lights" src="/assets/img/projects/club/club2.JPG">
    <video controls title="All together"> <source type="video/mp4" src="/assets/img/projects/club/lasers.mp4"></video>
    <img title="Planning Roof 1" src="/assets/img/projects/club/club4.JPG">
    <img title="Planning Roof 2" src="/assets/img/projects/club/club5.JPG">
    <img title="Before" src="/assets/img/projects/club/club3.JPG">
    <img title="Dashboard" src="/assets/img/projects/club/dashboard.png">
</div>

## Design and Process
**First Steps:** Surveyed the existing lighting system, room layout, and user needs. Researched industry standards and best practices for festival and club lighting. Discovered DMX, Artnet, and sACN protocols for lighting control which often rely on wired connections (XLR, RJ45) and proprietary software.

**High Level Design:** A QLC+ webserver is hosted on a Raspberry Pi hooked up to a router for better WIFI coverage. The Pi runs a QLC+ server which can be accessed by any user on the network. Custom lights have their own ESP32 controler connected to the network and old dmx lights are connected to an ESP8266 ArtNet to DMX node based off of [this repo](https://github.com/robertoostenveld/esp8266_artnet_dmx512?tab=readme-ov-file). These ESP32s and ESP8266s subscribe to their respective multicast group and output controls to the fixtures. System response is rapid and smooth even with hundreds of WIFI devices nearby.

**LED Fixture Design:** Custom LED fixtures were deisgned with addressable ws2812b LEDs and ESP32. These modules are readily avalible on online retailers, allow WIFI communication, and pair nicely with [WLED](https://github.com/Aircoookie/WLED), our open source control software of choice. Inspired by professional tube and roof lighting installations, we designed similar fixtures using $10 acrylic tubes and silicone diffusers. 

**DMX Lights:** While the fraternity could not splurge on professional ArtNet enabled fixtures costing thousands of dollars per fixture, we were able to bring life and similar features to sub-hundred dollar dmx moving heads, lasers, pars, etc. with the use of Artnet to DMX nodes. These nodes comprise of an ESP8266 for WIFI connectivity and RS485 board to output DMX signals. 

**Communication:** Modern professional lighting systems use Art-Net or sACN to transmit tens of thousands of channels of control data over ethernet (DMX is limited to 512 channels). Further research and experimentation shows ArtNet protocol uses UDP which we found to work reliably over WIFI instead of ethernet in our smaller scale system. We use the 2.4GHz band of a small [TP-Link Archer C54](https://www.tp-link.com/us/home-networking/wifi-router/archer-c54/) router with 300 Mbps of bandwith which we found to work well.

**User Interface:** [QLC+](http://qlcplus.org/), an open source lighting control software that pairs nicely with custom WLED fixtures. Our Raspberry Pi runs a limited version of Linux hosting a QLC+ webserver. A user simply loads a webpage and logs on to see and interact with the lighting dashboard. This dashboard includes buttons, sliders, and knobs that the user can interact with via keyboard, MIDI controller, or touchscreen. We find that users enjoy the touchscreen experience the most.
