---
layout: post
title: "Cutting Class"
date: 2018-03-27
description: An exploration into a classless society for UML and SysML modellers.
effort: 5min
tags:
- Systems Engineering
- modelling
- SysML
- UML
comments: true
---

The class (or the block for you strange SysML lot) is an ubiquitous concept when dealing with any object-oriented language. If, like myself, you first encountered objects through the C family of languages, you'll already know how classes act as a 'type' for objects.

In fact, in languages such as UML, it is impossible to utilise inheritance and all the lovely related stuff without it. But what if I told you that there are languages out there that have inheritance, polymorphism and all that lovely stuff without having the need for classes?

<!-- more -->

JavaScript is one such language. JavaScript has a strange and interesting inheritance system known as prototypal (or prototypical) inheritance. In this system there are only objects; objects that inherit from other objects. To explore how this works we'll first jump into what we know, a classical Javaesque inheritance system.

For example lets say Digby is of class Dog as shown in the UML diagram:

Spud, his golden labrador friend is also of class Dog but Tabby, his mortal enemy, is of class cat:

Both dogs and cats are animals so we can add an inheritance link back to the animal class. This completes our small classical heirarchy:

As you can see from the diagram there are now 6 elements in this simple UML model. Now lets imagine that this heirarchy is prototypal.

## Class struggle

> *The history of all hithero existing OOP languages is the history of class struggles*
> - Karl Marx (paraphrased)

Object inheritance was introduced in @@

If they are not needed, why were classes added to programming languages in the first place? Well, simply put, classes are fast. Having a class acts as a template for the compiler allows for optimisations. This makes the usage of classical inheritance important in situations where a programme deals with large amounts of objects.

 In a prototypal system the compiler has to be more intelligent and in languages that support both (such as ECMAScript 2016) it can be shown that working with classes is a lot faster. But this argument doesn't really hold for modelling languages like UML and SysML. My guess is that the architects of these languages were used to the classical system at this point, during the 90's Java, C++ and C# ruled; JavaScript was just a language for making websites more fun.

## Balance and composure

> *Favour composition over class inheritance*
> - The infamous GoF

So how
