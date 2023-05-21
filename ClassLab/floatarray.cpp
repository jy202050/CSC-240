/*

 Title: Float Array Program
 Desc:  This program reads floating point data from a data file and places those
        values into the private data member called values (a floating point array)
        of the FloatList class. Those values are then printed to the screen.
        The input is done by a member function called GetList. The output
        is done by a member function called PrintList. The amount of data read in
        is stored in the private data member called length. The member function         
        GetList is called first so that length can be initialized to zero.
 Author: JIAYUAN YU
 Date: 04/13/2023
 
*/




#include <iostream>
#include <fstream>
#include <iomanip>
using namespace std;

const int MAX_LENGTH = 50;		// MAX_LENGTH contains the maximum length of our list 
class FloatList					      // Declares a class that contains an array of
								              // floating point numbers
{
public:
	void getList(ifstream&);	  // Member function that gets data from a file 
	void printList() const;		  // Member function that prints data from that
								              // file to the screen.
  void averageList() const;   // add member function average for exercise 3

	FloatList();				        // constructor that sets length to 0.
	~FloatList();				        // destructor

private:
	int length;					        //	Holds the number of elements in the array
	float values[MAX_LENGTH];	  //	The array of values

};

int main()
{
	ifstream tempData;	// Defines a data file

	// Fill in the code to define an object called list of the class FloatList
  FloatList list;

	cout << fixed << showpoint;

	cout << setprecision(2);

	tempData.open("temperatures.txt");

	// Fill in the code that calls the getList function.
  list.getList(tempData);

	// Fill in the code that calls the printList function.
  list.printList();

  // Calls the funtion to print the average of the list
  list.averageList(); 

	return 0;
}

FloatList::FloatList()
{
	// Fill in the code to complete this constructor that
	// sets the private data member length to 0
  length = 0;
}

// Fill in the entire code for the getList function
// The getList function reads the data values from a data file
// into the values array of the class FloatList

void FloatList::getList(ifstream& dataFile) {
  while(!dataFile.eof()) {
     dataFile >> values[length];
     length++;
  }
}

// Fill in the entire code for the printList function
// The printList function prints to the screen the data in
// the values array of the class FloatList

void FloatList::printList() const {
  for (int count = 0; count < length; count++) {
    cout << values[count] << endl;
    
  }
}


// Add average function tfor list

void FloatList:: averageList() const {
  float sum, average;
  for (int count = 0; count < length; count++) {
     
     sum += values[count];
  }
     average = (sum/length);
     cout << "The average temperature is: " << average << endl;
}

// Desctructor
FloatList::~FloatList() {
  
}

// Exercise 1 Answer:
// printList const means it guarantees that it will not modify any member variable of the class which getList is not and it will modifies the values array
