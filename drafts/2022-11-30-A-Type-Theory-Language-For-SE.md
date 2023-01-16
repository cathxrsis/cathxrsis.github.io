---
layout: post
title: "A First Stab at a Functional Language for SE"
---

The inspiration for this work has come from my many criticisms of the SysML and UML languages. The languages are bloated and unintuitive. SysML v2 is addressing the bloat well but, in my opinion, the language remains unintuitive. I believe that this may be down to the deep influence that the C++ practice of the '90s has upon the designers of the language.

To remedy this somewhat, I'd like to present here the start of a language not based upon C++ and hopefully introduce you to some concepts that I believe would be very useful in a systems modelling language. This language is heavily inspired by David Spivak's Ologs but adds in a lot from the ML family of programming languages such as Haskell and Idris.

To begin with, I will focus on conceptual modelling but hope to show behavioural modelling in a future post. This language has both a textual and diagrammatic syntax with provisions for expansion for DSLs.

# The Functional Modelling Language

## Primitives

There are few primitives in the 

### Elements

### Types

Every element in FML has a type. The type can be thought of as a set that has some rules that dictate which members it contains.

In FML, a type must have a set of *Element Introduction Rules*. These are statements that allow us to define the possible values of a given type. @@

The `:` operator allows you to define these rules. It works as a statement that the identifier on the left is 'of type' the identifier on the right.
``` Idris
(
  Bool : Type
  True  : Bool
  False : Bool

  ifThenElse : Bool -> x -> x -> x
  ifThenElse True  a b => a
  ifThenElse False a b => b
)
```
Type introduction rules can also be functions:

``` Idris
  Nat : Type
  Z : Nat
  S : Nat -> Nat
```
This tells us that a Nat is either Z, or S applied to a Nat. This is known as an inductive type as the allowed values are `Z`, `S Z`, `S S Z` &c. These values correspond to 0, 1 and 2 respectively.

### Type Families

Types can also be constructed using functions called type constructors. These are functions that take a type and produce a new type.

``` FML
Constructor : \a -> Type
```
This is a concept that can be hard to get your head around, so here's a few examples to motivate the need.

``` FML
( --| Definition of the Maybe type constructor
Maybe : (\A : Type) -> Type
Nothing : Maybe A
Just : (\a : A) -> Maybe A
)
```
The maybe @@

```FML
{ 
Tuple : (\A : Type) -> (\B : Type) -> Type
MkTuple : (\a : A) -> (\b : B) -> Tuple A B
}
```

```FML
{
Either : (\A : Type) -> (\B : Type) -> Type
Left : (\a : A) -> Either A B
Right : (\b : B) -> Either A B
}
```

```FML

```

### Dependent Types

Dependent types are type constructors that construct a type using an element of another type. This allows us to describe ideas like fixed-length lists (also known as Vectors).

```FML
{
Vec : (\j : Nat) -> (\A : Type) -> Type
(::) : \A -> Vec j -> Vec (S j)
}
(=) : (\a : \A) -> (\b : \A) -> Type
Refl : \x = \x
K : (P : (\a=\a) -> Type) -> (\p : Refl) -> 

### Type Classes

This is an even more 
