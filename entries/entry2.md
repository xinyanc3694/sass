# Entry 2: Mixins and the & Selector

For the second week of my independent study, I continued to study SASS on Codecademy. This time I will be studying mixins and the & selector in order to add styles to the contents in a simpler and efficient way. 

Pseudo-element in CSS is used to style parts of an element. For example, inserting ```::before``` or ```::after``` the content of the element helps to style the content. ```::hover```(a pseudo-class) will set the properties of an element when the user's mouse is touching the area of the element.
 
* At this point, I was confused because one second it was talking about 
pseudo-element but the next second it brings up another word that I do not 
understand, pseudo-class. At first I thought the two words meant the same thing, but it would not make sense for one is element and the other is a class. So I did some googling on the two words. It turns out that “pseudo-class” is a keyword with a colon (:) added in the front, inserted to the end of selectors to show that you want to style the selected elements, and only when they are in certain state; while a “pseudo-element” is a keyword with 2 colon (::) added in the front, inserted to the end of selectors to select a certain part of an element.

## What is the ```&``` selector? 
The ```&``` character is used to specify exactly where a parent selector should be inserted. For example:

```
.notecard{ 
  &:hover{
      @include transform (rotatey(-180deg));  
    }
  }
```
This SASS will compile to the following CSS:

```
.notecard:hover {
  transform: rotatey(-180deg);
}
```
Based on the difference of the two codes, I can assume that the ```&``` simply combines the child selector inside the parent selector (refer to blog entry 1 if you are not sure what child and parent selectors mean) in one line of code.

## What is a Mixin?
A mixin allows the programmer to make groups of CSS declarations that you want to reuse throughout the website. To create a mixin, use the following notation: 

```
@mixin backface-visibility {
  backface-visibility: hidden;
  -webkit-backface-visibility: hidden;
  -moz-backface-visibility: hidden;
  -ms-backface-visibility: hidden;
  -o-backface-visibility: hidden;
}
``` 
* IMPORTANT: Mixin names and all other Sass identifiers use hyphens and 
underscores interchangeably.

```
.notecard {
.front, .back {
    width: 100%;
    height: 100%;
    position: absolute;

    @include backface-visibility;
  }
}
```
This code is the same as this following CSS:
```
.notecard .front, .notecard .back {
  width: 100%;
  height: 100%;
  position: absolute;

   backface-visibility: hidden;
  -webkit-backface-visibility: hidden; 
  -moz-backface-visibility: hidden;
  -ms-backface-visibility: hidden;
  -o-backface-visibility: hidden;
}
```
After looking at Codecademy, I was still confused with mixin and what it is. So I googled “How does mixin work sass”, and the result that I see was really helpful. So basically, mixin is like a variable (```@mixin```) that stores declarations (in this case ```backface-visibility```). In order to apply the declarations to different selectors, you have to use ```@include``` inside the selectors following by the declaration’s name.

### Mixins: Arguments
Mixins have the ability to take in an argument (a value passed to the mixin that will be used inside the mixin). For example:
```
@mixin backface-visibility($visibility) {
  backface-visibility: $visibility;
  -webkit-backface-visibility: $visibility;
  -moz-backface-visibility: $visibility;
  -ms-backface-visibility: $visibility;
  -o-backface-visibility: $visibility;
}
```
In this case, the argument is ```$visibility```.

In order to pass a value, see the following:
```
@include backface-visibility(hidden);
```
We can see in the code above, the value ```hidden``` is passes in to ```backface-visibility``` mixin. And this value will take the place of ```$visibility```.

### Default Value Arguments
This type of argument is different from the argument portrayed in the code above. In the code above, if there is no argument passed through, the whole mixin will not run but with a default value argument, it fixes this problem. A default value is assigned to the argument if no value is passed in when the mixin is included; this way it will prevent if no value is passed when it should be and caused the mixin to stop running. 
```
@mixin backface-visibility($visibility: hidden) {
   backface-visibility: $visibility;
  -webkit-backface-visibility: $visibility;
  -moz-backface-visibility: $visibility;
  -ms-backface-visibility: $visibility;
  -o-backface-visibility: $visibility;
}
```
This is how you make a default value argument. You simply add a colon (:) after the argument follow by the value (which in this case is ```hidden```).

### 5 important facts about mixins
1. Mixins can take multiple arguments.
2. Sass allows developers to explicitly define each argument in the @include statement.
3. When values are explicitly specified, developers can send them out of order.
4. If a mixin definition has a combination of arguments with and without a default value, developers should define the ones with no default value first.
5. Mixins can be nested.

In the code below, it includes some of the examples of the rules:
```
@mixin dashed-border($width, $color: #FFF) {
  border: {
     color: $color;
     width: $width;
     style: dashed;
  }
}
span { //only passes non-default argument
    @include dashed-border(3px);
}
p { //passes both arguments
    @include dashed-border(3px, green);
}
div { //passes out of order but explicitly defined
   @include dashed-border(color: purple, width: 5px); 
}
```
### List Arguments
Now that we know mixins allow the developer to pass in multiple arguments, then what happens if you pass in too many and things start to get messy? Do not worry, SASS is known for its short and simple formating of the code.
 
```
@mixin stripes($direction, $width-percent, $stripe-color, $stripe-background: #FFF) {
  background: repeating-linear-gradient(
    $direction,
    $stripe-background,
    $stripe-background ($width-percent - 1),
    $stripe-color 1%,
    $stripe-background $width-percent
  );
}
```
The above is an example of messy codes. But we are able to shorten everything inside ```stripes``` into this:

```
$college-ruled-style: ( 
    direction: to bottom,
    width-percent: 15%,
    stripe-color: blue,
    stripe-background: white
);
```
See, this looks so much easier to read and understandable. And the cool part is that both codes do the same thing.

To pass the arguments, it is easy. You just simply add ```...``` notation:
```
.definition {
      width: 100%;
      height: 100%;
      @include stripes($college-ruled-style...);
 }
```

### String Interpolation
String interpolation is to place a variable string in the middle of two other strings. So here is how it looks like:
```
@mixin photo-content($file) {
  content: url(#{$file}.jpg); //string interpolation
  object-fit: cover;
}

//....

.photo { 
  @include photo-content('titanosaur');
  width: 60%;
  margin: 0px auto; 
  }
```
And this enable into the following: 
```
.photo { 
  content: url(titanosaur.jpg);
  width: 60%;
  margin: 0px auto; 
}
```
See how ```#{$file}``` becomes ```titanosaur```, that is what string interpolation do. 

### The & Selector in Mixins
The & selector gets assigned the value of the parent at the point where the mixin is included.
If there is no parent selector, then the value is null and Sass will throw an error.
```
@mixin text-hover($color){
  &:hover {
      color: $color; 
  }
}
```
Include this mixin into ```.word```:
```
.word { //SCSS: 
    display: block; 
    text-align: center;
    position: relative;
    top: 40%;
    @include text-hover(red);
  }
```
And that compiles to the following:
```
 .word{ 
    display: block;
    text-align: center;
    position: relative;
    top: 40%;
  }
  .word:hover{
    color: red;
  }
```

## Takeaways
1. Do not hesitate to google things that you still do not understand. It will not do you any harm other than enhancing your knowledge.
2. Try to make observations of the code by comparing the codes and see the differences. This way you will understand what the new topics in SASS do.

## Resources
https://www.codecademy.com/learn/learn-sass
https://scotch.io/tutorials/how-to-use-sass-mixins
https://developer.mozilla.org/en-US/docs/Learn/CSS/Introduction_to_CSS/Pseudo-classes_and_pseudo-elements

