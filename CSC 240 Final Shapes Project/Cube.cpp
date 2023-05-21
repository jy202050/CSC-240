/*
Title: Shape Project
Desc: Subprogram of shape.
Author: JIAYUAN YU
Date: 04/21/2023
*/

#include <iostream>
#include <cmath> 
#include <string>
#include "Cube.h"
using namespace std;

// Method for Cube surface area
// Cube surface area: 6 * S^2
double Cube::surfaceArea()  {
 
  return (6.0 * (width * width));
  
}

// Method for Cube volume
// Cube Volume: S^3 (S = width length of the cube)
double Cube::volume()  {
  
  return (width * width * width);
  
} 

// String method
// to_string will convert the signed integer to a string
string Cube::toString()  {

  return typeid(*this).name();
  
}


// Default Constructor
Cube::Cube() {
  
  width = 0;
  
}

// Constructor with parameter
Cube::Cube(double cubeWidth) {
  
 width = cubeWidth;
}

// Deconstructor
Cube::~Cube() {
  
 
}