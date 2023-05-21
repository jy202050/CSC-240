/*
  Title: Saving Account
  Desc: This program will show the method of deposit, withdrawal 
        and show current balance
  Author: JIAYUAN YU
  Date: 04/13/2023
*/

#include <iostream>
using namespace std;

// Create a class name SavingsAccount
class SavingsAccount {
  public:
    void initialBalance(int dollars, int cents);
    void deposit(int dollars, int cents);           
    void withdraw(int dollars, int cents);
    void displayValues();                           // display bank balance
    
    SavingsAccount();                               // Default Constructor
    SavingsAccount(int dollars, int cents);         // Constructor with parameter
    ~SavingsAccount();                              // Deconstructor 
   
  private:
    int currentDollars;
    int currentCents;
    void normalize();                               // Normalized when cents are greater than 100

};


int main(){
  
  // Exercise 1
  SavingsAccount bank1;                            // Defines bank1 as object of the class SavingsAccount 
  bank1.initialBalance(200, 50);                   // Set initial balance of bank1 to 200 dollars and 50 cents
  bank1.deposit(40, 50);                           // Deposit 40 dollars and 50 cents
  bank1.withdraw(100,98);                          // Withdraw 100 dollars and 98 cents
  bank1.displayValues();                           // Call the displayValues method to show the bank's balance 
                                                   // after deposit and withdraw

  // Exercise 2
  SavingsAccount bank2;                            // Defines bank2 as object of the class SavingsAccount  
  
  char userRespond;
  int initialDollars, depositDollars, withdrawDollars;
  int initialCents, depositCents, withdrawCents;
  
  
  cout << "Please input the initial dollars: ";    // Prompt the initial dollars from the user
  cin >> initialDollars;                           // Read the value and save it in initialDollars

  cout << "Please input the initial cents: ";      // Prompt the initial cents from the user
  cin >> initialCents;                             // Read the value and save it into initialCents

  bank2.initialBalance(initialDollars,initialCents); // set initial balance of bank 2 to whatever the user input is


  // do-while Loop to prompt the user input in dollars and cents format

  do {
        cout << "Would you like to make a deposit? Y or y for yes, N or n for no: ";  // Prompt for deposit if user input char y or Y, 
                                                                                      // prompt for withdraw if user input n or N.
        cin >> userRespond;                                                           // Read user's respond
        
    if (userRespond == 'Y' || userRespond == 'y') { 
            cout << "Please input the dollars to be deposited: ";                     // Prompt for dollars deposit
            cin >> depositDollars;                                                    // Read user's input and save it into depositDollars
            cout << "Please input the cents to be deposited: ";                       // Prompt for cents to be deposited 
            cin >> depositCents;                                                      // Read user's input and save it into depositCents
            bank2.deposit(depositDollars, depositCents);                              // Calling deposit method to add deposit to current dollars
        }
    } while (userRespond == 'Y' || userRespond == 'y');

  do {
        cout << "Would you like to make a withdrawal? Y or y for yes, N or n for no: "; // Prompt for withdrawn if user input char y or Y, 
                                                                                        // display current balance if user input n or N.
        cin >> userRespond;                                                            // Read user's respond
    if (userRespond == 'Y' || userRespond == 'y') { 
            cout << "Please input the dollars to be withdrawn: ";                      // Prompt for dollars withdrawn
            cin >> withdrawDollars;                                                    // Read user's input and save it into withdrawDollars
            cout << "Please input the cents to be withdrawn: ";                        // Prompt for cents withdrawn
            cin >> withdrawCents;                                                      // Read user's input and save it into withdrawCents
            bank2.withdraw(withdrawDollars, withdrawCents);                            // Calling withdraw method to subtract dollars from withdraw
        } 
    } while (userRespond == 'Y' || userRespond == 'y');

    bank2.displayValues();                         // Display the current balance of the bank (for bank 2)
  
  
  return 0;                                        // Terminate
}



// Function for all members

// initial balance funtion
void SavingsAccount::initialBalance(int dollars, int cents) {
    currentDollars = dollars;                      // Initial dollars is equal to whatever is set
    currentCents = cents;                          // Initial cents is equal to whatever is set                                              
    normalize();                                   // Calling normalize method
}

// Deposit Function
void SavingsAccount::deposit(int dollars, int cents) {
    currentDollars += dollars;                     // Adding dollars to current dollars from the deposit
    currentCents += cents;                         // Adding cents to current cents from deposit
    normalize();                                   // Calling normalize method
}

// Withdraw Function
void SavingsAccount::withdraw(int dollars, int cents) {
    currentDollars -= dollars;                     // subtracting dollars to current dollars from the withdrawl
    currentCents -= cents;                         // subtracting cents to current cents from the withdrawl
    normalize();                                   // Calling normalize method
}

// Display bank balance Function
void SavingsAccount::displayValues() {
  cout << "Dollars = " << currentDollars << endl   // Print the current bank's balance in dollars and cents format
       << "Cents = " << currentCents << endl;
}

// Normalize Function
void SavingsAccount::normalize() {
  if (currentCents >= 100) {
    currentDollars += currentCents / 100;          // normalized to dollars
    currentCents = currentCents % 100;             // cents are remainder after divided by 100 or after normalized
  }
  else if (currentCents < 0) {
    currentDollars -= 1;
    currentCents += 100;
  }
}

// default constructor
SavingsAccount::SavingsAccount() {
  currentDollars = 0;
  currentCents = 0; 
}

// Constructor with parameter
SavingsAccount::SavingsAccount(int dollars, int cents) {
  currentDollars = dollars;                       // Initial dollars is equal to whatever is set
  currentCents = cents;                           // Initial cents is equal to whatever is set   
  //normalize();                                    // Calling normalize method
}

// Deconstructor
SavingsAccount::~SavingsAccount(){
  
}
