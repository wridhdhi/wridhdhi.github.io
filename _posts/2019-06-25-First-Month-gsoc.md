---
layout: post
title:  "First Month of GSOC"
date:   2019-06-25 17:44:39 +0530
categories: Project
image: /assets/images/6-First_month_GSOC/404-main.png
author: Wridhdhisom Karar
tags:
  - Project
  - code
  - 

---


This contains everything down to the first evaluations and how I created examples and objects to view, from the raw C code (maybe will turn useful for documentation later.)

### How do you develop software for open source ?
This is the first time I've developed for open-source and its a hectic thing, not because you think its free and so many people have made it, so how does your tiny contribution matter
 ?
 It does, because often you find small **tiny bits** of code that render the whole software not working. 

 ---
 > "like a small variable name was failing my entire build pipeline."

 ---
 
 So its crucial Then how do you do it ?
 1. You start by fixing small issues that are open in github/or wherever-its-hosted.
 2. You **build the whole software** from source-code : this ensures you know how the thing is built and the file structure.
 3. **Then you read the DOCUMENTATION** : this is key because you can't understand raw-source and what it does on a big picture.
 4. GO through the variables of each source-see what they do. and go through the comments. That will help.
 5.  Then finally start 
   

> **CODE** -> **BUILD** -> DEBUG -> REPEAT.

---


###  what happens when there is no documentation ?

That's exactly what I faced working on ACTS, the code is clarified, but there is no documentation. Whatever there is jargon-ish comments about terminologies I don't even understand. So what to do ? 


![Placeholder](/assets/images/6-First_month_GSOC/removal.png)



Nope can't make heads or tails of it. So in that case it's best to go backwards. 

1. **GET YOUR MIND CLEAR** : its gonna be hectic. You'll take some time to digest it and be clear you really want to dig dirty.
2. Open **any sourcefile** : (for my case it was C++ and I use VSCode) and see the:
   -  variables and the methods/functions 
   -  class definitions
   -  how the classes are linked/inherited. 

This is basic because just these 3 simple things will give a gist of what is GOING ON in the source.

Take a pen and paper / whiteboard:
1. Draw the classes as boxes.
 2. Fill the boxes with variables and methods
 3. connect different boxes by lines (as how classes inherit or are linked)

Do this for each source file and you'll get a clear IDEA what is going on. 

--- 
**TIP :** VSCode lets you **peek-definitions** of any variable and lists them in the **OUTLINE** so that makes it easier to see the links.

---
### Now you know what is going on. How to begin coding ?

For the first month coding was very difficult from me because I was from a python village, and moving to a new C++ity was quite challenging. It took  a bit used to. 


So C++ has :

<div>
<ul>
<li> headers(.hpp) and sources(.cpp)</li>
<li> includes (preprocessors) linking headers and libraries to sources</li>
<li> Namespaces</li>
<li> Templates -> classes -> subclasses</li>
<li> Pointers(unique_ptr , shared_ptr ) and References</li>
<li> Then finally **PUBLIC and PRIVATE** :
  <ul>
    <li> static and consts:</li>
    <li> variables such as
      <ul>
      <li> structs , vectors, strings and other primitive babies(datatypes)</li>
       <li> methods with any made/primitive return type.</li>
      </ul></li>
  </ul></li>
</ul>
</div>
  
So you know these you know mostly everything in C++. So if you want to code, in a project where there is no documentation, I suggest the reverse method that I follow.

   1. First decide the **method** and write it, 
   2. then the **variables** the method needs,
   3. and the **parameters** .
   4.  Next define the **pointers , structs , variables**,
   5. and wrap it all in a **class** and call the methods in the **main**().
   Then do the rest, put the necessary **includes** and the **NAMESPACES** and then re-edit the classes to link them.

I need to create a mini C++ reference for future since this is a great language that I had abandoned for its fresh new cousin , the snake !