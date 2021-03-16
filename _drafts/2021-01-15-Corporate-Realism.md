---
layout: post
title: "Conway's Law and Collaboration"
date: 2021-01-15
description: What does politics and common sense have to do with engineering? It turns out, quite a lot. Perhaps engineering is not quite as separate from sociology as we'd like to believe.
effort: 10min
tags:
- Systems Engineering
- Corporate Culture
- Sociology
comments: true
---

This blog post is a little different from my previous, heavily theoretical, SysML content. I wanted to get my teeth into a different issue that affects systems engineering, namely how much politics intersects with engineering and how systems engineering may be the only discipline that can provide a means to tackle the problems this causes. Therefore, this post will be dipping into some theory from the world of sociology (*shudder*) to help explain our day to day experiences as systems engineers. 

> Any organization that designs a system (defined broadly) will produce a design whose structure is a copy of the organization's communication structure - *Melvin Conway*

> Hell is a collection of individuals who are spending the bulk of their time working on a task they don't like and are not especially good at. - *David Graeber [On the phenomenom of bullshit jobs​](https://www.strike.coop/bullshit-jobs/)*

Systems Engineering the Organisation
====================================

If your organisation creates a complex system and the architecture is more complex than it needs to be, take a look at your organisation's org chart. Chances are, the org structure will match the system's architecture. You may notice that certain boxes in that architecture have less than ideal interfaces between them, perhaps the information traffic for a set of system behaviours is routed through a middle-man box that has nothing to do with these behaviours. Have a chat with the managers that are responsible for those boxes, odds are, they don't get on. These anecdotal problems are examples of Conway's law in action; the architecture of your business should match that of the optimal architecture for your product else it will result in a sub-optimal product architecture.

The simple-to-state solution to this would be to dissolve the org structure and start from scratch, building your new structure around the optimum architecture for your project. Engineers have an intuition for this fact; how many times have you heard an outsider/new engineer ask "why can't we be more like Tesla (or other startup)?" which is then met by a reply from a longer-in-tooth engineer of "we don't have the luxury of a blank slate". This answer implies the knowledge that, not only do new organisations get the luxury of being able to structure themselves around the optimal project outcome but, established organisations are brittle and inflexible to new challenges.

This point leads us towards the question: what is the cause of the inability for an established organisation to change its product architecture to better meet its customer's needs? The answer lies in turning Conway's law on its head. It is not just that an organisational structure produces a mirror of itself in the product architecture; each subsystem of the product is associated with a sub-management structure in the organisation. Therefore, even a modest change of absorbing one subsystem's functions into others to save money is effectively the act of making that sub-management structure, including its highest managers, redundant.

This shows us that the problem of reorganising a product architecture is actually one of reorganising a company. This is why there are difficulties. Managers who have risen to positions where @@ There is also the problem that in hierarchical structures, the information required for making decisions flows upwards through the lower management structure. This means that 

- Systems are inherently resistant ot change​

The matrix organsiation is one solution to this problem. In a matrix organisation, a company is split into two or more distinct organisational hierarchies; skills groups and projects. The skills hierarchies are responsible for hiring, training, developing best practice for, and managing tools for a pool of specialists. The project heirarchy then "hires" their talent needs from the pools of each talent group. This ensures that organisational structures don't get in the way of @@

Engineers have a tendency to believe that their field is mathematically rational; that there is a *correct* way to do things and that way can be found through individual endeavour. To a certain extent, this is true but, as we have explored, once that solution is found, implementing it is an exercise in organisational politics. While we're at, let's explore some of the more insidious effects of workplace politics upon engineering.

Common Sense
============

The psychoanalyst Jaques Lacan described the phenomenon of the "Big Other" as the commonly held set of rules and knowledge that we use to navigate social situations in day to day life. It forms a sort of "communal ontology" of a society and is often what is referred to as "common sense". Many philosophers, notably Slavoj Zizek and Mark Fisher, have written about how the big other (or common sense) can define which ideas we can and cannot talk about within a certain context. In the corporate space this forms a set of constraints that guide an organisation's engineering (and business) practice. 

In many cases, common sense forms important parts of the social contract in business; "professional behaviour" (a more corporate way of saying common sense) provides us with a set of social rules that allow us to perform business without offending people and even helps us work with people we really wouldn't get on with outside of the walls of the office. Engineers who have worked with others that they *really* don't get on with but---thanks to the unwritten rules of professional behaviour---can still collaborate with can attest to this fact.

There is a dark side to common sense and "professional behaviour" in the work place. Often, common sense is passed down to us by our parents. @@CLASSISMRACISMSEXISM

Another undesirable emergent behaviour of the common sense of hierarchical organisations is that of the mechanism that can cause discrimination to grow and thrive in a hierarchical company. Rising through the ranks of a hierarchy is all about impressing the managers above you. @@

This mechanosm doesn't just create *me too* moments though, it also negatively effects the engineering activities of a company. @@WhiteElephant

Corporate Realism
-----------------

Corporate realism can form one of the largest challenges facing any concerted effort to perform system's engineering within an organisation. You may have come across it yourself within a company where the daily practice of the engineers does not match the written processes. This may be because the written processes are outdated, bad and/or incomplete. Managerial pressure to cut corners (without understanding the cost consequences of doing so) can also be a cause; forcing engineers into creating a physical product before they've had a chance to properly analyse the customers' needs is a relatively common phenomenon. This right-shifting behaviour is often accompanied with the excuse that the design (left-hand-side-of-Vee) work needs to be done quickly so that the project has time to perform the rework from the failed integration and tests. This is, of course, a self-fulfilling prophecy.

Corporate realism is shown in a rather extreme way in the 2000 film American Psycho. __SPOILERS__ In this film, Christian Bales' Patrick Bateman performs a number of increasingly horrific acts before having a breakdown and confessing to his lawyer. The true horror of the film comes when Bateman finds that he has made no impact on his reality whatsoever, the corporate realism of the New York yuppieism completely nullifies evidence of his crimes leaving the audience and Bateman himself questioning whether or not the horror scenes of the movie actually occurred.

We're systems engineers not serial killers (at least I hope not) but many of us have already experienced the maddening alienation of our work being nullified. Often by being disregarded from the process. In one area of an organisation the author worked in, the author witnessed a systems teams work disregarded as the downstream team were told to do their work without the upstream team's requirements. The reason was that the manager wanted results sooner. Hilariously, the downstream team's work was also nullified by team downstream of them in exactly the same manner. David Graeber, in his insightful book *Bullshit Jobs*, brilliantly describes the spiritual damage that one incurs when you are forced to work a job that has no material benefit to the company that you work for. Personally, I think there's an even greater harm to be found in jobs that would be of great benefit to the company *if only* the company would use the output of your labour. I guess you could call these roles *involuntary bullshit jobs*.

Hypernormalisation
------------------

In extreme cases, corporate realism can evolve into a state of hypernormalisation. First described by soviet professor of Anthropology, Alexei Yurchak, hypernormalisation is the state achieved when common sense no longer matches the lived reality. Hypernormalisation was first used to refer to the state of being within the soviet union during the period after the space race. During this time it was obvious to soviet citizens that the USSR was failing; general standards of living were getting worse despite government measures and reports saying otherwise. 

Yet the common sense in soviet thought disallowed mentioning the failures of the system and, more insidiously, speaking about alternatives. This left the soviet people in a state of depressive doublethink; a hopeless state where everyone could see the problems, and mostly, individually, knew the solutions but were unable to voice them in a serious way due to the soviet realism bearing down upon them. It was the end of history and there was no alternative. 

It was the shock of the Chernobyl disaster and Gorbachev's acknowledgement of the system's failings in his perestroika policies that shattered the illusion of soviet "common sense" and brought an end to the soviet era. This paved the way for neoliberalism, the form of capitalism that dominates our world today, to become the new "common sense" in Russia. The author encourages the reader to think of examples in their own experience where hypernormalisation is occuring.

Hypernormalisation in the workplace
-----------------------------------

On the corporate level, experiencing hypernormalisation can be a harrowing experience for engineers. This looks  

Positivity: You're just a negative person, stop being so negative. This is a very effective tactic used by managers and engineers when they want to silence someone. Being tarred as a "negative person"

Exceptionalism: our company is different. T

The death march: This project is doomed from the start, but we've already committed X million for it.

@@

In the words of the architect of neoliberalism himself, Milton Friedman:

“Only a crisis - actual or perceived - produces real change. When that crisis occurs, the actions that are taken depend on the ideas that are lying around. That, I believe, is our basic function: to develop alternatives to existing policies, to keep them alive and available until the politically impossible becomes the politically inevitable.”

Perhaps the best way to implement systems engineering in a large organisation may be to define a coherent and complete process ready for the next big crisis to occur. But even when the crisis comes you may find that the corporate realism you find yourself in refuses to die. And you thought this section couldn't get more depressing?

The False Synthesis
===================

> The light at the end of the tunnel is just the light of an oncoming train. - *Robert Lowell*

An experience that the author has encountered is @@

What is to be done? Organise
============================

Up to this point, this post has been somewhat depressing, I must admit. But there really is a way out of the mess of hypernormalisation in a company. @@