# Entry 6: 

Like I mentioned last week, for this week my plan is to learn how to link ```.html``` files to ```.scss``` files. After doing some research, I realized that I cannot just simply link ```.scss``` files to ```.html``` files. I have to first compile ```.scss``` files to ```.css``` files. You might remember on my first entry, I have talked about compiling sass to css with this command (for more information, refer to my first entry):

```SCSS
sass main.scss main.css
```

In other words,  you will have to create 2 files: one with ```.scss``` and the other with ```.css```; so then when you perform the above command, codes in ```.scss``` file can transform into CSS code in ```.css```. After compiling SASS to CSS, you will be able to have ```.html``` files to have access to the codes that styles the website. To do that, you have to include this code in the ```head``` section of HTML:

```HTML
<link rel="stylesheet" href="index.css">
```

So bascially, you have to link the ```.css``` file that stores the compiled SASS code(in this case, it is ```index.css``` as shown in the above code) to ```.html``` with the code above.

## Watch Command
This command will be useful and important for our work process in the future. This is a shortcut that allows us to save up so much time during the process.

### So, what is the watch command and what does it do.......
The watch command is a command that allows ```.css``` to update automatically everytime when ```.scss``` file is being modified. The command for this is:

```SCSS
sass --watch input.scss:output.css
```
In order to run this, type this command with the appropriate file names in the command line.

## Change of Plan...
In the previous week, I mentioned in the entry that I was planning on improving the design of an old website that we created. But my teacher suggested that we can make a portfolio instead because it will be more useful to us later on in life (for job opportunities and more). So now I do not know what to make for the final project anymore. Because now I have two great options that I can choose from:
1. Improving old website: make the website more elegant with effects like making the image rotate when the mouse is hovered over to make the descriptions appear or making the image fade and text appears and more.
2. Portfolio: a description of each of us and the extracurricular activites that we have done, our experience with computer programming, our projects that we have created; basically, it will be like an online resume.

## Next Step:
1. Decide on what to make for the final project. It can be the ideas above or any other new ideas that I think of.
2. Start working on the project with my group.

## Takeaway(s)
1. Make sure you have a way to take notes in order for you to understand them when you refer back to it in the future. When I was researching on how to compile SASS to CSS, I have to refer back to my previous entry. Good thing that I take my notes a certain way. When I do not understand a piece of code, I try to use my own words to explain each part of it.
2. Google anything you do not understand. Because I was having a lot of trouble with linking the files, I have to keep researching and finding ways that I can overcome this problem. And because I spend my time googling, I was able to find a way to connect the files by compiling SASS to CSS first.











