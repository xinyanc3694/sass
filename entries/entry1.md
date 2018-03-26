# Entry 1: Learning SASS

## Intro
After looking at the list of potential topics that I can choose from, I limited it down to SASS and Artoo. SASS is basically CSS with variables and Artoo is creating robots with Ruby. But after thinking thoroughly, I chose to explore SASS, mainly because I know that CSS works with other programming languages such as HTML, Ruby, and etc., while Artoo is not something you can apply to in daily life.

## What is SASS?
SASS stands for “Syntactically Awesome Style Sheets”. It is an example of a CSS preprocessor (a scripting language that allows developers to write code in one language and then compile it into CSS). Basically, SASS is an extension of CSS that allows the developers to use things like variables, nested rules, inline imports and etc. In addition, it helps solve repetition and maintenance challenges in traditional CSS.

## Compiling Sass
To start off, SASS needs to be converted/compiled (which is to convert code to a lower level code to be executed) to CSS. I was confused at first as to why does SASS need to be converted to CSS but I later learned that it is so that the browser is able to understand it. To compile SASS to CSS, you will need to type in the following command in the terminal and pressing enter:

```sass main.scss main.css```

This command takes in two arguments:
1. The input (main.scss)
2. The location of where to place that output (main.css)

## Variables, Mixins, and Nests
These are some examples that is used to write code in SASS. These are also the differences between CSS and SASS. For example, CSS is repetitive and inefficient because if I change one value in one place then I would have to change the same value elsewhere; but SASS is different, I can simply create a variable and that can be used anywhere and if I need to change it, I can just change it in one place and it will be updated everywhere. Variables is just one example that can help organize the code and shorten it, I will get in detail with the other examples later on.

### Nesting Selectors
Nesting is another example that helps make traditional CSS code more efficient to debug and easier to read and understand. Nesting is placing selectors inside scope (context that the variable is defined and available to use) of another selector. The scope of a selector in SASS is any code between ```{``` and ```}``` brackets. The selectors located inside of the scope of another selector are called “children”. And the selector that the “children” selectors are in is the “parent”.

```
.parent {
  color: blue;
  .child {
    font-size: 12px;
  }
} 
```

```.child``` is the child selector and ```.parent``` is the parent selector.
This is piece of code, SCSS, would compile to the following CSS:

```
.parent {
  color: blue;
}

.parent .child {
    font-size: 12px;
}
```

After looking at this SCSS and CSS, I can now understand why authors of the articles that I read about SASS prefer SASS more than CSS. The reason is because SASS provides a “shortcut” for CSS code. For example, I can simply use the selector ```.child``` to add properties to selectors instead of using the traditional way ```.parent .child{}```. When I first learn about giving properties to child selectors, I thought it was already efficient and short, but SASS was able to make the code even shorter and that is what makes SASS powerful and useful.

### Nesting Properties
In SCSS, selectors are not the only option to nesting, by adding ```:``` after the name of the property can also nest CSS properties.

```
.parent {
  font : {
    family: Roboto, sans-serif;
    size: 12px;
    decoration: none;
  }
}
```

This SCSS will compile to the following CSS:

```
.parent {
  font-family: Roboto, sans-serif;
  font-size: 12px;
  font-decoration: none;
}
```

Nonetheless, SASS not only help shorten code for parent and child selectors, it can also apply to property names of each rule. For example in the code above, the property for “font” was repeated so SASS can just simply transform it into ```font:{}```. After learning about this, I was amazed as to what SASS can do. I did not imagine that SASS can do something like that because I thought having a “shortcut” for selectors was already enough.

### Variables
Variables is what allow the developers to assign an identifier to a specific value. In CSS, developers have to change every single values which is not convenient, but in SCSS, developers can change it in one place and it will apply in multiple rules. In SASS, ```$``` is used to define and call a variable:

```$translucent-white: rgba(255,255,255,0.3);```

#### Data Types
1. Numbers (Ex: ```8.11```, ```12```, and ```10px```)
2. Strings (Ex: ```"potato"```, ```'tomato'```, ```span```)
3. Booleans (Ex: ```true``` and ```false```)
4. null- empty value
5. Maps- key-value pair (Ex: ```(key1: value1, key2: value2);```)
6. Lists- separated by either spaces or commas (Ex: ```1.5em Helvetica bold;```, ```Helvetica, Arial, sans-serif;```)

I always thought variables are only for back-end programming languages like ruby, processing and etc. but apparently SASS can also do that. And this change from the traditional CSS has made everything much easier. There is no need to go through every code and checking every value because now I can just simple call a variable and change it to anything I want and it will be used in any rule that uses this variable. In addition, SASS variables work just like any variables for other languages. SASS variables uses the data types: numbers, strings, booleans, null. Not only that, data types like maps and lists are also used in SASS and I have not seen these used in other variables for other languages. 

### Takeaways
1. Make sure you do lots of researches on your topic. This does not just apply to this project but also for research projects, for example, for other classes.
2. If you do not understand something, try to google it. Do not just leave it and give up. A lot of the articles online will help answer your question.
3. When deciding what language you want to learn, try to look at the code for the language and see if that is what you like to learn. It will give you a sense of the language.

### Resources
https://www.codecademy.com/learn/learn-sass