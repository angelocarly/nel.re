+++
title = 'Database'
date = 2025-01-17T23:48:10+01:00
+++

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

PS: I can access the databases shell via ssh on my phone! So I can log things in the wild :D

That's it for now!
