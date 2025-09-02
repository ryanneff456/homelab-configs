#!/bin/bash
## Script for finding the current brightness level as a plain value
brightnessctl -m | awk -F',' '{print $4}' | tr -d '%'

