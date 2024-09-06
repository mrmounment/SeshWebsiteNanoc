---
parse_erb: true
---

# Intro

Although our sessions aim to teach you most of the skills you'll need to become an ethical hacker, it's good to have a core understanding of the basic concepts, tools, and techniques before some of our more advanced sessions!

These *fundamental skills* include:

- understanding how requests over the internet (*HTTP Requests*) are structured
- understanding how to navigate Windows and Linux machines using a *Command Line Interface*
- the use of core tools such as port scanners and web proxies

We will aim to teach these skills to you in person in the first few sessions of the semester - for example, in 2021 we have an *Introduction to Web Hacking* session in Week 2, and an *Operating System Security* session in Week 5.

However, if you can't make our first sessions or simply want a refresher, this series will be perfect for you!

As the semester continues, we will cover more advanced topics and eventually progress to hacking some machines from start to finish! By then it will be useful to know the basics so you can keep up with demos and focus on the trickier concepts.

# How to use this series

There are several key skills in this series, each within a category (e.g. *Linux* or *Web*). Each skill has an individual page in the wiki, containing:

- a short piece of reading that goes over the basics of the skill
- example commands and screenshots of the skill in use
- a cheatsheet of commands you may want to use
- a short worksheet, with some self-assessed activities you can use to reinforce what you've learned

Where appropriate, we may also post short video demos or a link to an interactive exercise that you can try. We will also always try to provide links to extra activities on other platforms you can use to test your skills.

Remember, these are the fundamentals you'll need for each stage - we don't expect you to be able to own a system after reading all the pentesting lessons, but you will need to know them if you set out to do one on your own. We'll teach you skills regarding specific exploits in the relevant sessions.

# Complete list of categories covered

<%= wiki_list_section @item.identifier.components[1..-2].join("/") %>