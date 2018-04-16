# Entry 3: Functions and Operations

For the third week, I explored a new topic for SASS, Functions and Operations, on Codecademy. Functions and operations allow for computing and iterating on styles. SASS functions help:
1. Operate on color values
2. Iterate on lists and maps
3. Apply styles based on conditions
4. Assign values that result from math operations

## Arithmetic and Color
The alpha parameter in a color like RGBA or HSLA specifies how one color will merged with another when the two are on top of each other.

1. The function ```fade-out``` makes a color more transparent by taking a number between 0 and 1 and decreasing opacity, or the alpha channel, by that amount:
``` 
 $color: rgba(39, 39, 39, 0.5);
   $amount: 0.1;
   $color2: fade-out($color, $amount);//rgba(39, 39, 39, 0.4)
```
2. The ```fade-in``` function changes a color by increasing its opacity:
```
$color: rgba(55,7,56, 0.5);
$amount: 0.1;
$color2: fade-in($color, $amount); //rgba(55,7,56, 0.6)
```
3. The function ```adjust-hue($color, $degrees)``` changes the hue of a color by taking color and a number of degrees, and rotate the color wheel by that amount.

## Color Functions
Color functions allow developers to perform mathematical functions to compute measurements, even colors.

How Sass computes colors:
1. The operation is performed on the red, green, and blue components.
2. It computes the answer by operating on every two digits.
```
$color: #010203 + #040506;
```
This breaks down into the following:
```
01 + 04 = 05
02 + 05 = 07
03 + 06 = 09
```
And compile to:
```
color: #050709;
```
Color functions can compute string colors such as ```red``` and ```blue```.

## Arithmetic
The arithmetic operations are:
1. addition ```+```
2. subtraction ```-```
3. multiplication ```*```
4. division ```/```
5. form ```%```

A rule for SCSS arithmetic is that it requires that the units are compatible. When multiplying two units together results in squared units: ```10px * 10px = 100px * px```. 

* But in CSS, there is no squared units. And at this moment, I have a question. I think to myself, ok, so if there is no squared units in CSS, then that means ```100px * px``` becomes an error?

And the answer is yes; it does become an error. Developers have to squared units by multiplying ```10px * 10``` to get ```100px```.

## Division
In CSS, ```/``` character is used as a separator. In Sass, the character is also used in division.

Situations where ```/``` is used as division:
1. If the value is stored in a variable or returned by a function
2. If the value is surrounded by parentheses
3. If the value is used as part of another arithmetic expression

Examples:
```
width: $variable/6; //division
line-height: (600px)/9; //division
margin-left: 20-10 px/ 2; //division
font-size: 10px/8px; //not division
```

## Each Loops
Each loops iterate on each of the values on a list. The syntax is: 
```
@each $item in $list {
  //some rules and or conditions
}
```
This loop has reminded me of ```.each``` method in ruby. Just like ```.each``` , each loops go through every item in a list of arrays or more and expect the item to perform actions that are being coded inside the ```@each``` brackets.

## For Loops
For loops can be used to style numerous elements or assigning properties all at once. The syntax is: 
```
@for $i from $begin through $end {
   //some rules and or conditions
}
```
1. ```$i``` is a variable for the index, or position of the element in the list
2. ```$begin``` and ```$end``` are placeholders for the start and end points of the loop
3. ```through``` and ```to``` are interchangeable 

## Conditionals
```if()``` is a function that can only branch one of two ways based on a condition. It can be use inline to assign the value of a property:
```
width: if( $condition, $value-if-true, $value-if-false);
```
When there are more than two outcomes for some cases, the ```@if```, ```@else-if```, and ```@else``` allow for more flexibility:
```
@mixin deck($suit) {
 @if($suit == hearts || $suit == spades){
   color: blue;
 }
 @else-if($suit == clovers || $suit == diamonds){
   color: red;
 }
 @else{
   //some rule
 }
}
```
The ```@if```, ```@else-if```, and ```@else``` conditionals reminded me of ```if```, ```elsif```, and ```else``` conditionals in ruby. They both do the same things but the only difference is the syntax. The program starts first to check whether the if statement is true. If it is, the program stops checking the rest of the conditional; if it is false, the program jumps to the else if statement and checks that and if that is not true, the program will just return the else statement.

## Takeaways:
1. When you are not sure of something, come up with a question. Try to use any resources you have to answer the question. Once you answer the question, you will realize that you learn something new. So, questions are like starting points to gain more knowledge about something.
2. If you do not understand a code, try to compare it with another language you learn. You might find similarities in the 2 languages and that helps you understand the code much better.
