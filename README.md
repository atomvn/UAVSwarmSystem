# UAV swarm system for SAR missions
---
UAV swarm system project is developed to solve problems in SAR missions after disasters such as: typhoon, hurricane, landslide...

# How to install and run the project
---
This section provides a list of prerequisites for this project as well as instructions on running it.

## Hardware requirements:
Ubuntu 20.04 with minimum of 16GB RAM and 60GB available ROM, and external GPU (optional)

## Required tools and packages:

### 0. [Miniconda](https://docs.anaconda.com/free/miniconda/miniconda-install/)

```
bash cmd/setup_miniconda.sh
```

### 1. OpenCV:

```
bash cmd/setup_opencv.sh
```

### 2. Gazebo ROS:

Follow this instruction to install ROS: [Install ROS Noetic](https://wiki.ros.org/noetic/Installation/Ubuntu). [Install ROS Foxy](https://docs.ros.org/en/foxy/Installation/Ubuntu-Install-Debians.html)</br>

Then, to install [Gazebo 9](https://classic.gazebosim.org/tutorials?cat=install&tut=install_ubuntu&ver=9.0)

-Check if gazebo is installed:

```
gazebo
```

### 3. [PX4-Autopilot](https://github.com/PX4/PX4-Autopilot.git)

```
bash cmd/setup_px4.sh
```

You can check the result by running the following command in your bash shell:

```
dependencies/PX4-Autopilot/Tools/simulation/gazebo-classic/sitl_multiple_run.sh -n 6 -m iris
```

### 4. [MavSDK Python](https://github.com/mavlink/MAVSDK-Python.git)

```
bash cmd/setup_mavsdk.sh
```

### 5. [MavLink Router](https://github.com/intel/mavlink-router.git)

```
bash cmd/setup_mavrouter.sh
```

### 6. QT5

```
bash cmd/setup_qt.sh
```

### 7. [QGroundControl Ground Control Station](https://github.com/mavlink/qgroundcontrol/releases) (Optional)

### 8. Create a conda environment from the environment.yml file:

```
conda create --file environment.yml
```

## Run the program

### 1. Run all (Desktop app, Gazebo):

```
python src/main.py
```

### 2. Run only the desktop app

```
python src/app.py
```

## Debug

1. Check opening UCP/TCP ports
TCP

```

    netstat -ltnp

```

UDP

```

    netstat -lunp

```

UARTs

```

     ls /dev/tty*

````