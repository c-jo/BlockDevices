# BlockDevices

## Introduction

The BlockDevices module provides a registration point for block devices 
to register with. This repository contains:

* The documentation of the API (see BlockDevices/prminxml/blockdevices.xml)
* An implementation of the BlockDevices (see BlockDevices)
* An example driver module (see BlockDeviceDummy)
* Pyromaniac PyModules providing the original implementation (see Pyromaniac)

The CI will build the modules and the documentation.

## Dummy driver module

The Dummy driver module is implemented such that it provides an example 
of how to communicate with the BlockDevices module. It should be 
possible to update the driver module to communicate with hardware by 
updating the c/device code with the necessary communication with the 
hardware, and the c/devices code to register the devices.
