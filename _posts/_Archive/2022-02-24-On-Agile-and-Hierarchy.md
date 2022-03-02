---
layout: post
title: "Agile Systems Engineering and System Hierarchies"
date: 2022-02-24
description: Is systems hierarchy an anti-pattern?.
effort: 4min
tags:
- Systems Engineering
- System Architecture
- Agile
- Scrum
comments: true
---

This post is not here to share a solution to a problem in the same way as my others. Instead, I would like to pose a question around agile and traditional systems architecture and hopefully spark a discussion on a concept that is almost fundamental to modern systems thinking---the systems hierarchy.

<!-- more -->

To frame my question, I would like to start by making a distinction between 'tall' and 'wide' systems. Tall systems are those that you tend to encounter in the defense industry. These systems have systems within systems within systems. Usally, the parts of a tall system become more specialised as you go down the abstraction layers requiring more specialised engineers as you get into the lower layers of techology.

Wide systems, conversely, are those that have many behaviours---in other terms, a large interface. Large software apps are good examples of wide systems where the interface can be incredibly large---think of something like a Microsoft Office app---but only has a frontend and a backend regarding abstraction layers.

Complex wide systems have many interacting behaviours whereas tall complex systems have many interacting parts. Many complex systems are both tall and wide---think of modern automobiles or aircraft.

Scaling Agile and Systems
=========================

The sort of complex systems that we encounter in the systems engineering world are too complex for a standard agile team of 10 engineers. Systems engineering can be thought of as the set of techniques required to deal with problems too great for one team. Therefore, most systems engineering projects require some sort of scaled agile framework if they don't want to deliver a solution that's out of date when it gets to the customer.

There are a number of frameworks for scaling agile. For example, LeSS and Scrum of Scrums. In these frameworks, multiple scrum teams work from a single product backlog. In other words, one set of requirements.

Ideally, these teams are crossfunctional---they should comprise *T-shaped engineers*. T-shaped engineers are those who don't just specialise in one area, but hold enough knowledge outside of their main discipline to collaborate on and scrutinise all of the work being done by the team.  

This is at odds with the traditional hierarchical model where there are multiple requirements documents that act as communications of need between abstraction layers. There is also a tendency for engineers at each layer to be heavily specialised with systems engineers and project managers high up going down to more specialised mechanical, electronic and software engineers as you work your way down the project tree.

Human Hierarchies and System Hierarchies
========================================

Conway's Law states that system architectures mirror the communication structures of the organisations that develop them. The prevalence of hierarchical organisations in the modern world---driven by the norm of capitalism and militaries---may account for the prevalence of tall complex systems in the systems engineering world.

It is a given necessity that complex systems will have to be broken into smaller problems to be solved. However, the way that we cut up problems has an impact on the complexity of the solution and may even add unnecessary complexity if done badly.

One thing that I learned whilst at JLR was the impact in engineering of the way that you perform functional analysis. The current 'textbook' way of performing functional analysis is to ask what the system does and break that behaviour down hierarchically. This results in functions with large amounts of information flow between them.

Large amounts of information flow between the boxes of your system hierarchy are a good example of added unnecessary complexity. More information flow between boxes equates not only to larger interfaces inside of the system but also larger interfaces inside of your organisation. These larger interfaces for requirements flow mean that there is more risk associated with miscommunications.

Cutting up your system in this way also makes for large dependencies inside of your system. The functions on the outer interface of your system are the only ones that can deliver value to your customer. If, in an agile programme, you have cut your system up 'vertically'---with functions like 'sense', 'validate', 'process' and 'actuate'---you may find that your product backlog items have large interdependencies that result in an emergent waterfall delivery. If sprint one covers 'sense' and sprint 2 'validate' e.t.c. you won't deliver until the last sprint in exactly the same way that a waterfall delivery works.

The MISO method (described in my last post on this blog) attempts to cut the functionality along the grain of information flow. This minimises the flow of information between functional blocks. Surprisingly, the functions that were produced by this method were often small enough to be solved by a single team---most of the time a single person. The functions also cut the system 'horizontally' meaning that it becomes easier to see functional chans that can be delivered early and give your customer value.

Conclusion
==========

Traditional hierarchical structures in businesses of highly specialised engineers cause large interdependencies inside organisations. Through Conway's law, these interdependencies leak into our complex systems making them unnecessarily tall. Unfortunately, this creates something akin to a feedback loop, remaking the organisation in its image by forcing efforts of agile engineering back into a waterfall cadence. For these reasons, I believe that the traditional systems engineering way of working in creating 'tall' arborescent hierarchical systems is an antipattern that is causing unnecesary complexity and costs to projects.