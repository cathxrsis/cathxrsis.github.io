---
layout: post
title: "Extending Spivak's Ologs for Functional Architecture"
date: 2021-07-25
description: ""
tags:
- Human Systems
- Lean Thinking
comments: true
---

An Olog---a contraction of the words Ontology Log---is a concept devised by the category theorist David Spivak. The core idea of Ologs is to use category theory as a basis for ontologies; Objects in an Ologs are sets of things and the Arrows in Ologs are the relationships between members of the sets. To ensure that an Olog is a category, the arrows must be functions---the relationship represented by the arrow must be applicable to all members of the set of the source Object (but does not have to be applicable to all members ). For example, we can set up a valid Olog stating that every person is descended from another person:

@@

But an Olog stating that every person is a parent of another person is invalid:

@@

@@

Following the rules of categories for creating Ologs as laid out by Spivak in his book *category theory for scientists*, one can use Ologs as a semantically strong replacement for ontology languages such as OWL and even the relational parts of UML/SysML such as the elements one would find on a block definition diagram. This blog post, however, is an exploration into how the Olog language can be extended for the more functional sides of systems engineering.

Ologs are based upon *Set*, category of sets. This is great because the collection of all possible functions between two sets is itself a set and therefore an object in *Set*. In the language of Ologs, this would manifest as an object representing the set of all functions between two other objects. @@

This is where we reach the limits of Spivak's Olog notation; representing functional chains becomes quite hard if we have to keep showing the extra scaffolding of application, evaluation and the function object. Luckily for us, mathematicians have already discovered an 'internal calculus' for each category with function objects---the type theory.

For each cartesian closed category, there exists a type theory where the objects of the category are the types of the type theory.