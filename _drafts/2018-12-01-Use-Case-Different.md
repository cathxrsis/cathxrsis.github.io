---
layout: post
title: "A New Look at Use Cases"
date: 2018-11-01
description: A few thoughts on a different way of thinking about and modelling Use Cases using SysML/UML.
effort: 10min
tags:
- Systems Engineering
- modelling
- SysML
- UML
comments: true
---

@@introduced

<!-- more -->

Use case analysis was developed as one of the main approaches to object-oriented software development in the 80s by Ivar Jacobson. In fact, Jacobson called his method Object-oriented software Engineering (OOSE). It was this method that introduced the stick men and bubble notation. When Jacobson was locked in a room at Rational software with Rumbaugh and Booch to make sure they came up with a unified notation for software, Jacobson's Objectory notation made it into the UML relatively unscathed. Thankfully, [Booch's class notation](https://www.slac.stanford.edu/BFROOT/www/doc/workbook_kiwi/coding/booch/class.html) didn't make the final cut.  

To begin our exploration into how use cases

> A description of the behavioral requirements of a system and its interaction with a user. [1]

> A description of a potential scenario in which a system receives an external request (such as user input) and responds to it. [2]

> A list of actions or event steps typically defining the interactions between a role (known in the Unified Modeling Language (UML) as an actor) and a system to achieve a goal [3]

@@

None of these definitions really get to what a use case (the UML element) is though. In UML, the use case element acts like a proxy to the system under development. The use case is associated with its actors and is placed within a system boundary box (which ) 

<![]()>

Personally, I find it more semantically elegant to imagine use cases as a context; a microcosm of the universe where a set of actors interact with the system under development to achieve a goal. Entertaining this definition, it becomes clear that the association between a use case and an actor is now a composition relationship; actors exist and interact with our system within the scope of our use case. Another odd semantic that comes from this is that use cases must be composed of the system under development too which turns the original notation of use cases being within a system boundary on its head.

The semantic elegance of this way of representing use cases really comes into its own when you represent the interactions in a use case with activities or sequences. Drawing any diagram within the @@

Use cases used in this way also correspond well to the *main* variable in a Haskell program; my preferred method of system modelling is @@

@@

## References
[1] ISO/IEC/IEEE. 2011. *Systems and software engineering: Developing user documentation in an agile environment.* Geneva, Switzerland: International Organization for Standardization (ISO)/International Electrotechnical Commission (IEC)/ Institute of Electrical and Electronics Engineers (IEEE). ISO/IEC/IEEE 26515:2011.

[2] From Wiktionary, Creative Commons Attribution/Share-Alike License.

[3] https://en.wikipedia.org/wiki/Use_case
