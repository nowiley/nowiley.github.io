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
    <!-- <video controls> <source src="/assets/img/projects/club/lasers.mp4"></video> -->
    <video controls title="Tubes and bars only"> <source src="/assets/img/projects/club/tubes_bars.mp4"></video>
    <img title="Artnet to DMX with ESP8266" src="/assets/img/projects/club/club1.JPG">
    <video controls title="Programming moving lights"> <source src="/assets/img/projects/club/prog_movers.mp4"></video>
    <img title="Planning the tube lights" src="/assets/img/projects/club/club2.JPG">
    <img title="Planning Roof 1" src="/assets/img/projects/club/club4.JPG">
    <img title="Planning Roof 2" src="/assets/img/projects/club/club5.JPG">
    <img title="Before" src="/assets/img/projects/club/club3.JPG">
</div>

## Design and Process
**First Steps:** Surveyed the existing lighting system, room layout, and user needs. Researched industry standards and best practices for festival and club lighting. Discovered DMX, Artnet, and sACN protocols for lighting control which often rely on wired connections (XLR, RJ45) and proprietary software.

**High Level Design:** Our control software is hosted on a Raspberry Pi hooked up to a router for better WIFI coverage. The Pi runs a QLC+ server which can be accessed by any user on the network. Each custom LED fixture, controlled by an ESP32 running WLED, subscribes to a UDP multicast group associated with specific universes and channels. Old fixtures (like pars and moving heads) with DMX control recieve DMX data from an ESP8266 ArtNet to DMX node based off of [this repo](https://github.com/robertoostenveld/esp8266_artnet_dmx512?tab=readme-ov-file). These nodes similary subscribe to the multicast group, convert the ArtNet data to DMX, and output it to the fixtures. System response is rapid and smooth even with hundreds of WIFI devices nearby.  

**Light Design:** Designed custom LED fixtures with addressable ws2812b LEDs and ESP32. These modules are readily avalible on online retailers, allow WIFI communication, and pair nicely with open source software like WLED. Inspired by professional tube and roof lighting installations, we designed similar fixtures using $10 acrylic tubes and silicone diffusers. 

**Communication:** Modern professional lighting systems use Art-Net or sACN to transmit tens of thousands of channels of control data over ethernet (DMX is limited to 512 channels). Further research and experimentation led us to realize the ArtNet protocol uses UDP which we could easily transmit over WIFI instead of ethernet. 