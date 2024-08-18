---
layout: post
title: "Validation Through Intimidation"
---

This post is a short one to start the year and is about an anti-pattern that I have observed within systems engineering projects. I sincerely hope that this pattern is not endemic, though I suspect its more prevalent in the discipline than we'd like to admit. This anti-pattern is a possible mechanism to the prevalence of project cost & time overruns and complex systems often being a disappointment to their customers. I call this anti-pattern **Validation Through Intimidation**.

<!--more-->

Validation
----------

Firstly, validation is the name given to the process of ensuring that the model that the engineering project has (be that the requirements or the design) is an accurate and precise enough description of---or solution to---the customer's problem in the environment. This is opposed to verification which is the process of ensuring that our design is correct against the internal requirements. A system can pass all verification tests but still be invalid if we have misunderstood the customer needs (or they have changed during the course of the project beneath our understanding). Where verification is a process internal to a project to ensure coherence, validation is ultimately external as it requires input from the stakeholders and knowledge of the contextual environment of the system under design. Verification is therefore the inductive and deductive process of ensuring internal coherence of project where validation is the abductive process of ensuring coherence between the project and the wider environment.

Validation can only be conducted in conjunction with the customer. Only the customer truly knows their own desire and a product/service can only truly be considered valid once the customer needs are fulfilled in reality. However, customers are rarely have a single coherent need. A set of customer requirements will be constructed from a set of desires filtered through each other which may end up with a bit of a contradictory mess or, worse, a requirement set that doesn't reflect the environment and needs on the ground.

An example of this is systems engineering tools procurement in large companies. The only people who have the authority to procure the expensive tools that systems engineers need are those who are usually removed enough from the systems engineering reality that they do not have the knowledge required to understand the systems engineers' needs. The systems engineers expressed needs are therefore garbled or disregarded by these managers and the tool that is finally procured does not meet the needs of the engineers who will actually use it.

Organisational Pressures
------------------------

The above problem is compounded by the desires of the management chain within a customer---again, often the customer does not have enough information (whether through incompetence or the law of requisite variety) to make a fully informed decision on a procurement. Sometimes that information is clouded by advertising propaganda (after all, no one is ever fired for buying IBM...). Traditionally, customers tend to commit large sum of money in an initial contract negotiation with the supplier. The requirements in this negotiation are the ones that the supplier will commit to even if the customer needs are likely to change in the future.

Therefore, an initiation of a project always comes with the risk that the supplier cannot meet your needs and you effectively lose that large chunk of cash. There is nothing wrong with this---as the old saying goes "There's nothing wrong with being wrong but everything wrong with staying wrong". Individuals who are managing the project on  the customer side though are often pressured into "staying wrong" due to the sunk cost fallacy.

The sunk cost fallacy is a well documented phenomenon of human behaviour. As quoted in Wikipedia:

> [People demonstrate "a greater tendency to continue an endeavour once an investment in money, effort, or time has been made."](https://en.wikipedia.org/wiki/Sunk_cost)

Basically, we are irrationally predisposed to put more time, effort and money into projects that we've already put a lot of resources into despite the fact that the best course of action in these cases would be to abort the project. One cause of this is the fact that aborting a failing project is tantamount to admitting the project is failing. We don't like being wrong, even if, at the point where the incorrect decision was made, there was insufficient information for us to know that the project would fail. This thinking may apply to the person making the decision to sign a contract with a supplier or their management, in which case, they may be pressured to continue with that supplier at risk to losing their job---heavily disciplinarian work cultures often incentivise people to hide problems from their superiors and lead to the [Thermocline of Truth](https://www.cfgs.org.uk/managing-performance-and-the-thermocline-of-truth). 

Intimidation
------------

I often jokingly describe the phenomenon of Validation by Intimidation to my colleagues using the example of locking your customer representative in a room with copious coffee but no food or access to the toilet, only letting them out once they've signed off the validation paperwork. The truth is, the pressures on the customer representative from their own organisation to sign off the paperwork are powerful enough to force their hand.

Unfortunately, systems engineering organisations may be aware of this fact and can play it to their advantage. Given the organisational pressures that exist on the customer and therefore the fact that these projects will most likely be accepted, big projects are incentivised to reduce engineering effort and maximise profit.

This is especially true if the organisation in question has a monopoly over the product/service, is a large donor to the political party in power or has a powerful union that will pressure the government into buying from them. Think of the hold that a shipbuilding company may have over a government if its the only shipbuilder in the country and happens to be the only large employer in a city that votes for the party in power.

This is a monopoly-monopsony dialectic, neither can buy from nor sell to anyone else, the quality of requirements, products and services suffers and the resentment between the two organisations continues to grow. 

The customer is left feeling helpless and ultimately, the end users have to work around their desires not being met. Here are some examples: G4S security at the 2012 Olympics; the General Dynamics Ajax APC; The UK COVID Test and Trace system delivered by Serco amongst others; the list goes on. I would put money on these companies continuing to receive contracts in the future despite these failures.

Possible solutions
------------------

As the anti-pattern described here is mostly a manifestation of the sunk cost fallacy, one possible solution is to build a just culture within your organisation and spread awareness of the sunk cost fallacy. Procurement teams and management need to be able to feel that they can cut the organisation's losses when information arises that shows them that a project is failing. This way of working should be encouraged and measures should be put in place to ensure that the organisation can work around having to abort the plan. 

A second possible solution is for the supplier to work according to empiricism and keep frequent communication with the customer. As with some process approaches like Scrum, the customer is engaged to validate an evolving representation of the final product/service in frequent reviews. This creates a validation control loop which can steer the project towards the customer needs with each review. Balance needs to be found between the length of time it takes to develop a reviewable representation in the project and the frequency of which the customer's needs change to ensure that this loop isn't driven at resonance. This approach can also be susceptible to *Gaffer Dazzling* where a supplier keeps a separate, unrepresentative version of the project going to misinform the customer.

What do you think? Does the above explanation fit with your experiences? Do you think the proposed solutions are practical, workable or just plain wrong? Please leave any thoughts that you have in the comments below! 
