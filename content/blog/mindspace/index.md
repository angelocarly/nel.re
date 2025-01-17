+++
title = 'Mindspace'
date = 2025-01-11T23:48:10+01:00
+++

I've started tinkering with an idea for a project. I call it [mindspace](https://github.com/angelocarly/mindspace).

It will be an attempt at combining technology and my thoughts. An interface between thinking, dreaming, logging and connecting. It might not work out at all, but that is no problem.

The first goal will be to set up a simple way to write down notes from my mobile phone, and store them into a graph database.

From there on I have no clue what to do still. I feel like I need to take my steps to that new place before I can see where to go next.

==========================================

Pt. 2

![](./cover.png)

I've set up a graph database, specifically neo4j for those interested. A graph database is not like an SQL database. It stores its data in what's like nodes and connections.

Currently I have only added nodes. No relations/connections yet. They are:

```
+---------------------------------+
| n                               |
+---------------------------------+
| (:Concept {name: "Cé"})         |
| (:Concept {name: "Paradox"})    |
| (:Concept {name: "Liminality"}) |
| (:Concept {name: "Entropy"})    |
| (:Concept {name: "Idea"})       |
| (:Concept {name: "Freedom"})    |
| (:Concept {name: "Core"})       |
+---------------------------------+
```

I intend to create more nodes and figure out what would be interesting to model. My first thought was to add a field called 'entropy', which might model the 'depth' or the 'stability' of a node.

Here I have added entropy to 'paradox'. I will rate in the range [0,1]. Also 'ent' sounded cooler to me.
```
neo4j@neo4j> MATCH (n {name:"Paradox"})
             SET n.ent = .1
             RETURN n;
+----------------------------------------+
| n                                      |
+----------------------------------------+
| (:Concept {name: "Paradox", ent: 0.1}) |
+----------------------------------------+
```

That's it for now.
