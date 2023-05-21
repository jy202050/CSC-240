# Title: Regular Expression Assignment
# Desc: Complete this assignment by following the given instructions
# Author: JIAYUAN YU
# Date: 02/14/2023


# Example
#  Write an egrep statement that matches any real number
echo matches any real number
egrep  '^[-+]?[0-9]*\.?[0-9]+$' textfile.txt

# 1. Modify the Regular Expression for a real number to "Require" a "+" or "-" at the beginning of the line.  "[-+]?[0-9]*\.?[0-9]+"
echo matches for expression 1
egrep  '^[-+][0-9]*\.?[0-9]+$' textfile.txt

# 2. Write a regexp that will match any string that starts with "cat" followed by at least one more character
echo matches for expression 2
egrep '^cat.+$' textfile.txt
# 3. Write a regexp that will match any string that starts with ”hum” and ends with ”001” with any number of characters, including none, in between.  Hint: consider both ”.” and ”*”
echo matches for expression 3
egrep '^(hum)(.*)(001)+$' textfile.txt

# 4. Write a regexp that will match any line that begins with "//"
echo matches for expression 4
egrep '^[\/\/]{2}(.*)+$' textfile.txt

# 5. Write a regexpr that will match any line that begins with "/*" and ends with "*/"
echo matches for expression 5
egrep '^(\/\*)(.*)+$' textfile.txt

# 6. Write a regexpr that matches any line that represents a 32 bit hexadecimal number.
#    Starts with 0X, followed by 8 hexidecimal digits (0,1,2,3,4,5,6,7,8,9,A,B,C,D,E,F)
echo matches for expression 6
egrep '^(0X)[A-F0-9]+$' textfile.txt

# 7. Write a regexpr that will match any line that begins with two characters, followed by 1 digit, followed by 1 character, followed by 3 digits.  The last 3 digits represent the day of the year.  From 001 to 0365
echo matches for expression 7
egrep '^[a-z]{2}[0-9]{1}[a-z]{1}[0-3]{1}[0-6]{1}[0-5]{1}$' textfile.txt

# 8. Write a regexpr that will match any line that consists of a series of characters (at least one) and ends with ".java".  No digits allowed.
echo matches for expression 8
egrep '^[a-z]*(.java)$' textfile.txt

# 9. Write a regexpr that will matches a postfix increment or decrement statement.  Examples:  i++, i--, count++, count--, _val++, -val--
echo matches for expression 9
egrep '^[a-z]*[-+]{2}$' textfile.txt

#  10. Write a regexp that will match the rules for a password that requires at least 8 characters, followed by at least 2 digits followed by at least 2 punctuation marks (Can be written '[[:punct:]])'.
echo matches for expression 10
egrep '^[a-z]{8,}[0-9]{2,}[!#&]{2,}$' textfile.txt

# 11.  Write an expression that repeats the same three characters/digits four times in a row.  Examples:  lollollollol  yumyumyumyum 123123123123

echo matches for expression 11
egrep '^([yum123]{3}){4}$' textfile.txt

