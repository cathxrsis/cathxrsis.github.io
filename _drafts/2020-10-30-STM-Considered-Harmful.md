---
layout: post
title: "State Machine Diagram Considered Harmful"
date: 2020-10-30
description: The state machine diagram is one of the most popular diagrams for behaviour in SysML/UML \& Simulink. It's dangerous and and here's why.
tags:
- Systems Engineering
- Modelling
- SysML
- Simulink
comments: true
---

In the grand tradition of computer science bloggers, started by Edsgar Dijkstra himself with [*Go To statement considered harmful*](https://homepages.cwi.nl/~storm/teaching/reader/Dijkstra68.pdf), it is time to trash a commonly used language feature. This time in UML \& SysML (this also applies to simulink, but this is by no means the limits of my quibbles with Matlab). SysML has a few behavioural diagram types: the use case diagram, the sequence diagram, the activity diagram, the parametrics diagram (parametrics *are* behaviour: fight me) and the state machine diagram. After the sequence diagram, the state machine diagram is probably the most used diagram for behavioural specification. In this blog post, I'm going to tell you why that's bad.

<!-- more -->

The state machine diagram is (mostly) a representation of the computer science concept of a *Finite State Automaton*. This is a model of computation where the computer passes through a number of states. In each state, the computer can accept one of a number of predetermined stimuli which causes the computer to transition into another state. Although not turing complete, finite state machines can be used as a model for any terminating (not running forever) computation. There is nothing wrong with using FSMs for modelling behaviour, but their representation in SysML has a few problems that I shall detail below.

## The Problems

When specifying systems, especially continuous systems, a significant portion of functionality usually ends up pure. That is to say that at any point in time, the outputs of the behaviour can be determined entirely from the values of the input variables at that point in time (ignoring lag through the system). We often refer to these purely defined variables as *states* of the system. An example of this could be the On/Off state of a system. If its input voltage is greater than 5V, then its on, otherwise it is off. @@ But a state machine is somewhat overkill here.

Let's imagine what a state machine diagram for a pure system would look like. As a pure system is one where @@

This is the crux of why I believe that state machine diagrams are dangerous: *missed transitions on a state machine diagram are very hard to spot and can have bad consequences*. If a transition is missed, any method used to translate that into requirements is going to inherit that missed transition into a medium where its going to be harder to spot. Of course, state machine diagrams can be executable, but to spot a missed transition, with @@ In the case of pure functions, what can we do?

## The Path to Totality

@@

## The Truth

@@ truth tables and pattern matching

## Conclusion: Babies \& Bathwater

Despite my clickbait title, I do not advocate for full removal of state machine diagrams from systems engineering process; instead I urge engineers to take a nuanced approach to where they're useful. Using truth tables and pattern matching to describe functional behaviour is great for defining pure functionality but falls down quickly when the value of a function's output depends on a previous output value. This is the case where state machine diagrams truly shine. The catch is that we must ensure that our state machines remain small and comprehensible to reviewers and consumers. For this reason I have put together a few best practice guidelines for the safer use of state machines in behavioural models:

### Expose the state

Design your functionality so that the output value of your stateful functions *is* the state of the function. Model further behaviour as downstream functions. This will make errors in your state transitions far easier to spot. To see how to stitch the exposed states together see my third point of tying behaviour together with activities.

### Break up nested or parallelised state machines

This point is an extension of the previous one; if states are nested or are in parallel, which off the states do you expose and how? This question is easily avoided by disallowing nested states and parallel states. This is easy enough to say but sometimes there is no other simple way to specify the functionality. To answer this, we need a simple way to break up larger functions into smaller ones using the state machine deifinition of their behaviour.

Nested states in a state machine become @@

@@ Why and how to transform.

Following these methods of splitting out a big state machine into a set of smaller interconnected state machines is also a great way of creating a broken down set of functions for allocations to subsystems if you've defined your overall system's behaviour with a state machine.

### Tie it all together with activities

Activity diagrams are my favourite diagrams in SysML. This bias is not without reason; activity diagrams are a great way to connect behaviours together. I plan to do a blog post about extending the power of activity diagrams in the future, so for now I will just talk about them in reference to state machines. Call behaviour elements in activities can be used as a way of calling out to state machines.

There are no semantics currently in the UML or SysML specs about how a state machine behaviour interacts with object flow within an as a called behaviour. In fact, state machines are left out of the fUML standard! Here are a few extra semantics @@