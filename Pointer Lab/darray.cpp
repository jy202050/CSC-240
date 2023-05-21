// This program demonstrates the use of dynamic arrays

// Title: Dynamic Array
// Desc: Calculate the average monthly sale from the user input
// Author: JIAYUAN YU
// Date: 04/06/2023


#include <iostream>
#include <iomanip>
using namespace std;

int main()
{
	float *monthSales = nullptr;	  // a pointer used to point to an array
	                                // holding monthly sales 

	float total = 0;	              // total of all sales
	float average;		              // average of monthly sales
	int numOfSales;		              // number of sales to be processed 
	int count;			                // loop counter

	cout << fixed << showpoint << setprecision(2);

	cout << "How many monthly sales will be processed? ";
	cin >> numOfSales;

	// Fill in the code to allocate memory for the array pointed to by
	// monthSales.
  monthSales = new float[numOfSales];

  // Fill in the condition to determine if memory has been
	// allocated (or eliminate this if construct if your instructor
	// tells you it is not needed for your compiler) 
	if (monthSales <= 0)
	{
		cout << "Error allocating memory!\n";
		return 1;
	}

	cout << "Enter the sales below\n";

	for (count = 0; count < numOfSales; count++)
	{
		cout << "Sales for Month number	"
  // Fill in code to show the number of the month
		     << count + 1
		     << ": ";

	// Fill in code to bring sales into an element of the array
    cin >> monthSales[count];
	}

	for (count = 0; count < numOfSales; count++)
	{
		total = total + monthSales[count];
	}
  
  // Fill in code to find the average
	average = total / numOfSales;

	cout << "Average Monthly sale is $" << average << endl;

	// Fill in the code to deallocate memory assigned to the array.
  delete monthSales;

	return 0;
}