---
layout: post
title: "Cutting Class"
date: 2019-02-11
description: An exploration into a classless society for UML and SysML modellers.
effort: 4min
tags:
- Systems Engineering
- modelling
- SysML
- UML
comments: true
---

Classes (or *Blocks* as they are known in SysML) are a useful and almost unavoidable concept in UML. They are the modelling concept that allows for object-oriented inheritance in the language and its dialects. In fact it is impossible to utilise inheritance as a pattern for reuse without it. However, classes are not as crucial to object oriented design as you may think. In this post I will make the case for a different form of object orientation which does away with classes altogether.

<!--more-->

In the object-oriented programming paradigm, there are two main patterns for inheritance: classical and prototypal. Classical inheritance requires no introduction. For those who don't know it, Prototypal inheritance is a very different beast.

There are no classes in prototypal inheritance systems, *objects just link to other objects*. Any object can inherit from another. This means that any object can be used as a template for another without the need for a class. If you are entrenched in a classical mindset, it may help to imagine that each object has a "hidden" class behind it that can change as its object is modified.

One of the elegant things about prototypal inheritance is that it can be used to recreate classical inheritance. By defining an object as constant, you effectively create a class. Though these objects can still be used as inputs to operations. A set of these constant objects could be used to create any inheritance trees that you like. Therefore classical inheritance can be thought of as a pattern within the more abstract prototypal system.

Attempting to model prototypal inheritance in a classical way is a far messier endeavour. This means that the semantics of UML are not suitable for modelling many of the constructs in prototypal languages such as JavaScript. Having to constrain your solution language to fit your modelling language is a huge no no for abstraction yet UML modellers seem to tolerate this failing. Note that prototypal inheritance is not the only hard to express concept in UML, others are first class functions and generics, but those are topics for exploration in future articles. To understand why classical inheritance is such an integral part of UML we shall look back at the programming languages that shaped UMl's development.

## Class struggle

> *The history of all hitherto existing object-oriented design is the history of class struggle*
> Karl Marx (paraphrased)

So how come classes became such an integral part of inheritance in programming? The answer is compiler optimisation. Having a class gives the machine a template telling it exactly how much memory to allocate each time it makes a new object. This is why the class pattern came to prominence in C where there were no compiler optimisations for object orientation. The C++ language, which originally transpiled to C, inherited this way of doing things.

In the essay [Classes Considered Harmful](http://web.cecs.pdx.edu/~black/publications/ClassesHarmful.pdf) The author suggests that "class" is a premature optimisation in the code that should be avoided. In the case of modelling languages though, compiler optimisation arguments don't really cut it as a justification. *Modelling languages are of course ultimately human, not machine, consumable.* To be fair to the three amigoes in the early UML days, classical inheritance is a sensible choice wnen your language is being used mainly to model things that will be implemented in either Java or C++.

From experience, one of the hardest notions to teach new systems modellers is the class/object distinction. Most software engineers are comfortable with, sometimes militantly stuck with, thinking in the class/object way. However most new systems engineers are drawn from engineering, physics and maths backgrouds often with their only contact with code being through C, Matlab or Fortran. These people often find the class/object distinction hard to get their head around (I was definitely in this category to begin with).

An example of this would be not understanding why two SysML Blocks (Classes) could not have their ports connected together on an internal block diagram (structure diagram). It is not immediately obvious why we must instantiate classes as objects before using them and although object oriented folk take this fact for granted, prototypal inheritance forces us to reevaluate this "fact". The class is almost a [*platonic ideal*](https://en.wikipedia.org/wiki/Platonic_realism) of the objects that instantiate it. So what would a modelling language without classes change about the way we work?

The first major improvement to our workflow that prototypal inheritance provides is a reduction in complexity to class heirarchies in models. We tend to think of class heirarchies in terms of only the classes and forget that each object on the end of it is also part of this hierarchy. For models with large numbers of single use classes, prototypal inheritance would be a natural choice as far fewer model elements would be required.

UML aggregation also makes more sense under a prototypal system. Aggregation is a rarer weaker form of the composition association in UML. Composition is well understood as if a class is composed of another, it means that the first class contains a property typed by the second. Aggregation, however, is more confusing. an aggregation association from one class to another tells us that the first class uses an object typed by the second.  The most we know is that the aggregating class has a "pointer" typed by the aggregate class; we require more information in the instance model to know what's really going on. In a prototypal model, the class model is the instance model and therefore we know exactly which object each object is linked to.

Prototypal inheritance has bonuses over classical inheritance from a tool perspective too. Prototypal inheritance is often implemented using delegation. This means that each object only records its deviation from its parent object. When accessing a property called 'fred' of a prototypal object, the system will follow the inheritance prototype chain until it finds 'fred'. This is very similar to the ['Flyweight' GoF pattern](https://sourcemaking.com/design_patterns/flyweight) which lends itself to efficient use of memory when building large databases of objects.

To conclude I'll leave you with a paraphrased story from classical Greece. Plato was once giving a lecture on his ideas of reality. He told the audience how all objects in reality are mere instantiations of divine classes. At that instant the trouble maker Diogenes walked in and pointed at a cup that Plato was holding. "If that's only an instance of the class Cup" he interjected, "Where is this divine class Cup?". Plato, coolly replied: "Of course, the class Cup is in the universal source code, not accessable to us mere mortals". Diogenes, undeterred, walked up onto Plato's platform and declared: "Your cup is empty, Plato. Please do tell us all here where this concept of emptyness is". Plato calmly contemplated this for a few seconds and said "The lack of a contents to my cup is an instance of the null object class in the divine source code". "That's where you're wrong" replied Diogenes. "The true emptyness is here" he said as he tapped Plato's head.

This post was inspired by the inheritance system in JavaScript. If you want to know more,this site is a good place to start: [Inheritance and the prototype chain](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Inheritance_and_the_prototype_chain).
