# Microservices
## Implementation Details
[Justin VanWinkle](https://www.jvanwinkle.com)
[@FundamentalDev](https://twitter.com/FundamentalDev)

***
# What are Microservices?

---
## Monoliths

System is all-in-one
todo: image of a block

```notes
* Lots of debate on meaning.
* At simplist: A large, comprehensive codebase with competing interests.
```

---
## Microservices

Functionality is all-in-one
System is comprised of multiple microservices
todo: image of block vertically sliced

```notes
Own SLA with vertical slice.
Represents a business function
```

---
## Nanoservices

Functionality is divided
todo: image of a block with narrower vertical and horizontal slices

```notes
Trading benefits for latency, cost, and complexity.
```
***

***
# Microservice Boundaries

---
## Business Unit

todo

---
## Own Your SLAs

todo
***

***
# Where to Deploy

---
## Depends on your needs.

* Self-Hosted
* Cloud

---
## Azure Offerings

1. AKS
1. ACI
1. App Service for Containers
***

***
# Technologies for Microservices

Note: 
These aren't required for microservices.
They do assist with implementations details.

---
## Jenkins

---
## Azure DevOps

---
## Docker

```notes
There are others, but Docker makes the most sense except for unicorns
```

---
## Kubernetes
```notes
There are others.  Kubernetes is they way for non-unicorns.
My Docker Swarm experience.
```
***

***
# Transitioning to Microservices

---
## Start small and iterate

---
## Monumetal undertaking.

---
## Eat an Elephant 1 bite at a time.
***

***
# Iteration 1 (Extraction)

---
## Define Services

* Identify verticals in current code

---
## Extract Services

* Ensure functional parity

---
## Automate

CI/CD Pipeline should:

* Build
* Test
* Release
* Provision Infrastructure

---
## Deploy Services

* Keep it simple.  No extra tech.
* Phase out replaced parts.

---
# Iteration 2 (Containerization)

---
## Write Dockerfile

Dockerfile can define:

* Build
* Test
* Final container image
* And more!

---
## Select Platform

* Container Instance
* App Service
* etc...

---
## Refactor Infrastructure

Replace current platform with one that runs containers.

---
## Modify CI/CD Pipeline

Call `docker build`

---
## Deploy

Combat wip (the silent killer)!

---
# Iteration 3 (Orchestration)

---
## Refactor Infrastructure

todo

---
# The End

[\@FundamentalDev](https://twitter.com/FundamentalDev)

[https://www.jvanwinkle.com ](https://www.jvanwinkle.com/)
