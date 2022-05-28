# Snakes-Ladders
B specification of a Snakes &amp; Ladders board game, using  the B tools Atelier B &amp; ProB. 

# Notes

• The board is made up of 100 squares, starting form 1 up to 100. 

• There are 6 snakes on the board. For example, the green snake's head is in square 31 & its 
tail is in square 4. If you land on its head square 31 then you move down to its tail square 4. 

• There are 6 ladders located on the board. For example, the first ladder's bottom is in square 3 
& its top is in square 39. If you land on its bottom square 3 then you up to its top square 4. 

• The head of a snake is must always be higher up the board than its tail, similarly a ladder's 
bottom must always be lower down the board than its top.

• A square cannot be both a head & a tail square for either the same snake or different snakes. 
Similarly a square cannot be both a bottom & a top square for either the same ladder or 
different 's. 

• In other words, a square can only contain: nothing (a normal square), or 1 snake's head, or 1 
snake's tail, or 1 ladder's bottom, or 1 ladder's top. 

- For obvious reasons: 
  - a snake's head cannot be in the first or last squares.
  - a ladder's bottom can not be located on the top row.


  
- The state of the game includes the following:
  - the current position on the board, 
  - the dice value last thrown,
  - the number of moves, 
  - the number of snakes gone down,
  - the number of ladders gone up,
  - the list of squares visited in the order visited.
  
