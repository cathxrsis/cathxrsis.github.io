---

---

I was very surprised to read the new INCOSE Systems Engineering Principles publication and find a section defining that systems engineering has its mathematical basis in Category Theory. Surprising, mainly because this is something I've been banging on about for years and also because the few papers that I have seen on the subject are pretty vague on how.

Category theory is something that, as a Haskell programmer, I have a bit of an understanding of, therefore, I'd like to put together a few posts on some constructing some of the common things that systems engineers talk about in category theory. In this post, I want to tackle the interesting problem of a categorical view on behaviour. To do so, we're going to dive into the world of Profunctor Optics.

# What do we need to model systems?

Before we start worrying about the maths, we should first ask ourselves, what do we need from a model of a system? Here is a list of the main properties that our system models will need:

State

  : Many systems have a 'memory' that persists over time. 

Behaviour

  : 

Boundaries

  :

Interfaces

  : Systems have 

Composability

  : Possibly the most important part of systems engineering is the ability to break complex systems down into smaller ones and/or to build bigger systems from smaller ones. Therefore our system representations must be able to compose up to bigger ones.

# What categorical constructs have these properties?

In this section, I'm going to cheat and talk about category theory through the lens of type theory and the Idris programming language. @@

## State

All data in Idris is immutable---that is to say that values in data containers cannot be changed. This makes the way functions in Idris work conform to category theory but makes the mutable state of systems harder to encode. We can work around this though by @@

``` Idris
State : {a : Type} -> Real -> a
```

The above can be understood that 

