#!/bin/bash
g++ -std=c++11 libusb_prog.cpp -o libusb_out.o `pkg-config --libs --cflags libusb-1.0`
