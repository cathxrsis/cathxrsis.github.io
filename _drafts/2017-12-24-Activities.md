---
layout: post
title: "A cry for a functional modelling language"
date: 2015-07-23
description: An exploration into
tags:
- Systems Engineering
- modelling
comments: true
---

This essay comes from a challenge many Systems engineers have probably come across when developing the functional breakdown of a novel system. After finishing some sort of customer needs analysis, the Systems engineer usually finds themselves having to perform a functional analysis. In the past this has usually been done by firing up visio and producing an EFFBD[1] (gotta love them insanely long acronyms). In companies who have adopted the latest buzzword "MBSE"[2] (aMBSE[3] if your manager has been taken in by the IBM sales rep) the EFFBD has been replaced by the SysML activity diagram.

The basic building block of the activity is the "call operation" which should link directly to an operation of the block under development (SoI/SuD whichever takes your fancy). This is all well and good if the system is a one-off production but if those functions are required to be reused in different models or even in the model at hand, there is no way to do this except for copy and paste.

<!-- more -->

Acronyms
--------

[1] Enhanced Functional Flow Block Diagram

[2] Model Based Systems Engineering

[3] agile MBSE
