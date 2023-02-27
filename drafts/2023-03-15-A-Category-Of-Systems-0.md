---
title: "A Categorical Modelling Language part 0: Concept"
---

This is the first post in a series looking into the creation of a Model Based Systems Engineering language based on Category Theory.

The goal of this post is to lay out the features that such a language would have and to outline the concept of a possible solution to meet these features.

Features
--------

Mathematically Rigourous Grammar

 : The grammar and concepts within the language should be built on top of mathematically rigourous concepts. 
 
First Class Patterns

 : 

First Class Constraints

 :

Typed Holes

 :

First Class Views

 :

Language Concept
----------------

As Type theories are just ways of navigating categories, the type system of the language will be based on an existing categorical modelling language: [David Spivak's Ologs](https://journals.plos.org/plosone/article?id=10.1371/journal.pone.0024274). From there, we will add syntactic sugar to represent commonly used type patterns as well as adding the concepts required to fulfil the above features.

The final goal is to create a modelling language that is akin to a graphical version of Idris. Creating programmes in Idris is a pleasant experience akin to having a conversation with the compiler, this is an experience that I believe should be available for modellers. See [this video](https://youtu.be/X36ye-1x_HQ)

Technological Concept (tool)
----------------------------

In the same way that a programming language is useless without a compiler or interpreter, a modelling language is useless without a modelling tool. To fulfil this need, I will be provisionally using Eclipse Sirius to build a modelling tool for the language. This is a technology that I already have some experience with and I hope that the challenge posed by the creation of a categorical MBSE language will work as a good example project for creating a modelling tool with Sirius.

Therefore, if nothing else, this post series will hopefully provide a useful reference for creating Eclipse based modelling tools with Sirius and its related projects.

Tune in next time where I will explain how to create a simple ontology for Ologs using ECore and use Sirius to make a diagram editor for the language.
