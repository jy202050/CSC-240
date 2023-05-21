/**

Title: Volume of N Cones Assignment
Desc: Write a C program to compute the total volume of N cones
Author: JIAYUAN YU
Date: 02/18/2023

*   Volume of N Cones 
*/

#include <stdio.h>
#include <stdlib.h>
#include <math.h>

// Prototypes
float computeVolume(float, float); // Create the prototypes to compute the volume of cones

// Main method.  
int main(void) {
// Declare Variables
  float totalVolume;               // Declare float data type
  int userConeInput;               // Declare integer data type
  float userRadius;
  float userHeight;
  
// Get Input
  printf("Welcome to the Volume of Cones Program\n");
  printf("How many Cones do you wish to calculate? ");
  scanf("%d", &userConeInput);                          // Read the numbers of cones from user's input
  
  while(userConeInput < 0){                             // Alert when the user inputs a negative cone's number
    printf("Please enter a number > 0 : "); 
    scanf("%d", &userConeInput);
  } 
  
  for(int i = 0; i < userConeInput; ++i) {              // Prompts same amount of times as user's input                                
    printf("Enter the radius for cone %d: ", (i+1));   
    scanf("%f", &userRadius);                           // Read the cone's radius from user input
    
  while (userRadius < 0){
    printf("Please enter a positive radius: ");         // Alert when the user inputs a negative radius
    scanf("%f", &userRadius);                           // Read the cone's radius from user input
  }
        
    printf("Enter the height for cone %d: ", (i+1));      
    scanf("%f", &userHeight);                           // Read the cone's height from user input

  while(userHeight < 0) {
    printf("Please enter a positive height: ");         // Alert when the user inputs a negative heights
    scanf("%f", &userHeight);      
  }
    
  // Do Processing 
  totalVolume += computeVolume(userHeight, userRadius); // Recall computerVolume method to computer the total cone(s) volume
 }
        
  // Output Results
  printf("The total volume of %d cones is %.2f \n", userConeInput, totalVolume);  // Print out user's required calculate times
  printf("Goodbye\n");                                                            // and show the result of total volume
  
  return 0;
}


/**
* computeVolume method
*/
float computeVolume (float height, float radius) {
  return (1.0 / 3.0) * (M_PI * radius * radius * height);  // Create the method named computeVolume to calculate the
                                                           // cone volume
}