# GETCH

Prints the key that is being pressed's ascii value in hexadecimal, if no
key is being pressed, "ff" is printed. If the key does not have an ascii
value (for example, an arrow key), prints "e0" followed by the key's
scancode. (e.g. up arrow prints "e048")

Note that some keys such as shift or ctrl do no print anything when pressed
on their own.

## Usage
`getch_nb`
