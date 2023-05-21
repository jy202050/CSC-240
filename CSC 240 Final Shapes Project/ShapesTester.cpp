/*
Title: Shape Project
Desc: Design and implement a set of classes that define a series of
      three-dimensional geometric shapes, and provide appropriate methods
      to compute each shape's volume and surface area.
Author: JIAYUAN YU
Date: 04/21/2023
*/


#include <iostream>
#include <iomanip>
#include <cmath>
#include "Shape.h"
#include "Sphere.h"
#include "Cube.h"
#include "Cylinder.h"
using namespace std;

// getParameter prototype
int getParameter();


int main() {
    // Create an Array of Shapes
    const int shapesArray = 3;
    Shape* numShapes[shapesArray];

    // Create variables to hold the radius and height
    double sphereRadius;
    double cubeWidth;
    double cylinderRadius;
    double cylinderHeight;

    // Ask the user for the radius of the sphere and then
    sphereRadius = getParameter();

    // Create an instance of that sphere
    Sphere sphere(sphereRadius);

    // Ask the user for the width of the cube and then
    // TODO: Create an instance of that cube
    cubeWidth = getParameter();
    Cube cube(cubeWidth);

    // Ask the user for the radius of the cylinder
    // cout << "Please enter the radius of the cylinder: ";
    cylinderRadius = getParameter();

    // Ask the user for the height of the cylinder
    // create an instance of the cylinder
    cylinderHeight = getParameter();
    Cylinder cylinder(cylinderRadius, cylinderHeight);

    // Print each object
    cout << fixed << setprecision(1);
    cout << "Sphere{radius=" << sphereRadius << "}" << endl;
    cout << "Cube{width=" << cubeWidth << "}" << endl;
    cout << "Cylinder{radius=" << cylinderRadius << ", height="
         << cylinderHeight << "}" << endl << endl;

    // Add each object to your list
    numShapes[0] = &sphere;
    numShapes[1] = &cube;
    numShapes[2] = &cylinder;

    // Use a for loop
    for(int i = 0; i < shapesArray; i++) {
      
        // Set output to 3 decimal place
        cout << fixed << setprecision(3);

        // Print the name of the class
        cout << numShapes[i]->toString() << endl;

        // Print the Surface Area
        cout << "Surface Area: " << setw(9) 
             << trunc(numShapes[i]->surfaceArea() * 1000) / 1000   // Truncate the output to 3 decimal place 
             << endl;

        // Print the volume
        cout << "Volume: " << setw(15) 
             << trunc(numShapes[i]->volume() * 1000) / 1000        // Truncate the output to 3 decimal place 
             << endl << endl;
    }

    return 0;                                                      // End main
}

// Write a method called getParameter that returns a positive integer
// It must continually ask the user to enter the value until a valid number is entered
// It must handle invalid values (Exception Handling)
int getParameter() {
    int userInput;
    cin >> userInput;

    while (cin.fail() || userInput < 0 ) {  // Chceck if the userInput is integer or less than 0, otherwise fail
        cin.clear();                        // Clear the previous input (error flags)
        cin.ignore(123, '\n');              // Discard input buffer

        
        cin >> userInput;
    }
    return userInput;
}
