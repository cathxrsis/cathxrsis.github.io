---
layout: post
title: "Making functional architecture more functional"
date: 2018-03-27
description: Stealing concepts from functional programming to make our architectures more dependable
tags:
- Systems Engineering
- modelling
- Functional architecture
- SysML
comments: true
---

Functional architecture is a daunting concept. It instantly conjures images of a writhing mass of call operations tangled in a web of criss crossing dashed lines telling us to do this, then that, then this again (but only if we've put the [kettleState == on]). I'm told it's a crucial part of the modern MBSE process, the natural evolution from the EFFBDs that NASA so valiantly provide @@

We are told many things by the powers that be

Functional programming purports to solve a few of these problems for the software engineering community.

So without further ado, let's dive in and see how these weird mathsy (eugh) patterns can aid us in our quest for powerfully descriptive models with diagrams that don't look like an explosion in the Dolmio factory. The first pattern we'll look at is the functor.

Functors
---------
Sounds scary already doesn't it? Kinda like an evil robotic function. but fear not, these patterns will make life a hell of a lot nicer for the likes of us.

So what is a functor? Concisely put, its a morphism that maps objects and morphisms of a category to those of another whilst preserving the structure of said category. This of course is the sort of definition that makes you want to gouge your eyes out with the blunt side of a teaspoon. But it's ok, things *will* become clearer.

Functors are a pattern that describes a way of applying the same function to many values within a context For example, we can have an array of integers, let's call it 'a'. We want to add 1 to every value in that array. but first, lets try that in an activity diagram using good ol' fashioned control flow:

@@images

Well that's a mess. There are loopy lines and control flows all over the shop and not only that, but the next picture shows the same process but using a different implementation based on tail recursion. Something has definitely gone wrong with our abstraction level if we can implement in two ways. Things would look a lot more simple if we were to tidy it up a bit by changing our idea of the function slightly. This is where functors come in.

@@image

That *is* better, we
