/*
Title: Shape Project
Desc: This is a Child class of shape, Cylinder.
Author: JIAYUAN YU
Date: 04/21/2023
*/

#include <iostream>
#include <string>
#include "Shape.h"
using namespace std;

// Inheritance
// Stating cylinder is the child class of shape
class Cylinder : public Shape {
  public: 
     Cylinder();                               // Default Constructor
     Cylinder(double radius, double height);   // Constructor with radius
     ~Cylinder();                              // Deconstructor

// Set to Const variable and prevent modification from the compiler
     double volume();           // Override the volume in the parent class
     double surfaceArea();      // Override the surface area in the parent class
      string toString();      // Override the string in the parent class     

  private:
     double radius;                            // Set width to invisible
     double height;
     
};