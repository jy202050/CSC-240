# First program written in Emcee

def guess : real;
def n     : real;

# Continue until the root has been found
guess := 1.0;
n     := inputReal();

if [ n >= 0.0 ] then
{

# Continue until the root has been found

   while [ abs(guess^2 - n) > 0.01 ]
   {
      guess := (n + (n / guess)) / 2;
   };

# Print the result
   print("Root is ", guess);
};
