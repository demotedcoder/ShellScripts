#!/bin/bash

echo -e "Enter car name and its model"
oldIFS=$IFS
IFS='|' read car model #<<< 'BMW | i8'

echo "Name of the car is $car and model $model"
IFS=$oldIFS
