// This program demonstrates the use of dynamic arrays

// Title: Dynamic Array Ascending Sort
// Desc: Using dynamic array as parameter and sort it in ascending order
// Author: JIAYUAN YU
// Date: 04/06/2023

#include <iostream>
using namespace std;

// Prototypes
float averageScore(float *score, int num_scores);
void ascendingSort(float *score, int num_scores);
void indexOf(float *score, int num_scores, float id);


int main()
{

  int num_scores;      
  int count;
  float *score = new float[num_scores];
  float id;

   
  cout << "How many scores do you want to input: " 
       << endl;                                  // Prompt the number from user
  cin >> num_scores;                             // Read the scores into score array

  for (count = 0; count < num_scores; count++)
  {
     cout << "Please enter the score " << count + 1 
          << ":" << endl;                        // Get each score from the user
     cin >> score[count];                        // Read all the score into array
  }

  
  cout << "The average of the scores is: " << averageScore(score, num_scores) 
                                           << endl;
  
  ascendingSort(score, num_scores);              // Sort the array number before it prints out
  cout << endl << "Here are the scores in ascending order: " << endl;
  
  for (count = 0; count < num_scores; count++)   // Print the number from array
    {
        cout << score[count] << "\n";
    }
  
  
  
  cout << endl << "Please input an id number to be searched: " 
               << endl;                         // Prompt for an input id
                                                          
  cin >> id;                                    // Read into id
  indexOf(score, num_scores, id);
  
  delete[] score;                               // Deallocate the score array memory
  return 0;                                     // Terminate
} 

 

// Get all the scores from the user and returns its average
float averageScore(float *score, int num_scores)
{
  float total = 0;
  for(int count = 0; count < num_scores; count++)
    {
      total = total + score[count];            // Add up all the element from the 
                                               // array with total(0)
    }

  return total / num_scores;                   // return average
}


  
// Sort all the scores from the array in ascending order
void ascendingSort(float *score, int num_scores)
{
  for(int count = 1; count < num_scores; count++)
    {
      float temp = score[count];              // Pass score array to temporary 
      int j = count - 1;                      // swap element's position when current j equal
      while (j >= 0 && score[j] > temp)       // to its next element (move to left)
      {
         score[j + 1] = score[j];
         j--;
      }
      score[j + 1] = temp;
    }
}

// Search if id is in the array    
void indexOf(float *score, int num_scores, float id)
{
  for (int count = 0; count < num_scores; count++)
    {
      if (score[count] == id)
      {
        cout << id << " is in the array." << endl; // Print 'in the array' if index input is exist
        return;                                    // in the score array
      }
      
    }
  cout << id << " is not in the array." << endl;   // else return none
}
  

  
