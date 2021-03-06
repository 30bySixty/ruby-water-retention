## README

Recently I participated in my first coding competition. As someone without a formal coding background, this competition was a great experience because it exposed me to some of the types of problems that computer science college students might work on in their studies. One of the competition challenges was to create a command line I/O program that determines how much water would be retained by a given landscape configuration.

Input: space-separated string of integers

Output: integer units of water retained

Here are some examples:

Input: `2 0 0 3 0 4`

This is visualized as: 

```
     |
   | |
|  | |
|__|_|
```

Output: `7` 

Note: The configuration holds 7 units of water.

Input: `0 4 4 2 3`

This is visualized as:

```
 ||  
 || |
 ||||
_||||
```

Output: `0` 

Note: The configuration holds 0 units of water because water would fall out with no bottom.

Let's make the problem a little more interesting with "magic squares."

Input: `2 0 0 3 0 4`

This is visualized as: 

```
     X
   X X
X  X X
X__X_X
```

Output: `7`

Note: Same as before...

Input: `0 4 4 2 3`

This is visualized as:

```
 XX  
 XX X
 XXXX
_XXXX
```

Output: `1` 

Note:The configuration holds 1 unit of water due to the dip in the fourth column.

Assuming "magic squares" allows for much more interesting landscapes, such as:

Input: `0 2 3 2 1 0 1 2 3 3 2 5 2 2`

This is visualized as: 

```
           X  
           X  
  X     XX X  
 XXX   XXXXXXX
_XXXX_XXXXXXXX
```

Output: `10`

I’ve built two simple ruby CLI programs that count water retention per the above examples. `Water Retention_1.rb` assumes water falls out between consecutive integers, and `Water Retention_2.rb` assumes "magic squares." 

I really liked this challenge because it’s a math problem at its heart, whose solution requires nested while loops (cool, right?). Enjoy!