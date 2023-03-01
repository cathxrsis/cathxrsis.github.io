---
title: Antipatterns
---

This section of the website contains a list of anti-patterns that I have encountered in my time as a systems engineer and the means by which they can be avoided.

# Goods Fetishism
The tendency for systems engineers (and engineers in general) to focus solely on the *thing* that is under development and not *what it does*. Another way of putting it is that engineers tend to forget that they still have some responsibility for a system once its in the customer's hands. If it fails, there's often a warranty bill or some rework required so that the customer is not out of a capability. This tendency can be solved by switching the engineering mindset to one of providing a *service* to the customer of a capability and therefore acknowledging that we are responsible for maintaining that capability.

# Arborescence

The tendency for system architecture to focus on the containment hierarchy of functions or elements rather than the many other, often far more important, relationships that the system elements have with each other. The solution to this problem requires a rebalancing of the importance of relationships and ridding ourselves of the *tree* analogy for systems. Instead, we should think of our systems as complex webs or networks (Rhizomes if you will).

# Validation through Intimidation

The phenomenon where stakeholders sign off on systems that do not meet their needs due to external pressure. This may be because their job or reputation is at risk if they don't sign-off on the system. Often closely coupled with and an outcome of the sunk cost fallacy.
