// Title: Array Structure
// Desc: This program demonstrates how to use an array of structures
// Author: JIAYUAN YU
// Date: 04/07/2023

#include <iostream>
#include <iomanip>
using namespace std;


// Fill in code to declare a structure called taxPayer that has three
// members:	taxRate, income, and taxes — each of type float
struct taxPayer{
    float taxRate;
    float income;
    float taxes;
};


int main()
{
	// Fill in code to define an array named citizen which holds
	// 5 taxPayers structures
  taxPayer citizen[5];

	cout << fixed << showpoint << setprecision(2);

	cout << "Please enter the annual income and tax rate for 5 tax payers: ";
	cout << endl << endl << endl;

	for (int count = 0; count < 5; count++)
	{
		cout << "Enter this year's income for tax payer " << (count + 1);
		cout << ": ";

		// Fill in code to read in the income to the appropriate place
    cin >> citizen[count].income;

		cout << "Enter the tax rate for tax payer # " << (count + 1);
		cout << ": ";

		// Fill in code to read in the tax rate to the appropriate place
    cin >> citizen[count].taxRate;

		// Fill in code to compute the taxes for the citizen and store it
		// in the appropriate place
    citizen[count].taxes = (citizen[count].income) * (citizen[count].taxRate);

		cout << endl;
	}

	cout << "Taxes due for this year: " << endl << endl;

	// Fill in code for the first line of a loop that will output the
	// tax information
  for(int index = 0; index < 5; index++)
	{
		cout << "Tax Payer # " << (index + 1) << ": " << "$ "
		     << citizen[index].taxes << endl;
	}

	return 0;
}

/* Exercise 2: In the previous code we have the following:
cout << "Tax Payer # " << (index+1) << ": " << "$ "
<<
citizen[index].taxes
<< endl;
Why do you think we need (index+1) in the first line but
index in the second?

Solve:
(index + 1): 
Since the count starts from 0, the taxpayer array starts from 1, in order to output the correct taxpayer, we need to add 1 to the index.
             
index(second): 
The first element of the array has an index of 0, the second element has an index of 1, and so on. In this case, the index is used to access the appropriate element of the array, which starts from 0, so we don't need to add 1 to it.

*/