Write a function that accepts an integer n and a string s as parameters and returns a string of s repeated exactly n times

Output should be like this
vvvvvvvvvvvvvvvvvvvvvvvv
6 I     → IIIIII
2 Hello → HelloHello
^^^^^^^^^^^^^^^^^^^^^^^^

,       ; read number of repetitions n
>       ; Add a 0 before the starting point to know our bounds
>,[>,]  ; read string until the terminating zero byte

<[<]<   Rewind to the beginning of the cells

This will loop until 0 is met and then move to the first cell
[>>     Move two to the right to escape our bounds in line 2 then start a loop
  [     Start looping through all the characters in the string
    .>  Print char
  ]     While not zero terminated: Go to next cell
<[<]<   Then rewind to the beginning again ~
-]      ~ and subtract one from the repetitions counter
Then keep doing line 8 to 13 until memory cell #0 is zero
