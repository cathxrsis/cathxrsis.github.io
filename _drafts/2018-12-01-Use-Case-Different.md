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

Use case analysis is usually the first port of call for developing any new system, from a new app to a new service. We've become used to the familiar use case diagram showing stick men actors linked to bubble use cases within a system boundary box. But how do we interpret this semantically? Use cases themselves are classifiers in UML/SysML so we can assume that this diagram shows that each use case is communicating with an actor. Does this mean that the use case is somehow an aspect of the system? does the system under development somehow inherit the use case behaviour? In this post I'll propose a different way of modelling Use Case diagrams in UML/SysML which, in my own humble opinion, seems more semantically elegant.

<!-- more -->

Firstly let's ask what ISO reckon's a use case is. The ISO definition of a use case is as follows: *"Description of the behavioral requirements of a system and its interaction with a user."*[1] This definition is rather hollow and doesn't get to the meat of what we know and love from UML.



My own personal definition is a context where one or more stakeholders work with the SOI and other peer systems to achieve a goal. The aspect of the SOI that performs the functionality that achieves the goal can be known as a feature.






## References
[1] ISO/IEC/IEEE. 2011. *Systems and software engineering: Developing user documentation in an agile environment.* Geneva, Switzerland: International Organization for Standardization (ISO)/International Electrotechnical Commission (IEC)/ Institute of Electrical and Electronics Engineers (IEEE). ISO/IEC/IEEE 26515:2011.
