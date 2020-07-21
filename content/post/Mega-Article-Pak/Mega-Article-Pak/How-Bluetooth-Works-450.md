---
title: "How Bluetooth Works"
date: 2019-02-05T11:21:01-08:00
description: "Bluetooth Technology Tips for Web Success"
featured_image: "/images/Bluetooth Technology.jpg"
tags: ["Bluetooth Technology"]
---

How Bluetooth Works

Bluetooth devices will normally operate at 2.4 GHZ 
in the license free, globally available ISM radio
band.  The advantage to this band includes worldwide
availability and compatibility.  A disadvantage to
this however, is that the devices must share this 
band with other RF emitters.  This includes 
automobile security systems, other wireless devices,
and other noise sources, such as microwaves.

To overcome this challenge, Bluetooth employs a 
fast frequency hopping scheme and therefore uses 
shorter packets than other standards within the 
ISM band.  This scheme helps to make Bluetooth
communication more robust and more secure.

Frequency hopping
Frequency hopping is basically jumping from frequency
to frequency within the ISM radio band.  After a 
bluetooth device sends or receives a packet, it 
and the device (or devices) it's communicating with
hop to another frequency before the next packet is
sent.  This scheme offers three advantages:
	1.  Allows Bluetooth devices to use the
entirety of the available ISM band, while never 
transmitting from a fixed frequency for more than a
short period of time.  This helps insure that 
Bluetooth conforms to the ISM restrictions on the
transmission quantity per frequency.
	2.  Ensures that any interference won't 
last long.  Any packet that doesn't arrive safely 
to its destination can be resent to the next
frequency.
	3.  Provides a base level of security as
it's very hard for an eavesdropping device to predict
which frequency the Bluetooth devices will use
next.

The connected devices however, must agree upon the
frequency they will use next.  The specification 
in Bluetooth ensures this in two ways.  First, it
defines a master and slave type relationship between
bluetooth devices.  Next, it specifies an algorithm
that uses device specific information when 
calculating the frequency hop sequences.

A Bluetooth device that operates in master mode can
communicate with up to seven devices that are set in
slave mode.  To each of the slaves, the master
Bluetooth device will send its own unique address
and the value of its own internal clock.  The
information sent is then used to calculate the
frequency hop sequences.  

Because the master device and each of the slave
devices use the same algorithm with the same initial
input, the connected devices will always arrive 
together at the next frequency that they have agreed
upon.

As a replacement for cable technology, it's no 
wonder that Bluetooth devices are usually battery
powered, such as wireless mice and battery powered
cell phones.  To conserve the power, most devices
operate in low power.  This helps to give Bluetooth
devices a range of around 5 - 10 meters.

This range is far enough for wireless communication
but close enough to avoid drawing too much power
from the power source of the device.

(word count 450)

PPPPP
