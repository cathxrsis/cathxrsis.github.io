---
layout: post
title: "Validation Through Intimidation"
---

This post is a short one to start the year and is about an anti-pattern that I have observed within systems engineering projects. I sincerely hope that this pattern is not endemic, though I suspect its more prevalent in the discipline than we'd like to admit. This anti-pattern is a possible mechanism to the prevalence of project cost & time overruns and complex systems often being a disappointment to their customers. I call this anti-pattern **Validation Through Intimidation**.

Validation
----------

Firstly, validation is the name given to the process of ensuring that the model that the engineering project has (be that the requirements or the design) is an accurate and precise enough description of---or solution to---the customer's problem in the environment. This is opposed to verification which is the process of ensuring that our design is correct against our requirements. A system can pass all verification tests but still be invalid if we have misunderstood the customer needs (or they have changed during the course of the project beneath our understanding). Where verification is a process internal to a project to ensure coherence, validation is ultimately external as it requires input from the stakeholders and knowledge of the contextual environment of the system under design.

Validation can only be conducted in conjunction with the customer. Only the customer truly knows their own desire and a product/service can only truly be considered valid once the customer needs are fulfiled in reality. However, customers are rarely have a single coherent need. A set of customer requirements will be constructed from a set of desires filtered through each other which may end up with a bit of a contradictory mess or, worse, a requirement set that doesn't reflect the environment and needs on the ground.

An example of this is systems engineering tools procurement in large companies. The only people who have the authority to procure the expensive tools that systems engineers need are those who are usually removed enough from the systems engineering reality that they do not have the knowledge required to understand the systems engineers' needs. The systems engineers expressed needs are therefore garbled or disregarded by these managers and the tool that is finally procured does not meet the needs of the engineers who will actually use it.

Organisational Pressures
------------------------

The above problem is compounded by the desires of the management chain within a customer @@ Afterall, noone is ever fired for buying IBM...

The sunk cost fallacy is a well documented phemonemon of human behaviour. As quoted in wikipedia:

> (People demonstrate "a greater tendency to continue an endeavor once an investment in money, effort, or time has been made.")[https://en.wikipedia.org/wiki/Sunk_cost]

Basically, we are irrationally predisposed to put more time, effort and money into projects that we've already put a lot of resources into despite the fact that the best course of action in these cases would be to abort the project. One cause of this is the fact that aborting a failing project is tantamount to admitting the project is failing. We don't like being wrong, even if, at the point where the incorrect decision was made, there was insufficient information for us to know that the project would fail.

Intimidation
------------

I often jokingly describe the phenomenon of Validation by Intimidation to my colleagues using the example of locking your customer representitive in a room with copious coffe but no food or access to the toilet, only letting them out once they've signed off the validation paperwork. The truth is, the pressures on the customer representative from their own organisation to sign off the paperwork are powerful enough to force their hand.

Unfortunately, systems engineering organisations may be aware of this fact and can play it to their advantage. Given the organisational pressures that exist on the customer and therefore the fact that these projects will most likely be accepted, big projects are incentivised to reduce engineering effort and maximise profit.

This is especially true if the organisation in question has a monopoly over the product/service, is a large donor to the political party in power or has a powerful union that will pressure the government into buying from them. Think of the hold that a shipbuilding company may have over a government if its the only shipbuilder in the country and happens to be the only large employer in a city that votes for the party in power.

This is a monopsony-monopoly dialectic, neither can buy from nor sell to anyone else, the quality of requirements, products and services suffers and the resentment between the two organisations continues to grow. 

The customer is left feeling helpless and ultimately, the end users have to work around their desires not being met. Here are some examples: G4S security at the 2012 Olympics; the General Dynamics Ajax APC; The UK COVID Test and Trace system delivered by Serco amongst others; the list goes on. I would put money on these companies continuing to receive contracts going forward.

Possible solutions
------------------

As the 

What do you think? Does the above explanation fit with your experiences? Do you think the proposed solutions are practical, workable or just plain wrong? Please leave any thoughts that you have in the comments below! 