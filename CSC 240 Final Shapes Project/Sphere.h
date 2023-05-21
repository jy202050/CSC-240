/*
Title: Shape Project
Desc: This is a Child class of shape, Sphere.
Author: JIAYUAN YU
Date: 04/21/2023
*/

#include <iostream>
#include <string>
#include "Shape.h"
using namespace std;

// Inheritance
// Stating sphere is the child class of shape
class Sphere : public Shape {
  public: 
     Sphere();               // Default Constructor
     Sphere(double radius);  // Constructor with radius
     ~Sphere();              // Deconstructor

// Set to Const variable and prevent modification from the compiler
     double volume() override;        // Override the volume in the parent class
     double surfaceArea() override;   // Override the surface area in the parent class
     string toString() override;      // Override the string in the parent class

  private:
     double radius;          // Set radius to invisible
     
};

