---
title: Microservices
subtitle: Details of a Proper Implementation
author: Justin VanWinkle

---

# What are Microservices?

## Monoliths
System is all-in-one
todo: image of a block

## Microservices
Functionality is all-in-one
todo: image of block vertically sliced

## Nanoservices
Functionality is divided
todo: image of a block with vertical and horizontal slices

# Microservice Boundaries

## Business Unit

## Own Your SLAs

# Where to Deploy
Depends on your needs.
* Self-Hosted
* Cloud

## Azure Offerings
1. AKS
1. ACI
1. App Service for Containers

# Technologies for Microservices
These aren't required for microservices.
They do assist with implementations details.

## Docker

## Kubernetes

# Transitioning to Microservices
Start small and iterate
Monumetal undertaking.
Eat an Elephant 1 bite at a time.

# Iteration 1
Extraction

## Define Services
* Identify verticals in current code

## Extract Services
* Ensure functional parity

## Automate
CI/CD Pipeline should:
* Build
* Test
* Release
* Provision Infrastructure

## Deploy Services
* Keep it simple.  No extra tech.
* Phase out replaced parts.

# Iteration 2
Containerization

## Write Dockerfile
Dockerfile can define:
* Build
* Test
* Final container image
* And more!

## Select Platform
* Container Instance
* App Service
* etc...

## Refactor Infrastructure Code
Replace current platform with one that runs containers.

## Modify CI/CD Pipeline
Call `docker build`

## Deploy
Combat wip (the silent killer)!

# Iteration 3
Orchestration

## 

# The End

[\@FundamentalDev](https://twitter.com/FundamentalDev)
[https://www.jvanwinkle.com ](https://www.jvanwinkle.com/)
