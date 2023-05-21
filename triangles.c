#include <stdio.h>

// Title: Triangles
// Desc: Define a program taht get the name of a file from the command line
// Author: JIAYUAN YU
// Date: 03/26/2023


// Note:  You will need to modify main to accept command line arguments.
int main(int argc, char*argv[]){     // This is main function to use 
                                     // the command line argument
  int a,b,c;
  
  if(argc == 1){                     // Check base
    printf("Usage: triangles filename \n");
    return 0;                        // end
  }

  FILE * triangle;
  triangle = fopen(argv[1],"r");  // Open a file and return a filePointer file
  if(triangle == NULL){           // Test if the file is empty, return a error  
    printf("File %s cannot be opened.\n", argv[1]);
    return 0;                        // end
  } 

  
  while(!feof(triangle)){         // returns non-zero value only if end of file has 
                                     // reached, otherwise it returns 0
    fscanf(triangle, "%d,%d,%d", &a,&b,&c); // Get the number from the file
    if(a+b>c && b+c>a && a+c>b){     // print txt without last 3 line 
    printf("%d, %d, %d\n",a,b,c);    // Print abc(int datatype) from the text  
    }
  }
  fclose(triangle);               // Close the file associated with stream(filePointer)
  
  return 0;                          // Close the program
}

// I challenge you to fix your triangles.c code!!