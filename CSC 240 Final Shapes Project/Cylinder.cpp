/*
Title: Shape Project
Desc: Subprogram of shape.
Author: JIAYUAN YU
Date: 04/21/2023
*/

#include <iostream>
#include <string>
#include <cmath>
#include "Cylinder.h"
using namespace std;

// Method for cylinder surface area
// Cylinder surface area: 2 * pi * radius * (radius + height)
double Cylinder::surfaceArea()  {

  return (2.0 * M_PI * radius * (radius + height));

}

// Method for cylinder volume
// Cylinder Volume: pi * radius^2 * height
double Cylinder::volume()  {

  return (M_PI * (radius * radius) * height);
  
}  

// String method
// to_string will convert the signed integer to a string
string Cylinder::toString()  {

  return typeid(*this).name();
  
}


// Constructor
Cylinder::Cylinder() {
  
  radius = 0;
  height = 0;
  
}

// Constructor with parameter
Cylinder::Cylinder(double cylinderRadius, double cylinderHeight) {

  radius = cylinderRadius;
  height = cylinderHeight;
  
}

// Deconstructor
Cylinder::~Cylinder() {
  
}