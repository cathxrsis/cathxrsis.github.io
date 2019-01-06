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

Classes (or *Blocks* as they are known in SysML) are a useful and almost unavoidable concept in UML/SysML. They are the modelling concept that allows object-oriented inheritance in these languages. In fact it is impossible to utilise inheritance as a pattern for reuse without it. Class inheritance is so baked into the UML way of thinking that it is used heavily in the specification and extension of the UML language.

From experience, one of the hardest notions to teach new systems modellers is the class/object distinction

<!-- more -->

To begin with we'll make a distinction between classical inheritance (inheritance using classes) and the more generalised delegation.

## Class struggle

> *The history of all hithero existing object-oriented languages is the history of class struggles*
> - Karl Marx (paraphrased)

The constraint of requiring a class element for every new class of objects is not just a harmless inconveniece for the modelling community. Every element in a model takes up space in memory. The inclusion of classes in the language increases this @@



 - Ultimately modelling languages are human consumable, not machine consumable

## Balance and composure

> *Favour composition over class inheritance*
> - The infamous GoF
