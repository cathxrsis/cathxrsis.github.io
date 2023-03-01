---
title: "A Categorical Modelling Language part 0: Concept"
---

This is the first post in a series looking into the creation of a Model Based Systems Engineering language based on Category Theory.

The goal of this post is to lay out the features that such a language would have and to outline the concept of a possible solution to meet these features.

So, without much further ado, here is a short outline of the features, language concept and tool concept to whet your appetite for the rest of the series:

Features
--------

Mathematically Rigourous Grammar

 : The grammar and concepts within the language should be built on top of mathematically rigourous concepts. This would mean that the language would be formal and therefore suitable for the use of mathematical proofs around certain aspects of the language. I hope to show how much easier Category/dependent Type Theory makes formal methods.
 
First Class Patterns

 : The concept of the lambda cube (which will be described in a later post) allows for special functions that means the metalanguage of a type-theoretic language can be self-extending. This means that what would have been profiles in UML will be expressed as libraries in the new language. Functions and types (including function types) will all be first class and therefore can be defined in-language.

First Class Constraints

 : The Curry-Howard-Lambek isomorphism proves that Category Theory, Depenedent Type Theory (Martin-Löf) and Constructive Logic are one and the same. What does this mean for us? No dichotomy between contraint and modelling language. Instead of needing UML and OCL, we get one neat complete package.

First Class Views

 : The categorical concept of functors is quite a nice analogue for describing views. In this way, the language should be able to self-describe its own diagrammatic, tabular matriculative(?) &c. views.

Language Concept
----------------

As Type theories are just ways of navigating categories, the type system of the language will be based on an existing categorical modelling language: [David Spivak's Ologs](https://journals.plos.org/plosone/article?id=10.1371/journal.pone.0024274). From there, we will add syntactic sugar to represent commonly used type patterns as well as adding the concepts required to fulfil the above features.

The final goal is to create a modelling language that is akin to a graphical version of Idris. Creating programmes in Idris is a pleasant experience akin to having a conversation with the compiler, this is an experience that I believe should be available for modellers. See [this video](https://youtu.be/X36ye-1x_HQ)

Technological Concept (tool)
----------------------------

In the same way that a programming language is useless without a compiler or interpreter, a modelling language is useless without a modelling tool. To fulfil this need, I will be provisionally using Eclipse Sirius to build a modelling tool for the language. This is a technology that I already have some experience with and I hope that the challenge posed by the creation of a categorical MBSE language will work as a good example project for creating a modelling tool with Sirius.

Therefore, if nothing else, this post series will hopefully provide a useful reference for creating Eclipse based modelling tools with Sirius and its related projects.

Tune in next time where I will explain how to create a simple ontology for Ologs using ECore and use Sirius to make a diagram editor for the language.
