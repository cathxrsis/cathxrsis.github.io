---
layout: post
title: "State Machine Diagram Considered Harmful"
date: 2021-05-06
description: The state machine diagram is one of the most popular diagrams for behaviour in SysML/UML & Simulink. It's dangerous and here's why.
tags:
- Systems Engineering
- Modelling
- SysML
- Simulink
comments: true
---

In the grand tradition of computer science bloggers, started by Edsgar Dijkstra himself with [*Go To statement considered harmful*](https://homepages.cwi.nl/~storm/teaching/reader/Dijkstra68.pdf), it is time to critique a commonly used language feature. This time in UML \& SysML (this also applies to simulink, but this is by no means the limits of my quibbles with Matlab). SysML has a few behavioural diagram types: the use case diagram (allegedly), the sequence diagram, the activity diagram, the parametrics diagram (though they're considered different for some reason?) and the state machine diagram. After the sequence diagram, the state machine diagram is probably the most used diagram for behavioural specification. In this blog post, I'm going to tell you why that's bad.

<!--more-->

The state machine diagram is (mostly) a representation of the computer science concept of a *Finite State Automaton*. This is a model of computation where the computer passes through a number of states. In each state, the computer can accept one of a number of predetermined stimuli which causes the computer to transition into another state. Although not turing complete, finite state machines can be used as a model for any terminating (not running forever) computation. There is nothing wrong with using FSMs for modelling behaviour, but their diagrammatical representation in SysML has a few problems that I shall detail below. Note that an activity diagram with certain constraints applied could also be used to model an FSM.

We can thank Dave Harel at I-Logix for the state diagram who developed the notation of finite state machines and developed a tool for their execution, StateMate, all the way back in 1987. Even though StateMate was considered defunct in 2006, its influence is still felt through UML/SysML state machine diagrams (1997) and Simulink stateflow (2018). The Rhapsody UML tool, also created by I-Logix, also has a heavy bias towards animation using state machine diagrams, most likely due to I-Logix's strong pedigree with StateMate. Since their inception, state machine diagrams have become a staple of specifying and describing behaviours of software and systems. This is likely due to the minimal number of langugage elements, their ease of use and the many programs that support their animation.

# The Problems

When specifying systems, especially continuous systems, a significant portion of functionality usually ends up pure. That is to say that at any point in time, the outputs of the behaviour can be determined entirely from the values of the input variables at that point in time (ignoring lag through the system). We often refer to these purely defined variables as *states* of the system. An example of this could be the On/Off state of a system. If its input voltage is greater than 5V, then its on, otherwise it is off. The on/off state of the system is purely defined by the input voltage. We call this sort of relationship where the output can be defined by the value(s) of its inputs at any point in time a *pure* behaviour.

Defining your behaviours as pure also comes with certain assurances: as there is no internal state or side effects, if you want to add two numbers together, the system will do that and only that and will not fire the missiles in the way to doing it.

Let's imagine what a state machine diagram for a pure system would look like. To ensure that the at any point in time, the output is entirely defined by the input values, then we need a transition from each state to every other state to completely specify a pure function.

This is the crux of why I believe that state machine diagrams are dangerous: *missed transitions on a state machine diagram are very hard to spot and can have bad consequences*. If a transition is missed, any method used to translate that into requirements is going to inherit that missed transition into a medium where its going to be harder to spot. Of course, state machine diagrams can be executable, but to spot a missed transition, one has to exercise it with test cases that would cover it. As Edsgar Dijkstra famously put it: *"Program testing can be used to show the presence of bugs, but never to show their absence!"* In the case of pure functions, what can we do?

# The Path to Totality

So what would be the best way to totally specify a pure function? One could use a truth table. These are particulary good for simple behaviours as a missed requirement maps to an empty box on the table. Here's an example of an XOR behaviour:

| | True | False |
|-|------|-------|
| True | False | True |
| False | True | False |

As the number of inputs to the function increases, the number of dimensions on the table required to fully specify the function increases to. This makes truth tables unwieldy for pretty much any function with more than two inputs. There are, of course, other ways of totally specifying the output of a function for pure functions. One of these ways is using pattern matching syntax used in some programming languages. Below are some examples of pattern matching written in the language Idris:

```Haskell
getChar : Int -> Char
getChar 0 = 'a'
getChar 1 = 'b'
...
```

Below is the standard recursive form of a fibonacci number generating function:

```Haskell
fibonacci : Int -> Int
fibonacci 0 = 1
fibonacci x = fibonacci (x-1)
```

Idris is an especially nice language for writing functions in as it also checks for you that your functions are total; that an output is generated for all possible inputs. Note that its not always possible to tell whether a function is total or not; its mathematically proven that there are classes of functions that are total and cannot be proven so and vice versa. This is a case of the halting problem that was shown to be unsolvable by Alan Turing.

## Requirements Authoring

An interesting outcome of this is the effect that using state machines or pattern matching has on requirements authoring. Sticking to the EARS grammar of requirements writing, we find that we require, at most, one requirement for each possible output of the system. However with a state machine diagram, we require at least one requirement for each transition. Guards on the transitions and the source state become the 'while' conditions of the requirement and the trigger, if one exists, becomes the 'when' condition. Have a go at specifying a simple pure function with at least 3 output states using both methods if you need convincing.

Because of the previous points, we can conclude that if a state machine diagram is used to specify a pure function with \[n\] output values, we will end up writing \[n!\] requirements. This argument often holds for lines of code too. The reason for this is that requirements authors and software engineers often write to the structure of the input information; it is very rare that an engineer will absorb a state machine diagram, ruminate on it and then produce a nicely refactored piece of work from it. If there is a time pressure involved or the state machine is complex beyond first-glance comprehension, this problem can be exacerbated.

# Conclusion: Church & State

Despite my clickbait title, I do not advocate for full removal of state machine diagrams from systems engineering process; instead I urge engineers to take a nuanced approach to understanding where they're useful and where they're not the best way to present behaviour. Abstract is a relative term; always remember what parts of reality your are ignoring with your model.

Using truth tables and pattern matching to describe functional behaviour is great for defining pure functionality but falls down quickly when the value of a function's output depends on a previously stored value. This is the case where state machine diagrams truly shine. Whenever you have any sort of memory in a system, a state machine diagram will help you express it. I've found the following examples to be very common:

- Systems with Hysteresis; where the mathematical relationships between variables are different depending on the 'direction of travel' of the overall system state.
- Places where you want to interpret a user mashing a button as a request rather than rapid successive changes of mind.
- Anywhere where a delay is required.
- Anywhere where event based behaviours cause a 'latching' effect.

The catch is that we must ensure that our state machines remain small and comprehensible to reviewers and consumers. A 5 storey deep nested state machine with 100 transitions may animate as valid against your customer requirements but your poor suppliers are not going to make head nor tail of it. For this reason I have put together a few best practice guidelines for the safer use of state machines in behavioural models:

## Expose the state

Design your functionality so that the output value of your stateful functions *is* the state of the function. Model further behaviour as downstream functions. This will make errors in your state transitions far easier to spot. To see how to stitch the exposed states together see my third point of tying behaviour together with activities.

## Break up nested or parallelised state machines

This point is an extension of the previous one; if states are nested or are in parallel, which off the states do you expose and how? This question is easily avoided by disallowing nested states and parallel states. This is easy enough to say but sometimes there is no other simple way to specify the functionality. To answer this, we need a simple way to break up larger behaviours into smaller ones using the state machine definition of their behaviour.

With nested states, the encompassing level of states becomes an "upstream" behaviours of the state machines nested inside of them. Another valid method could be to flatten the states by keeping only the innermost layers of nesting and prepend the names of the mother state to those of the daughter states. Parallel state machines are easily separated into different, interdependent behaviours by seperating down the dotted line.

Following these methods of splitting out a big state machine into a set of smaller interconnected state machines is also a great way of creating a broken down set of functions for allocations to subsystems if you've defined your overall system's behaviour with a state machine. Performing these methods, however, leaves us with an interesting problem: how do we tie these behaviours back together in SysML so that a user can understand the interdependencies?

## Tie it all together with activities

Activity diagrams are my favourite diagrams in SysML. This bias is not without reason; activity diagrams are a great way to connect behaviours together. I plan to do a blog post about extending the power of activity diagrams in the future, so for now I will just talk about them in reference to state machines. Call behaviour elements in activities can be used as a way of calling out to state machines.

There are no semantics currently in the UML or SysML specs about how a state machine behaviour interacts with object flow within an as a called behaviour. In fact, state machines are left out of the xUML standard! Here are a few extra semantics that "make sense" to me to tie these different representations together:

- Interpret the state as the RETURN value of a «stream» object flow from the called behaviour. (Animation of this can be achieved in many SysML tools by adding an action on entry to a state to set the functions output.).
- Use object flow to link stateful functions. This has the added bonus of allowing you to spoof activities with internal block diagrams if your SysML tool doesn't support the standard well enough.
