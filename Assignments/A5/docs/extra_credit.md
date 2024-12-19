### Extra Credit Implementations

## Better Snake Visuals

I have implemented a better visual for the snake in that I have changed it from the letter 'S' into a green block. This can be tested by simply running the game to see the new snake visual displayed.

## Snake Wraparound Logic

I have implemented logic to handle making the snake wrap around to the other end of the board when it goes out of bounds. This can be tested by running the game with a board that is missing an outer edge wall like the ones below:

Missing Top Wall: ./snake 0 "B5x10|E10|W1E8W1|W1E8W1|W1E3S1E4W1|W10"

Missing Bottom Wall: ./snake 0 "B5x10|W10|W1E8W1|W1E8W1|W1E3S1E4W1|E10"

Missing Left Wall: ./snake 0 "B5x10|W10|E9W1|E9W1|E4S1E4W1|W10"

Missing Right Wall: ./snake 0 "B5x10|W10|W1E9|W1E9|W1E3S1E5|W10"

In any of these cases you should see the snake exit the game board through the empty space and come back around on the other end.