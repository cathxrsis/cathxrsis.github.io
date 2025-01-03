---
layout: post
title: Gaining Composure by Losing Control
date: 2021-11-30
description: A novel method for functional architecture that enables composition of features into a larger whole.
icon: "../images/generic.png"
comments: true
---

What follows is a paper that  I submitted for INCOSE UK's ASEC 2021 Conference. Unfortunately, the paper was not accepted which is fair enough as the presentations that made it into the conference were all incredibly interesting, useful and well presented. However, despite my presentation skills, this method brought a lot of benefit when used at Jaguar Land Rover and I present it here so that others can benefit from it too.

<!--more-->

Many systems processes leave most of their integration activities on the
right-hand-side of the Vee. This can result in functionality being lost
in the gap between subsystems or duplicated across subsystems. These
defects, embedded in the requirements, may only become clear during
integration testing or later where the cost of rectification is higher.
This problem is compounded by sub-optimal communication structures that
are inherent in siloed organisations and even more so when engineers are
highly distributed due to home working.

In projects where new behaviours (features) are continuously integrated
onto existing systems, emergent behaviours can occur when new features
interfere with existing ones. A model-based whole system functional
architecture would allow us to understand these emergent behaviours.
Such a model would also provide a "single source of truth" that would
aid in preventing duplicated requirements and highlight missing
functionality. Unfortunately, existing methods of functional analysis
result in sets of functions that cannot easily be "stitched together" to
create such a model.

Presented is a novel approach to functional analysis, inspired by
functional programming, that enables greater composability of the
functions created. The method focuses on the information flow around the
system as the basis of defining functionality and prohibits the use of
control flow. This method has been in use within JLR for 3 years and is
performed on all new features. This has resulted in a model with over
6000 functions from many contributors across the company. This model has
allowed us to perform analyses to catch emergent behaviours of the
feature; more easily perform failure analysis and gives us a standard
"currency" with which to cascade requirements to subsystems.

Introduction
============

Performing a functional analysis for a system is a common step in the
requirements analysis process. It allows systems engineers to decompose
the 'black box' system requirements of a system of interest (SoI) into
chunks that can be allocated to subsystems \[p.48 SMC 2005\]. Functional
decomposition also enables methods such as N^2^ analysis so that
engineers can define better subsystem architectures to fulfil their
stakeholder's needs.

Functions can therefore form a "currency" which can be used for
requirements allocation and traceability from a SoI to its subsystems;
the method with which we use to create our functions is key to ensuring
that this later work is effective in creating better system
architectures.

The method presented in this paper does not cover the identification of
functions that are black-box system level; referred to as features
hereafter. Rather, it covers the decomposition of features to a level
that can be allocated to subsystems. Features are often developed using
use case analysis; the feature is the behaviour of the SoI, in response
to stimuli during the use case, to achieve the goal and satisfy the
stakeholder(s). Features can span multiple use cases.

The method is only applicable to the functional aspects of a SoI; those
where causality flows from inputs to output. It is not a good fit for
modelling the physics of the use case where a parametric model could be
better used.

A Novel Method for Functional Decomposition 
===========================================

Features often have large overlaps with each other; they respond to the
same stimuli, produce the same actuations or contain the same
mathematical relationships between stimulation and actuation. If we were
to treat these features as atomic units in the engineering process, it
would result in duplicated effort.

This overlap can also cause issues when the SoI is developed
iteratively. This is the approach to engineering that the automotive
sector follows. Each new system produced is an iteration of a
continuously updated architecture. In these cases, there is an increased
risk that new features will interfere with existing ones. This can cause
undesirable emergent behaviours. Without analysis to spot these emergent
behaviours, they may only be caught during final validation of the
product as the issues are inherent in the requirements.

Many functional decomposition methods treat functions as the process of
completing one of a sequence of tasks that culminate in the achievement
of the goal. Often the sequencing of the functions is shown using a
control flow graph. Examples of this are Functional Flow Block Diagrams
presented in the NASA SE Handbook\[NASA 2007\] and SysML activity
diagrams \[OMG 2018 SysML 1.6\]. Information flow is often then added to
the decomposition afterwards (or not at all as described in the SEBoK
logical architecture pitfalls\[SEBOK 2020\])

In this paper, a novel functional analysis method is presented that
addresses these concerns whilst being simple enough for engineers to
understand with minimal training. This method has been named the Miso
method as the functions produced can have multiple inputs but only one
output.

The key idea behind the Miso method was the question:

*Concerns for Functional Analysis Methods* 
------------------------------------------

Before developing a new method for functional analysis, we identified
stakeholder concerns that would need to be addressed by the method.
These concerns were discovered through discussion with many stakeholders
from around to business. To summarise, the new method should improve our
capabilities to perform impact assessments and failure analyses; produce
functions that are readily allocable to the existing (and future)
subsystems; and ease writing, reviewing and validation of requirements.
The method should also help us avoid anti-patterns such as 'hidden'
information flow that can make failure analysis and validation harder;
letting the solution inform the decomposition which can cause no longer
applicable constraints to affect the requirements; and help avoid
decomposition to the wrong level of abstraction.

*Miso Functions* 
----------------

A sign of a good method is repeatability: two engineers with the same
inputs, separated so they can't communicate, should produce the same
outcome when following the method. With previous methods of functional
analysis, this did not occur. Engineers often disagreed on the
interfaces of the functions. However, they tended not to disagree on the
information flows in a feature. This experience inspired the key idea
behind the method.

To ensure repeatability, the engineer follows a standard method to
identify the functions. The engineer first identifies all information
that is flowing across the system boundary---stimuli & actuations---and
the control functions are just the dependencies between these
information flows. If you were to have drawn sequence diagrams to
express your use cases for the SoI, each message going into or out from
the SoI's lifeline is one of these boundary-crossing flows. This also
ensures a consistent level of abstraction across decompositions.

The main view of the Miso method is the enhanced functional flow block
diagram\[Long 1995\](eqivalently, SysML Activities). Thinking of
functions as the dependencies between information flows though gave the
diagrams some interesting properties: there is no control flow in the
Miso functional flow views which, somewhat surprisingly, has not
resulted in a loss of expressiveness. The distinctive
multiple-input-single-output signature of the functions also arises from
thinking of functions in this way.

![**An example SysML activity diagram of the behaviour of a toaster
developed using the Miso method. This view would be complemented by a
set of views showing the possible values for each Data
Type.**](images/image1.png){width="\\textwidth"}

With the Miso method, writing requirements becomes an exercise in
stating which value is produced by the function for each combination of
input values. This makes the requirements produced much easier to review
as complete. This becomes slightly more complex for stateful functions
as described later in this paper.

In JLR we created new stereotypes on our function element---«sense» and
«actuate»---to represent when information flow crosses the system
boundary. This could also be achieved with activity parameters in an
activity diagram as in Figure 1. Though having specific function
elements here gives us a standard element in the modelling tool to
attach requirements for the SoI's interfaces.

Allocating a Miso function to a subsystem carries the meaning of
allocating the responsibility to create the information flow produced by
the Miso function. That subsystem must also have access to the
information that the function requires at its inputs. This leads us
towards allocation methods where we can allocate our functions to
minimise information flow across interfaces as a sort of N^2^ as-you-go.
Knowing the dependencies between input and output values can also give
you an understanding of the 'size' of the computation a function
represents (in rough big O notation) and can inform allocation if
computing power is a constraint.

*A Whole-System Functional Architecture* {#a-whole-system-functional-architecture .unnumbered}
----------------------------------------
:::

When it comes to reusing functions in a new feature, if a function has
multiple outputs, there is a risk that the novel feature will only use a
subset of the outputs in its behaviour. This can lead to features
picking up unrelated requirements when traced to their functional
decompositions. Miso functions solve this problem elegantly due to their
single output---if you require the information created by that function
then you reuse it, otherwise, you do not.

Another problem that affects the composition of Miso functions into
features is the interpretation of connectors. SysML activities and
Simulink both treat the connections between functions as 'pipes'. Unlike
C functions where functions are called to return a value and then
disappear back to oblivion, Miso functions should be interpreted as
machines that are 'always on' and therefore, the information flows
always have a value. For those interested in category theory, because of
this, Miso functions could be modelled as a special kind of category
known as a Freyd Category or Hughes' Arrows \[Hughes 2000\].

The Miso method gives us the guarantee that if an information flow is an
input to a function then the output depends on it. This, coupled with
the library and the whole-system functional architecture, allowed us to
follow functional flow back and forward through our SoI. Another way
that the Miso method supports this is by enforcing that engineers
specify all possible values of each information flow and whether the
function generates it as an event or a stream. By doing so, it is much
easier to apply failure keywords in a HAZOP-like method and to work out
which failures are undetectable and detectable. Therefore, this
identified impossible requirements where the downstream functions were
reacting to an undetectable failure.

In JLR, the whole system functional architecture took the form of a
SysML model that aims to contain all connections between all usages of
the functions in all possible vehicles from 2019 onwards. At the time of
writing, there are over 6000 functions in this architecture, each
responsible for a unique information flow. This is expected to grow at a
linear rate into the future as more features are added to vehicles
bringing in new functions and documenting legacy functions alike.

A diagram view of this entire architecture would be beyond
comprehension, so tools have been developed to create views scoped to
individual features on request. Tools have also been developed to enable
the following of upstream & downstream dependencies between functions so
that failure analysis can be traced from stimuli to actuation in the
model. This model provides a firm foundation for the automation of
analysis of emergent behaviours between features given a behavioural
specification for each function in a machine-parseable language.

::: {#information-flow-values}
*Information Flow & Values* {#information-flow-values .unnumbered}
---------------------------
:::

Defining the extent of possible values for each information flow is an
important part of the Miso method. Understanding the possible input
combinations and outputs of a function is a good way for us to ensure
that the requirements written from it are complete. Therefore, defining
the value range for each output of a function is a mandatory part of the
method.

SysML Data Types provide our main means of recording this information
but a table view for each function could suffice in a non-modeling
process. We took inspiration from functional programming's use of
algebraic data types \[Milewski 2015\] to ensure that the syntax for
data types in the requirements was expressive enough to cover
arbitrarily complex information.

We also defined the Nothing value as a special value that could be added
to types to represent a function not producing anything. An example is
when an event based «sense» function is not sensing an event---in these
cases, it is producing Nothing. This ensures our requirements cover
conditions where there is no stimulus and that they are easily
understood. This convention was inspired by the Maybe type used in many
functional programming languages \[Lipovača 2011\].

*Stateful Functions* 
--------------------

An important part of the Miso method is the identification of whether an
information flow is a token (event based) or a stream (continuous) as it
provides us with an easy way of identifying whether a function is pure
or stateful.

r0.5

Pure functions are those where, at any point in time, the output value
is entirely defined by the inputs. Therefore requirements authoring for
a pure function is trivial. If this condition is not true, then the
function must have memory (state). An impure function is identified as
one where there is at least one token input but a stream output.

Many problems can only be solved by impure behaviours---any problem that
requires information to persist over time. To keep state away from pure
functions, we initially introduced a new stereotype of
function---«store». A «store» function stores the last value of a token
and produces it as a stream of the same type. A store function can then
be placed upstream of the inputs of a stream-producing control function
to ensure that it receives only streams and is pure. With the addition
of «store» functions, the metamodel of the language is complete with
regards to being able to fully express behaviour.

As more features were analysed using this technique, we noticed patterns
occurring with the interplay between «store» functions and «control»
functions. One example of this is the state control pattern. This
pattern is shown in figure 2. It was realised that this little system of
«store» and «control» functions were acting equivalently to a state
machine. Therefore, a new stereotype of function---«stateful»---was
created to encompass this pattern. We then encouraged engineers to draw
state diagrams to represent the behaviour of these new functions to
improve comprehension and communication of requirements.

*Summary of the Miso Method* 
----------------------------

Finally, presented is a summary of the steps to the Miso method of
functional analysis:

**Identify the Interface of the Feature**---In the use cases for the
feature at hand, identify where information flows across the boundary of
the system. This could be in the form of stakeholder interactions,
sensing the values of environmental measurables or actuating effects.
For each of these identified information flows, identify whether they
are a token or a stream and the range of values that it has.

**Analyse the Dependencies Between Information Flows**---For each of the
actuations of our system in the use case we need to identify which of
the stimuli we want it to depend upon. If there is a dependency between
an actuation and a stimulus, the stimulus information flow must be an
input to the control function of that actuation. Note that occasionally,
some control functions will feed into more than one actuation.

**Identify State**---Identify functions with tokens going in and streams
coming out---these are cases where store or stateful functions are
required. We also identify the need for timing---such as delays or
debounces---as this too can be represented with stateful functions.

**Refactor Your Decomposition**---Notice when multiple functions are
consuming the same information flows and are doing something under the
same conditions Where this happens, we can create a new function and
information flow to represent the conditions being met or not. Note that
new control functions should only be created if the information they
produce is used by two or more other control functions. This refactoring
can also be done in reverse to merge extraneous control functions that
are only providing their information to one other control function.

Conclusion and Further Work {#conclusion-and-further-work .unnumbered}
===========================

Refining our approach to functional architecture has given JLR a better
understanding of its vehicle system by allowing us to find
inter-relations between different behaviours that remained implicit in
other methods. This led to reductions in the time taken to perform work
such as functional failure analysis, feature requirements harmonisation
and reviewing of the produced requirements. The focus on the possible
values of information flow and whether that flow was a token or stream
greatly aided in the authoring & reviewing of requirements produced from
functional analyses.

A related observation was that if a functional decomposition had been
performed by other methods but did have all information flows
identified, we could refactor it into Miso functions. Doing this
refactoring work often identified missing information flows in the
original functional decomposition of a feature that were either left
implicit by the engineer or forgotten. Although following the Miso
method usually results in more functions than previous functional
analysis methods, each function was both easily justifiable and
allocable to the subsystems assuring us that the level of abstraction
was good.

A benefit of having a whole system functional architecture model is that
it allowed engineers to more easily find the right information flows for
their system. The model acted as a focal point which allowed us to spot
duplications of behavior and, therefore, effort (often due to similar
features developed by different parts of the business). The focal point
the model provided was useful when home working began as it provided a
communication channel for requirements between systems engineers in
different parts of the business that would not have existed otherwise.

The method presented may also be useful for modelling businesses
processes where information flow of such a decomposition maps to the
deliverables in the process. Following the Miso method for describing
business process may provide a 'good fit' for a notation to go with the
points made by Dr Keith Collyer in his paper "Process Models are not
Flow Charts"\[Collyer 2020\] Currently, business process modelling
languages such as ARIS and BPMN are control flow based making the models
created in them flow charts. The phrase "Information is more important
than the way you create it" from his paper chimes with the guiding
philosophy that we followed when developing the Miso method.

References {#references .unnumbered}
==========

\[SMC 2005\] Space and Missiles Center US Air Force (2005) '*Systems
Engineering Primer and Handbook'*

\[NASA 2007\] NASA (2007) *'NASA Systems Engineering Handbook'* Rev 1

\[SEBOK 2020\] Alan Faisendier et al Logical Architecture Model
Development \[online\] Available at:
<https://www.sebokwiki.org/wiki/Logical_Architecture_Model_Development>
\[Accessed 8 May 2021\]

::: {#long-1995-james-e-long-1995-relationships-between-common-graphical-representations-in-system-engineering.-in-5th-annual-incose-international-symposium}
\[Long 1995\] *James E Long (1995) 'Relationships between Common
Graphical Representations in System Engineering*.' In: 5th Annual INCOSE
International
Symposium[\[long-1995-james-e-long-1995-relationships-between-common-graphical-representations-in-system-engineering.-in-5th-annual-incose-international-symposium\]]{#long-1995-james-e-long-1995-relationships-between-common-graphical-representations-in-system-engineering.-in-5th-annual-incose-international-symposium
label="long-1995-james-e-long-1995-relationships-between-common-graphical-representations-in-system-engineering.-in-5th-annual-incose-international-symposium"}
:::

\[Hughes 2000\] John Hughes (2000) '*Generalising Monads to Arrows*' In:
Science of Computer Programming 37

\[Milewski 2015\] Bartosz Milewski (2015) '*Simple Algebraic Data
Types'* Available at:
<https://bartoszmilewski.com/2015/01/13/simple-algebraic-data-types/>
\[Accessed 8 May 2021\]

\[Lipovača 2011\] Miran Lipovača (2011) '*Learn You A Haskell For Great
Good!'* Available at:
https://learnyouahaskell.com/making-our-own-types-and-typeclasses/
\[Accessed 8 May 2021\]

\[Collyer 2020\] Dr. Keith Collyer (2020) '*Process Models are not Flow
Charts'* In: ASEC 2020. INCOSE UK.
