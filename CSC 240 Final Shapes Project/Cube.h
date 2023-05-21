/*
Title: Shape Project
Desc: This is a Child class of shape, Cube.
Author: JIAYUAN YU
Date: 04/21/2023
*/

#include <iostream>
#include <string>
#include "Shape.h"
using namespace std;

// Inheritance
// Stating cube is the child class of shape
class Cube : public Shape {
  public: 
     Cube();                               // Default Constructor
     Cube(double width);                   // Constructor with radius
     ~Cube();                              // Deconstructor

// Set to Const variable and prevent modification from the compiler
     double volume();       // Override the volume in the parent class
     double surfaceArea();  // Override the surface area in the parent class
     string toString();     // Override the string in the parent class     

  private:
     double width;                        // Set width to invisible
     
};
