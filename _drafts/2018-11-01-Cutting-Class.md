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

In the object-oriented programming paradigm, there are two main patterns for inheritance: classical and prototypal. Classical inheritance requires no introduction, for those who @@ Prototypal inheritance, however, is a very different kettle of fish.

There are no *classes* in prototypal inheritance systems, objects just link to other objects. Any object can inherit from any other. This means that any object can be used as a template for any other without the need for a class. If you are entrenched in a classical mindset, it may help to imagine that each object has a "hidden" class behind it @@

One of the elegant things about prototypal inheritance is that it can be used to recreate classical inheritance. By defining an object as constant, you effectively create a class. Though these objects can still be used as inputs to operations. A set of these constant objects could be used to create inheritance trees.

Proof by elegance is hardly a compelling argument for why a solution should be used though. To make the case for prototypal inheritance we must show that it solves the day to day problems of modellers in a simpler, more intuitive way.

The first major improvement to our workflow that prototypal inheritance provides is a reduction in complexity to class heirarchies. We tend to think of class heirarchies in terms of only the classes and forget that each object on the end of it is a leaf node. For models with large numbers of 

One problem that tends to afflict SysML modellers is the single-use class. Single use classes are @@. From experience, the vast majority of classes are single use.

## Class struggle

> *The history of all hithero existing object-oriented design is the history of class struggle*
> Karl Marx (paraphrased)

From experience, one of the hardest notions to teach new systems modellers is the class/object distinction.

The constraint of requiring a class element for every new class of objects is not just a harmless inconveniece for the modelling community. Every element in a model takes up space in memory. The inclusion of classes in the language increases this @@

Having no distinction between @@

Class inheritance is so baked into the UML way of thinking that it is used heavily in the specification and extension of the UML language.

The constraint of requiring a class element for every new class of objects is not just a harmless inconveniece for the modelling community. Every element in a model takes up space in memory. The inclusion of classes in the language increases this @@
Another problem that this solves is the interpretation of aggregations in SysML.

The constraint of requiring a class element for every new class of objects is not just a harmless inconveniece for the modelling community.

In conclusion, I don't think that @@

 - Ultimately modelling languages are human consumable, not machine consumable

## Modellers of all lands unite! you have nothing to lose but your @@!
