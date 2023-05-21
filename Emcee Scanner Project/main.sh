flex emcee.l
gcc lex.yy.c emcee.c -o emcee
./emcee < sqrt.mc > tokens.out
cat tokens.out
