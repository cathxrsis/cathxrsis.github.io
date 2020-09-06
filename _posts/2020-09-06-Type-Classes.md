---
layout: post
title: "Patterns for types"
date: 2020-09-06
description: 
tags:
- Systems Engineering
- modelling
- Functional architecture
- SysML
comments: true
---

In my last post, I showed how, with a little additional syntax, Data Types can be given a lot more power within a UML/SysML model. In this post I'd like to dial up the power one step further and talk about how we can spot patterns in the usage of certain Data Types and encode this as an addition to UML/SysML that will give us better insight into the correctness of our models and allow us to define patterns we use again and again in an abstract way. This pattern is sometimes called the "trait" (in the Rust language) or the "type class" (in Haskell/Scala/Idris).

<--! more -->

Let's return to the UML definition of a primitive Data Type:

> A PrimitiveType defines a predefined DataType, without any substructure. A PrimitiveType may have algebra and operations defined outside of UML, for example, mathematically. The run-time instances of a PrimitiveType are values that correspond to mathematical elements defined outside of UML (for example, the Integers). [1]

In the last post we explored how primitive types can be expressed using a few new pieces of UML syntax. Now though, I'd like to explore the second sentence of the definition: *A primitive type may have algebra and operations defined outside of UML...* I'd like to ask the question: why shouldn't we define algebras and operations inside of UML? and explore what that might entail.

## What is an Algebra?

To start with lets talk about how mathematicians,physicists and computer scientists model the world: through algebra. The concept of algebraic structures is usually new to engineers who aren't usually taught abstract maths at university level even when it becomes extremely useful. This fact is probably why academic computer scientists can be found geeking out over new developments in category theory whilst even the most academic mechanical engineers wouldn't be able to tell you what a division ring is despite having used them since primary school.

An algebraic structure is a set of objects, a set of operations that you can use with them and a set of laws that they must conform to. Let's have a look at the example of a *Monoid* t show you what I mean. A *Monoid* is any set where two members of the set can be combined with a "multiplication" operation to create another member of the set. There must also be an *Id* element that when combined with other elements, returns the other element unscathed. Let's use the programming language "Idris" to illustrate this:

     interface Monoid m where   -- m is any type that we're defining a monoid for
       mId : m                  -- mId is the identity
       mPlus : m -> m -> m      -- mPlus is our combining operation

I've chosen the Idris language as it can be used to define the laws associate with a monoid. These are illustrated below:

       mIdIsIdR         : mPlus mId m = m                           -- mPlussing the Id to anything returns that thing
       mIdIsIdL         : mPlus m mId = m                           -- Same as last, but left-handed because monoids don't necesssarily commute
       mPlusAssociates : mPlus a (mPlus b c) = mPlus (mPlus a b) c  -- mPlus is associative

Those who've read my previous blog post on algebraic data types might notice that these monad laws are being expressed as propositions as the type of a function. This is a cool aspect of a few programming languages that enable you to mathematically prove aspects of your programme (for instance, this Idris interface for monoid forces you to provide a proof for each of the monad laws before you can use it). Proofs are beyond the scope of this article, but if you'd like to know more, the wikipedia article on the [Curry-Howard-Lambek Isomorphism is a good place ot start.](https://en.wikipedia.org/wiki/Curry–Howard_correspondence)

By this point, you've probably already thought of a few monoids that we use in daily life. Possibly the most ubiquitous example is the monoid of the natural numbers and addition. In this case, mPlus is plain old addition and mId is 0. In Idris, this would look something like:

    implementation Monoid Nat where
      mId = 0       -- The additive identity is 0
      mPlus = (+)   -- The combining operator is normal addition

To hammer the point home, here are a couple of other well used monoids:

    implementation Monoid NatMult where -- A multiplicative monoid for the natural numbers
      mId = 1       -- 1 is the identity
      mPlus = (*)   -- Multiplication is the operator

    implementation Monoid Bool where
      mId = True    -- True is the identity
      mPlus = (&&)  -- Boolean AND is the operator

    implementation Monoid String where
      mId = ""      -- The identity is the empty string
      mPlus = (++)  -- The operator is string concatenation

The power of knowing what sort of algebraic structure you are playing with is that, almost certainly, mathematicians have shown all sorts of interesting and useful results for that structure. Just by showing that the problem you are facing conforms to a certain algebraic structure gives you a lot of information for free. From a programming point of view it enables us to use the same functional chain for different data types: if the behaviour of our program uses only functions from algebraic structures, we can change the underlying type of data being fed through the "pipeline" without having to modify too much of the functionality. This can also apply to UML and SysML, take the example of the join node in activity diagrams.

There is a good reason why I started by mentioning the Monoid. Not only is the Monoid possibly the simplest intuitive algebraic structure, it could be used to give meaning to the join node in activity diagrams for object flows.

![Activity diagram fragment showing two object flows connecting to a join node](../assets/images/join.png)

In the current UML/SysML interpretation of join nodes, they cannot be used easily with object flows as in the diagram above. This is because if two tokens reach the node, what value do we give the outgoing token? Specifying that all of the incoming flows must be of the same type with a defined monoid solves this problem. We simply define the value of the outgoing token as the "mPlus" of the values of the incoming tokens. As a monoid must be associative, this pattern would work for any number of incoming object flows.

There are far more useful and interesting algebraic structures that embody many patterns that arise in engineering situations. I'll explore a few in some future blog posts, perhaps I may even try to tackle the dreaded Monad in UML (after all, its just a monoid over the category of endofunctors, right?).

## A UML implementation for Algebraic Structures

So how would we implement such thing as an algebraic structure in UML? We're going to need to work out a way to represent the aspects of the Set, the operations and the laws. We're also going to have to ensure that one algebraic structure can be applied to multiple different sets possibly multiple times (e.g. multiplication and addition monoids of natural numbers).

### The Set

The set associated with the algebraic structure could be a class, a data type or indeed any classifier. This points towards the well understood idea of "interfaces" in Java where an abstract class (a class that cannot directly type an object) is used to impart certain operations onto a class.

Therefore, attaching a data type to a algebraic structure is done simply with a generalisation relationship. This scans well as generalisation is an "is a" relationship; any data type that is generalised by the algebraic structure *is* a specialisation of the algebraic structure.

### The Operations

The operations of the algebraic structure are just operations. Thanks to the subtyping polymorphism given to us by UML's generalisation, we only need to define the operations in terms of the algebraic structure. In UML notation, the monoid operation might look something like this:

     mplus (a : Monoid, b : Monoid) : Monoid

Note that with UML, the mZero function becomes an OCL constraint. Interestingly, in Idris all of the operations and laws are, in fact, functions due to the Curry-Howard-Lambek isomorphism where propositions isomorphic to types; the function constructor '''->''' is isomorphic to implication in prepositional logic.

### The Laws

Laws are quite easily added to the new classifier in the form of OCL constraints. In fact the monoid laws can be rewritten in OCL as:

     context Monoid
     inv:    self -> forAll(m | exists(mZero | mAdd(mZero, m) == m))
     inv:    self -> forAll(m | exists(mZero | mAdd(m, mZero) == m))
     inv:    self -> forAll(m | forAll (n | forAll (o | mAdd(m, mAdd(n, o)) == mAdd(mAdd(m, n), o))))

Personally, I find the OCL a lot harder to read than Idris. Its somewhat unfortunate that the UML and OCL developers hadn't encountered the ML family of languages as OCL could be have been understandable to the average engineer without losing its formality. Perhaps we'd have had a UML based on category theory; the third part of the Curry-Howard-Lambek Isomorphism.

## conclusion

 In this post, we explored what algebraic structures are and how they can be useful to us as engineers attempting to model systems. This resulted in a proposal for a way of modelling something analogous to type classes in UML using stereotypes as a base. We were, however, left with one aspect of type classes that UML can't handle: how to implement the laws. Implementing laws and proofs is outside the scope of UML and for now we'll have to settle for OCL constraints to implement our laws. Wouldn't it be nice, though, to have one language? To have a graphical equivalent of "Idris"? I'll explore what makes Idris Idris in another blog post where we'll explore dependent types and what a modelling language would have to be to include them.

## References

[1] OMG 2017 *OMG&trade; Unified Modeling Language&trade; (OMG UML&trade;) Version 2.5.1* http://www.omg.org/spec/SysML/1.4/