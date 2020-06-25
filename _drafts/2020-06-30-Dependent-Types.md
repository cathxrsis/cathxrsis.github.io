---
layout: post
title: "A better type of type"
date: 2018-03-27
description: 
tags:
- Systems Engineering
- modelling
- Functional architecture
- SysML
comments: true
---

# The physical units

  data Quantity = Quantity (Mass | Length | Time)

  type Units = (List Quantity) (List Quantity)

  multiply = Units -> Units -> Type
  multiply (u as bs) ('u 'as 'bs) = 

  invert :: Unit -> Unit
  invert a b = Unit b a