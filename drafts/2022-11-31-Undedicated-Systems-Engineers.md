---
layout: post
title: "On the Phenomenon of 9-5 Systems Engineers"
---

This post describes a phenomenon that I and some other systems engineers that I've spoken too have noticed about our discipline. This phenomenon is entirely anecdotal so I could be working in outlier companies or completely wrong. If this post rings true or false for you, howevever, I'd love to hear from you in the comments to help understand whether my experience is universal in this respect.

My null hypothesis is this: compared to other diciplines of engineering, there are proportionally far fewer *vocational* systems engineers. By *vocational*, I am referring to the idea of engineers who see the subject of their job as more than just what they do 9-5 to pay the bills.

Vocational engineers are those who  spend considerable time outside of their job working on related hobbies and/or contributing to their discipline. Examples are mechanical engineers who restore cars, electronic engineers who automate their homes or software engineers who contribute to open source projects. You know the types---in large companies, they often band together and spend lunchtimes drone racing, soapbox racer building or organising an inter-departmental hackathon. 

Amongst the systems engineering discipline, though, there seems to be far fewer of these vocational types. The systems engineering community is indeed smaller than the other engineering disciplines but is the *proportion* that I'm concerned about. Most other systems engineers that I've worked with would often rather be down in a discipline such as electronics or mechanics.

This post is not an indictment of these 'happenstance' systems engineers---they often do a very good job. However, those that see themselves as systems engineers by *vocation* have an impetus to push the discipline forward---those with an emotional and identitarian investment in the discipline are much more likely to want to make a name for themselves within the community. Therefore, a discipline with fewer *vocational* members loses its soul and will tend to peter out over time as the older vocational engineers die.

So, let's explore some of the aspects of the modern SE environment that may be leading to this phenomenon.

The Systems Engineering Community
---------------------------------

To start trying to answer this question, I want to ask what does the systems engineering community look like? In three words: Old, White, Men. By community, I'm talking about those who engage with the discipline professionally through INCOSE and other groups (I'd also like to point out that my experience is mainly in the UK). Therefore the community can feel exclusionary to those not in that category^[It may also lead to old white men believing that they can get away with abhorrent behaviours.].

The community is also very aerospace and defence focussed. This is understandable as these domains have put the most resources into developing the discipline in the past. However, there are different stakeholder environments and resource streams in other industries that INCOSE-style systems engineering doesn't cover. Although the scope is slowly expanding, those engineers from industries not historically associated with systems engineering may feel unwelcome in these spaces.

### Paternalism

Perhaps because of the academic landscape, the demographics of the community or the industries that dominate the discipline, systems engineering has a problem with paternalism.

What do I mean by this? I'm referring to the general feeling that

- Lack of dissemination of systems thinking and theory
- Lots of dumbing down into frameworks by well meaning 
- Circular causation with the lack of passion in SE?
- Training becomes paternalistic

Systems Engineering within Companies
------------------------------------

Systems engineering is a job. Without stating the obvious too much, the majority of systems engineering occurs within engineering companies. Because it involves complex projects, there are very few, if any, hoobyist systems engineering endeavours. Therefore we shoud seek to understand what systems engineering looks like in practice under capitalism if we wish to understand the state of the discipline.

For one reason or another, there is a lack of systems engineering course ant universities in the UK compared to the number of vacancies within the discipline. Some companies have, admirably, risen to this challenge and hire graduates/apprentices with a view to training them in good systems practice from scratch. I myself was lucky enough to find myself on such a graduate scheme.

This brings with it the risk that these new hires will not enjoy the discipline that they have entered with no prior experience of. Personally, I had no idea what systems engineering was when I got onto my summer placement in it. It was, perhaps, pure luck that I would find something that I'm so passionate about so early in my career. Some of my contemporaries found that systems was not for them. Some are still systems engineers, but many have defected to other disciplines, industries or vocations.

Perhaps this willingness to train systems engineers from scratch in these few companies has lessened the demand on SE as an undergraduate degree. There seems to be a high attrition rate in all disciplines of engineering at the moment; many engineers that I know, including myself, have found that there is a strong pay and progression incentive to move from company to company. HR departments really do seem to favour hiring externally than promoting and recognising internal talent. External hires tend to be better remunerated than those who are internally promoted too. This leads me to explore a special type of company that eschews internal development almost entirely.

### Parasite Companies

The demand for systems engineers is still high, perhaps more so than other disciplines today. This is exacerbated by the rise of what I call *parasite companies*. *Parasite Companies* are those that refuse to invest in their own staff. Often consultants, these companies hire in new talent whenever they need it to fulfil a contract but see training-to-fit as too big an overhead. 

These companines are typified by a low training budget and high turnover of staff, especially amongst those in their early career who feel as though their careers are being stunted before they've even begun. Companies like this can be effective machines for destroying a budding systems engineer's passion.

These parasite companines seem to outnumber those that are willing to train systems engineers and therefore exert a pull factor on systems engineers out of the companies that do invest in staff skills. However, there's an even bigger proportion of the SE employment space that dominates in industries such as automotive, those that have identified the problem but don't know quite how to solve it. Let's call these the **Electrical Integrators**. 

### Electrical Integrators

Most resources about systems engineering prominently discuss the problems that not using SE techniques on complex projects cause. Simply put, without SE, your complex system is unlikely to do what you wanted it to do when you plug it together. This could be the behaviours that you wanted don't exist or you get extra behaviours that a thouroughly undesirable, sometimes even dangerous. These problems occur at the integration stages of a project on the right hand side of the Vee.

Companies that have relatively low levels of systems awareness within the ranks of management identify this problem and realise that it requires fixing. However, without the systems knowledge required, they often hire people to fix these issues at the electrical integration stage. Due to this work being on physical end of the process, engineers with strong mechatronic but little systems experience are hired. These engineers effectively become superhero firefighters (see next section) solving problems as they're discovered in tests (or even in production!).

However, companies with this sort of culture rarely have good requirements processes or good traceability from tests back through the design to customer need. Therefore, tests tend not to be about verifying designs against requirements or validating against customer need---they're more of a shotgun approach to individual test engineer's best guess at what a customer might do with the system and what they might want to happen. Such testing regimes are akin to trying to catch water in a wicker basket when it comes to validation.

Companies with this sort of systems engineering practice can be effective at solving problems with a dedicated, intelligent and seasoned team of integrator-heroes. However, the same problems will appear again and again across projects when their source is at the  start of the Vee cycle. As complexity increases, these companies will find their costs of rework and testing skyrocketing. The Electrical Integrators antipattern is often coupled with the box-tickers (see later) problem when a well meaning manager starts a systems department to try and dissolve the problems to the chagrin of the rest of management.

As these electrical integrator type systems engineers are working far off the right hand side of the Vee, they tend to see systems engineering theory as not applicable to their job. These engineers are therefore unlikely to engage with the wider community and don't identify with being a systems engineer. If they work in a company with a box-ticking systems department, they may even build a resentment to systems engineering for allowing the mess that they have to clean up.

### Box Tickers

Finally for this section, I have to talk about the most soul-crushing places a systems engineer can find themselves. In the a box-ticking excercise. Perhaps you've found yourself in this position---the system under design is complete and some systems documents are required to be produced so that you can pretend that you followed a systems approach to the customer.

Invariably, the systems work will find problems with the design, that it doesn't meet the customer requirements or that its not even close to an efficient design for the problem at hand. The systems team may then be pressured to forming their work to met the design in the middle--to pretend that this uneconomical design was the best one all along.

Even worse, some "systems engineers" are forced to use requirements and/or SysML to document the existing design at a sufficient level of abstraction to satisfy regualtors and customers. Unlike systems engineers who actually get to perform some inconsequential systems thinking, these engineers don't even get the cynical consolation of getting to say "I told you so" when the project doesn't go as well as hoped. 

Projects that follow either of the above approaches are often hidden by a validation method that I like to call *Validation by Intimidation*. This is where a customer representative is pressured into accepting a product/service despite it not meeting their needs. This is usually due to the sunk cost fallacy where the customer doesn't want to look incompetent by letting a project overrun that may have been running for decades and/or costing millions of euros. I would like to explore this phenomenon in a later post as I believe that its a big factor in why bad systems engineering gets a pass. 

The experience of being a box-ticker is soul-crushing. David Graeber, in his incredible work of modern anthropology *Bullshit Jobs*, notes that forcing people to do work that has no effect on the real world is subjecting them to moral, spiritual and psychological harm. Graeber points out in his definition of a bullshit job that:

> Bullshit jobs are not just jobs that are useless or pernicious; typically, there has to be somd degree of pretense and fraud involved as well. The jobholder must feel obliged to pretend that there is, in fact, a good reason why her job exists, even if, privately, she finds such claims ridiculous.

The above problem is exacerbated for systems engineers as, especially when our work is inconsequential, we're told to not complain because "at least this project is doing systems engineering". This reframes any debate on how our systems engineering can be more effective into one on the existence of the systems engineering team. It often hides the sinister undertone of "we wouldn't have a systems team if X stakeholder/higher manager didn't want one. Don't rock the boat: be grateful that your job exists at all.". In this way, box-tickers are often constantly reminded that others don't believe that there job holds real value annd this constant reminder leads many to internalise this belief.

As someone who, at certain points in their career, has been in this position, this is an incredibly demoralising place to be. Buliding part of your identity around a subject that you yourself suspect is not actually valuable is not something many people want to do. Those that want to continue in this vein might do so only by believing that they're "gaming the system" and drive them to become firefighers who climbe the greasy pole to get out of systems. Personally, I believe that the prevalence of the box-ticker systems engineer may be the most harmful cause of the lack of vocational systems engineers.

### The Management Conveyor

Systems engineers can often find themselves within a privileged position within projects. Along with project management, systems engineering is a central part of a well-functioning project and therefore the systems engineers tend to be well acquainted with all of the myriad teams and tasks within a project. This means that, when managment positions open up within a project, systems engineers are well placed to take these positions. This can make systems engineering an attractive field for engineers who want to climb the greasy pole over other vocations.

This problem can be exacerbated if the systems team is firefighting or a box-ticker department as little systems theory knowledge is needed to perform these roles. People skills become paramount as you can effectively firefight by facilitating 'task forces' of engineers from affected systems. Sustaining a box-ticking department can be done effectively by a charismatic engineer adept at buzzword bingo---no deep knowledge of systems theory required. Good people skills are very useful for effective systems engineering but, if not balanced with good systems praxis, can mean that systems team hiring and promotions select against effective systems engineers and produce an envirinment where systems engineering is seen as management conveyor rather than a discipline of engineering with a strong theoretic background.

### It's just common sense

The final anti-pattern that I want to cover is the perception that systems engineering is "not a real engineering discipline". The phrase that I think typifies this perception is the phrase "Systems engineering is just common sense". Apart from the fact that appealing to common sense is often used as justification for some of the most objectionable views in our society, common sense is hard to define. Common sense seems to be the preserve of middle-aged white men---the people who make up the majority of british managers. In fact, our society attributes oodles of common sense to those middle-aged, no-nonsence, "I'm just saying what everyone's thinking" types.

When we say "systems engineering is just common sense" these manager types (especially those with little knowledge of systems thinking) think "I've got a lot of common sense" which leads them to deduce that they must be really good at systems engineering. I've heard people with this attitude claim that systems engineering is not real engineering as it has no theoretical or mathematical foundation.

I believe that this attitude is a cause to burden of simplification that systems engineering suffers more than other disciplines. As systems engineering is "just common sense" applying theory and maths to its practice is seen by these people as an act of over-complication. I've been in meetings where the systems team has been told to simplify their SysML output but the manager is happy to let the electrical team talk fourier transforms. Perhaps this issue is caused by the lack of systems engineering education in combination whith the attitude that comes with the privilege of being a white and/or middle class and/or man typified by "If I don't understand it or already know it, it must either be unimportant or made up". I certainly think that this problem is exacerbated by the paternalism problem mentioned before---when our discipline is effectively hiding our theoretical basis from us practitioners, it becomes easier for people to misconstrue that as a lack of theory.

Conclusion
----------

I believe that the factors explained above have culminated in a 'general vibe' that systems engineering is not a vocation of real consequence which acts as a barrier that ultimately reduces the number of systems engineers who make the discipline a large part of their identity. This is partly due to there being a number of filters already around engineering for class and gender as well as the lack of systems education and awareness in education before masters degree level or graduate scheme education. After this, the factors above push systems engineers away from engaging with the praxis of the discipline and prevent people from feeling that they can improve it and/or identify with it.

### How might we go about fixing this?

To reiterate the premise in different terms, systems engineering as a discipline needs to foster a greater number of *vocational* systems engineers to ensure that it can innovate and solve the ever-complex problems of the future. Above I have explored what may be causing this perceived problem, so now its time to suggest some ways forward to fixing it. Below are a few ideas that I've had on the topic but I'd welcome any challenges to these ideas in the comments.

#### Hackathons & Collaborative Development 

Competitions are a great way to trial new ideas, methods etc. in a critical but fun environment. Hackathons embody this 

SCiO, a systems thinking practitioners' group, has a great bimonthly online development session where systems practitioners can bring real-life or interesting problems. These sessions contain experts in the field who are more than happy to apply their knowledge and explain concepts to less experienced practioners. I thoroughly recommend that systems engineers join SCiO as the knowledge of systems theory that the experienced members hold is invaluable. You can join here: (https://www.systemspractice.org/membership)[https://www.systemspractice.org/membership].

#### Better Communities

A sense of belonging  

Last year, Zsolt Sandor started a systems engineering professionals Discord server that has become an incredibly vibrant community for discussing practice and theory in systems engineering.@@

Of course, any community comes with the risk of hardening into an exclusionary clique. It is therefore imperative that we must identify and 

#### Democratisation of Praxis

As mentioned in previous posts, I'm personally tinkering away at an MBSE language that uses category theory and dependent type theory as a base. My understanding of category theory is through the lens^[figurative, not Van Laarhoven or Profunctor!] of programming languages such as Haskell where category theory allows programmers to understand and discover powerful abstractions to solve real world problems. Let's be like Prometheus and share our knowledge rather than fervently clutch it to our chests as a secret weapon to assert dominance at the next INCOSE conference banquet.