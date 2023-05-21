/*
Title: Shape Project
Desc: Subprogram of the Shape
Author: JIAYUAN YU
Date: 04/21/2023
*/

#ifndef SHAPE_H
#define SHAPE_H

#include <iostream>
using namespace std;

// Abstract class that defines the interface for Sphere, Cube, and Cylinder
// Virtual function allow child class to be overridden
class Shape {
    public:
       // Initialize surface area to 0 as a constant variable
       virtual double surfaceArea() = 0;

       // Initialize volume to 0 as a constant variable
       virtual double volume() = 0;

       // Initialize toString method as constant
       virtual string toString() = 0;

  
};
#endif