// Title: Airport Stats
// Desc: The program uses a structure to store the information for a
//       particular month at the local airport
// Author: JIAYUAN YU
// Date: 04/07/2023

# include <iostream>
# include <iomanip>
using namespace std;

struct monthlyFlightInfo{
    int monthlyFlightLanded;
    int monthlyFlightDeparted;
    int greatestDailyLanding;
    int leastDailyLanding;
};

int main(){
  // define an array named month which holds 12 monthlyFlightInfo instruction
  monthlyFlightInfo month[12];

  // Initilize
  int totalFlightLanded = 0;
  int totalFlightDeparted = 0;
  int greatestDailyLanding = 0;
  int leastDailyLanding = 0;
  float averageMonthlyLanded;
  float averageMonthlyDeparted;
  


  // Loop: Prompt the user 12 times (12 months in a year)
  for (int count = 0; count < 12; count++)
    {
       // Prompt for a monthly total landed flight 
       // and store it into monthlyFlightlanded
       cout << "Enter the total flight landed for month " << count+1 << ": " << endl;
       cin >> month[count].monthlyFlightLanded;

       // Prompt for a monthly total departed flight 
       // and store it into monthlyFlightDeparted
       cout << "Enter the total flight departed for month " << count+1 << ": " << endl;
       cin >> month[count].monthlyFlightDeparted;

       // Prompt for the greatest daily number of flights landed in a month
       // and store it into greatestDailyLanding
       cout << "Enter the greatest number(day) of flight landed in month " << count+1 
            << ": " << endl;
       cin >> month[count].greatestDailyLanding;

       // Prompt for the least daily number of flights landed in a month
       // and store it into leastDailyLanding
       cout << "Enter the least number(day) of flight landed in month " << count+1
            << ":" << endl;
       cin >> month[count].leastDailyLanding;

       // Return initialized value if user's input is < 0
       if (month[count].greatestDailyLanding < 0)
       {
         return greatestDailyLanding;
       }

       if (month[count].leastDailyLanding < 0)
       {
         return leastDailyLanding;
       }

      // Calculate the total flight landed for the whole year(12 months)
      totalFlightLanded = totalFlightLanded + month[count].monthlyFlightLanded;
      totalFlightDeparted = totalFlightDeparted + month[count].monthlyFlightDeparted;
      
    
    }  
     

  // Calculate the average monthly flight landed and departed
  averageMonthlyLanded = totalFlightLanded / 12;
  averageMonthlyDeparted = totalFlightDeparted / 12;

  // Print the total flight landed and departed for the year
  cout << "The total number of flights landed for the year is: "
       << totalFlightLanded << endl;
  cout << "The total number of flights departed for the year is: "
       << totalFlightDeparted << endl;

  // Print the average output
  cout << "The average monthly flights landed is: " << averageMonthlyLanded << endl;
  cout << "The average monthly flights departed is: " << averageMonthlyDeparted << endl;

  // Print the highest daily landed in a month (out of 12 months)
  for (int count = 0; count < 12; count++)
    {
      cout << "The highest daily landed in month "<< count+1 
           << " is " << month[count].greatestDailyLanding << endl;
    }
  
  // Print the least daily landed in a month (out of 12 months)
  for (int count = 0; count < 12; count++)
    {
      cout << "The least daily landed in month "<< count+1 
           << " is " << month[count].leastDailyLanding << endl;
    }   
  
  return 0;
  
}

