---
layout: post
title: "A better type of type"
date: 2018-03-27
description: The third in a series on critiquing and improving SysML/UML. This time we take a look at modern plogramming languages for inspiration on improving data.
tags:
- Systems Engineering
- modelling
- Functional architecture
- SysML
comments: true
---

This post is an introduction to an incredibly powerful pattern that is quite well established in the functional programming world but doesn't seem to have percolated back to the OOP world, let alone modelling. Interestingly enough this pattern is all about abstracting away from the way computers handle data values and bringing it up to a more human friendly level. This pattern is known as the Algebraic Data Type.

What is a data type? In software engineering, Data Types act like a translation rule between bits in the memory and some useful meaning to the user. In UML terms, however, a data type is defined as a classifier whose instances are anonymous. This means that its just a class with unnamed objects (the objects are unnamed as they correspond to values). @@

The current base data types of UML are:

- Primitive
- Enumeration
- Structure
- set
- ordered set
- bag
- sequence



The name "algebraic data type" tends to conjure up complex mathematical stuff but all it really means is that this pattern enbles the user to define new data types as the "sum" or "product" of existing data types. The product of types is already familiar to most modellers and programmers, it occurs when one type has values that are a combination of two or more other types. These are known as tuples when the constituent values are not named and are called structures or records when the constituent values are named.
The sum of two (or more) types, sometimes called a "union", is a new type that has all of the values of both of the types.

A nice introduction to this concept can be found in the guide to the Elm programming language: [Types as Sets](https://guide.elm-lang.org/appendix/types_as_sets.html)

Surprisingly, this pattern turns out to be relatively easy to replicate in UML/SysML with only a small amount of extra modelling.@@


## Failure in the system

To introduce algebraic data types, lets investigate a common systems engineering problem; how to represent failure in the system. Imagine an operation in a model that divides two real numbers. In a UML model we would see something like this in the browser:  

    Divide(a : real, b : real) : real

Now imagine that we have performed some sort of HAZOPS process on the model and found that this function cause some quite spectacular problems when we try and divide by 0.

Don't panic though, this is easily caught by the operation itself if we check to see if b is 0. We can catch that error easily, but how do we communicate to downstream functions that Divide has failed? Here are a few solutions:

### 1) Add an extra failure line

This solution just adds a separate failure propagation output to the function. @@

@@IMAGE

It doesn't take much extrapolation to see how quickly this would get completely out of hand, doubling up all of the @@

### 2) Pick an arbitrary value to represent the failure

This time we will pick an unused value of the data type to represent the failure. @@

### 3) Use the Maybe pattern

The maybe pattern (or option type) is a pattern

@@IMAGE

This may look a little clunky to the average UML modeller (though I its suggest still a better solution than the last two) but mainly because its a little bit of an abuse of the UML syntax. As a motivating example from a programming language with these concepts baked in, Haskell has a pretty elegant syntax for the Maybe concept:

    Data Maybe a = Just a | Nothing

This is a Haskell type constructor declaration that tells us that we can create a Maybe type for any existing type (the *a* term in the declation which is basically a template parameter) which, when fed a type (such as Int) @@

To illustrate how this would be used in Haskell, the SafeDivide operation would be implemented using the following syntax:

    safeDivide :: (Int, Int) -> Maybe Int
    safeDivide (_ , 0) = Nothing
    safeDivide (a , b) = Just (a/b)

The first line tells us that safeDivide is a function that takes two integers and returns a Maybe Int. The second line tells us to return Nothing if the denominator is 0 and not worry about the numerator in this case (an underscore in Haskell means any value). The third line tells us that for all other input pairs, return the division wrapped in a Just. The next function can then check to see if the input is a Nothing or a Just and act accordingly.

A great introduction to this programming pattern is the slide show on "Railway Oriented Programming" on [F# for fun and profit](https://fsharpforfunandprofit.com/rop/).

## Baking in ADTs

Lets imagine that we could design ADTs within UML, such as the Maybe type, what could the syntax look like? As we discussed earlier, to create ADTs, we require the ability to define new data types as the sum of two others or the product of two others. In the UML spec, he values that primitive data types can take along with any mathematical functions defined is considered outside of the scope of UML. I'm going to contend this and say that these things should be well within the scope of UML as these values and allowed functions can be critical to the behaviour of any software or system design.

As a starting point, lets base our data types on set theory. 

## Generalising it all

Finally, 