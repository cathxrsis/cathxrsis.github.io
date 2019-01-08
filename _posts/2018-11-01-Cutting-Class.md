---
layout: post
title: "Cutting Class"
date: 2018-11-01
description: An exploration into a classless society for UML and SysML modellers.
effort: 10min
tags:
- Systems Engineering
- modelling
- SysML
- UML
comments: true
---

Classes (or *Blocks* as they are known in SysML) are a useful and almost unavoidable concept in UML/SysML. They are the modelling concept that allows object-oriented inheritance in these languages. In fact it is impossible to utilise inheritance as a pattern for reuse without it. Classes are not as crucial to object oriented design as you may think though. In this post I will make the case for a different form of object orientation without a constant use of classes.

<!-- more -->

In the object-oriented programming paradigm, there are two main patterns for inheritance: classical and prototypal. Classical inheritance requires no introduction, @@

Prototypal inheritance is a very different kettle of fish. 

One of the elegant things about prototypal inheritance is that it can be used to recreate classical inheritance. By defining an object as constant, you effectively create a class. A set of these constant objects can be used to create inheritance trees. classical objects can be created as objects that inherit from a "class" object and have no children. @@ 

Proof by elegance is hardly a compelling argument for why a solution should be used though. To make the case for prototypal inheritance we must show that it is useful for 

## Class struggle

> *The history of all hithero existing object-oriented design is the history of class struggle*
> - Karl Marx (paraphrased)


Class inheritance is so baked into the UML way of thinking that it is used heavily in the specification and extension of the UML language.

From experience, one of the hardest notions to teach new systems modellers is the class/object distinction

The constraint of requiring a class element for every new class of objects is not just a harmless inconveniece for the modelling community. Every element in a model takes up space in memory. The inclusion of classes in the language increases this @@



 - Ultimately modelling languages are human consumable, not machine consumable

## Balance and composure

> *Favour composition over class inheritance*
> - The infamous GoF
