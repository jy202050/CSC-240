// Title: Rectangle Structure
// Desc: This program uses a structure to hold data about a rectangle
// Author: JIAYUAN YU
// Date: 04/07/2023

#include <iostream>
#include <iomanip>
using namespace std;



// Fill in code to declare a structure named rectangle which has
// members length, width, area, and perimeter all of which are floats
struct rect_Struct{

    float length, width, area, perimeter;

};

int main()
{
	// Fill in code to define a rectangle variable named box
  rect_Struct box;

	cout << "Enter the length of a rectangle: ";
	// Fill in code to read in the length member of box
  cin >> box.length;

	cout << "Enter the width of a rectangle: ";
	// Fill in code to read in the width member of box
  cin >> box.width;


	// Fill in code to compute the area member of box
  box.area = (box.length) * (box.width);

	// Fill in code to compute the perimeter member of box
  box.perimeter = (2) * ((box.length) * (box.width));

	cout << fixed << showpoint << setprecision(2);

	// Fill in code to output the area with an appropriate message
  cout << "The area of your rectangle is: " << box.area << endl;

	// Fill in code to output the perimeter with an appropriate message
  cout << "The perimeter of your rectangle is: " << box.perimeter << endl;

  if(box.length == box.width){
    cout << "The rectangle is a square." << endl;
  }
  else{
    cout << "The rectangle is not a square." << endl;
  }

	return 0;
}