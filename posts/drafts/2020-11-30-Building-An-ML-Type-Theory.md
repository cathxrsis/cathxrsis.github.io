---
layout: post
title: "Type theory as a basis for MBSE"
date: 2020-10-30
description: 
tags:
- Systems Engineering
- Modelling
- SysML
- Simulink
comments: true
---

This blogpost is an attempt to define a modelling language in the same vein as UML/SysML but using type theory to provide a theoretic basis. There a couple of motivations for doing so. The first is that I believe a type theoretical modelling language would allow for a @@ 

<!--more -->

So how does one start creating a graphical modelling language around type theory? First I must choose a type theory. To enable proofs to be expressed within the language, I'm going to pick a type theory with dependent types and therefore, I'm going to use the Idris programming language as a starting point.But even before that, I'm going to have to develop a basic grammar with which to express concepts within 

| Feature | Symbol | Language |
|:-------:|:------:|:--------:|
| Term    | | Any string that isn't reserved |
| Constructor | | |
| Application | | |
| Scope | | |