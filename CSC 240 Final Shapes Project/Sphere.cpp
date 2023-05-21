/*
Title: Shape Project
Desc: Subprogram of shape.
Author: JIAYUAN YU
Date: 04/21/2023
*/

#include <iostream>
#include <string>
#include <cmath>
#include "Sphere.h"
using namespace std;

// Method for Sphere surface area
// Sphere surface area: 4 * pi * radius^2
double Sphere::surfaceArea() {
 
  return (4.0 * M_PI * (radius * radius));
  
}

// Method for Sphere volume
// Sphere Volume: (4/3)* pi * radius^3
double Sphere::volume()  {
  
  return ((4.0 / 3.0 ) * M_PI * (radius * radius * radius));
  
}  

// String method

string Sphere::toString()  {

  return typeid(*this).name();
  
}


// Default Constructor
Sphere::Sphere() {
  
  radius = 0;
  
}

// Constructor with parameter
Sphere::Sphere(double sphereRadius) {
  
   radius = sphereRadius;
  
}

// Deconstructor
Sphere::~Sphere() {
  
}