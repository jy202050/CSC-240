// Title: Prime Number Project
// Desc: Print all the prime numbers from users' range
// Author: JIAYUAN YU
// Date: 04/15/2023

#include <iostream>
#include <cmath>    // Declares a set of functions to perform mathematical operations
using namespace std;



// Subprogram to initialize array with all elements set to zero, except for elements 0 and 1 set to -1 (not prime)
int* initArray(int size) {
    int* arr = new int[size];          // Dynamically allocate memory for array
    for (int i = 0; i < size; i++) {
        if (i < 2) {
            arr[i] = -1;              // Set elements 0 and 1 to -1 (not prime)
        } else {
            arr[i] = 0;               // Set all other elements to 0 (unknown)
        }
    }
    return arr;                      // Return pointer to array
}

// Subprogram to find index of first zero in array
int findNextZero(int* arr, int size) {
    for (int i = 2; i < size; i++) { // Start at element 2 (first prime)
        if (arr[i] == 0) {
            return i;                // Return index of first zero
        }
    }
    return -1;                       // If no zeros found, return -1 (error)
}

// Subprogram to circle a prime and cross out its multiples
void crossOutMultiples(int* arr, int size, int factor) {
    int index = factor * 2;          // Start at first multiple of factor (skip factor itself)
    while (index < size) {
        arr[index] = -1;             // Cross out multiple
        index += factor;             // Move to next multiple
    }
    arr[factor] = 1;                 // Circle factor (it's prime)
}

// Subprogram to circle all remaining primes
void circleRemaining(int* arr, int size) {
    for (int i = 2; i < size; i++) { // Start at element 2 (first prime)
      if (arr[i] == 0) {
        crossOutMultiples(arr, size, i); // Circle prime and cross out its multiples
        }
    }
}

// Subprogram to find all circled elements and return them in a new array
int* findCircled(int* arr, int size, int& newSize) {
    int count = 0;
    for (int i = 2; i < size; i++) {     // Start at element 2 (first prime)
        if (arr[i] == 1) {
            count++;                    // Count circled elements
        }
    }
  
    int* circled = new int[count];      // Dynamically allocate memory for new array
    int index = 0;
    for (int i = 2; i < size; i++) {   // Start at element 2 (first prime)
        if (arr[i] == 1) {
            circled[index] = i;        // Add circled element to new array
            index++;
        }
    }
    newSize = count;                  // Set size of new array
    return circled;                   // Return pointer to new array
}

// Main program
int main() {
  
    int lowBoundary = 0, highBoundary = 0;     
    bool repeat = true;
  
    while (repeat) {
        cout << "Welcome to the prime number generator!" << endl;
        do {
            cout << "Enter the low boundary (less than high boundary): ";
            cin >> lowBoundary;
        } while (lowBoundary <= 0);
        do {
            cout << "Enter the high boundary (greater or equal to low boundary): ";
            cin >> highBoundary;
        } while (highBoundary <= 0 || lowBoundary > highBoundary);
        int size = highBoundary + 1;        // Size of array is high boundary + 1
        int *arr = initArray(size);         // Initialize array
        circleRemaining(arr, size);         // Circle all remaining primes

        int newSize;
        int *circled = findCircled(arr, size, newSize); // Find all circled elements

        cout << "Prime numbers between " << lowBoundary << " and " 
             << highBoundary << ":" 
             << endl;
      
        for (int i = 0; i < newSize; i++) {
            if (circled[i] >= lowBoundary) {
                cout << circled[i] 
                     << " ";
            }
        }
        cout << endl;

        delete[] arr;                        // Free memory allocated for array
        delete[] circled;                    // Free memory allocated for new array

        char choice;
        do {
            cout << "Would you like another try? "
                 << endl
                 << "Please answer y for yes, n for no: ";
            cin >> choice;
        } while (choice != 'y' && choice != 'n');

        if (choice == 'n') {
            repeat = false;
        }
    }

    cout << "Exit!" << endl;

    return 0;

}