# Low-Power Car Perception and Planning
Designed vision and remote computation stack for small Raspberry Pi Zero 2 W powered car test platform. Computation required for motion planning is on the same order of magnitude as actuation, leading to interesting problems and novel algorithmic solutions. While Raspberry Pis and Rasbian offer many useful features at an approachable price like integrated camera support, WIFI, gpio control, I2C, and SPI, they are often incompatible with standard robotics libraries like ROS. Learn more about this project from its novel software stack to its custom hardware and lightweight design.   

### Details
- Role: Perception Researcher
- Dates: Summer 2024 - Present
- Vision: Create easy to use low-energy robotic test platform to verify algorithmic perception and motion planning solutions.

### Goals
- Compact and low energy
- Low-cost and repairable 
- Enable the use and verification of perception solutions
- Robust functionality and integration with internal lab systems
- Standard support for robotic development 

## Gallery
<div class="scroll-container">
    <img title="Testing Vision Latency" src="/assets/img/projects/low_power_perception/perception2.jpg">
    <img title="OBSLAM3 Verification" src="/assets/img/projects/low_power_perception/perception3.JPG">
    <img title="Motion-Capture Room Integration" src="/assets/img/projects/low_power_perception/perception4.jpg">
    <img title="IMU Integration" src="/assets/img/projects/low_power_perception/perception5.JPG">
    <video controls title="All together"> <source type="video/mp4" src="/assets/img/projects/low_power_perception/perception1.MP4"></video>
</div>
<br>

## Notes
**ROS On Raspberry Pi:** The Raspberry Pi Zero 2 W is a great low cost and capable ARM computer with great features for robotic applications like GPIO access and camera support. However, ROS is not officially supported on Rasbian's version of linux (which enables many of the Raspberry Pi's great features). To enable these functionalities along with ROS, Docker was used to containerize the ROS requirement, separating many dependencies from the host system. This allowed for the use of ROS on the Raspberry Pi Zero 2 W without the need for a custom OS or kernel and modularized the codebase for easy development and deployment.

**Vision Stack:** The Raspberry Pi Zero 2 W is equipped with CSI camera support, which enables great low power and high quality vision features. LibCam and PiCamera2 are custom libraries enabling the use of low cost camera modules with the Raspberry Pi, and their binaries come pre-installed on Rasbian. Building these libraries from source is challening, so effort was made to use preexisting binaries and libraries to enable quick development and testing. Image data is collected by the host OS and sent to a client (either the Docker container or a remote computer) via TCP/IP. This allows for local image processing and offloading for compute intensive tasks like monocular depth estimation, object detection, and SLAM.

**Remote Computation:** The Raspberry Pi Zero 2 W is a low power computer, and while it is capable of running ROS, it is not capable of running the full ROS stack and perception algorithms. To emulate higher computation capacity (and to test custom hardware in a HIL fashion), a remote host and an additional remote GPU server were integrated into the system. The host and Raspberry Pi are on the same network, allowing for low latency ROS processes. The GPU server is on a different network, and requested by the host for compute intensive tasks, especially neural net inference tasks.