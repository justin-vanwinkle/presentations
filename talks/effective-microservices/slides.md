# Effective Microservices
[Justin VanWinkle](https://www.jvanwinkle.com)
[@FundamentalDev](https://twitter.com/FundamentalDev)
```notes
This talk is intended to demonstrate that you can't just start implementing microservices without preparation and understanding of what makes them effective.
```
***

## Defining "Effective"
```notes

```
---
### Minimal Outages
```notes

```
---
### Fast Response Times
```notes

```
---
### Cost Effective
```notes

```
---
### Easy Deployments
```notes

```
---
### Ability to Deploy Regularly
```notes

```

***
***

## Defining "Microservice"
```notes

```
---
### Monolith
```notes
Like a large object that has been carved into shape.
Intersection/conflict between business requirements.  Competing interest in overlapping areas. Marketing changes break finance features or change business rules.
```
---
### Nanoservice
```notes
Like free-form legos.
Each lego is generic in design.  This means you are building services for tasks. (Retrieve song information - can be shared by other services that call it)
Services depend on services depend on services.  Debugging by tracing is terrible.  SLAs are terrible.  Cost is terrible. 
```
---
### Microservice
```notes
Yes, it is SOA.  But it is a specific subset of SOA.
Like a lego kit.  Each lego is shaped to serve a specific purpose in the bigger picture.
Each "specific purpose" is a business requirement. (Play music and search for music -- these can use the same modules, but should individually and independently be responsible for retrieving title and description; no call to a shared service.)
The "bigger picture" is the business as a whole.
```

***
***

## Gotchas
```notes

```
---
### Service Boundaries
```notes

```
---
### Automation
```notes

```
---
### Logging
```notes

```
---
### Monitoring
```notes

```
---
### Team Structure
```notes

```
---
### Org Structure
```notes

```
---
### DevOps Culture
```notes
Note "culture".
Not a DevOps guy.
Not a DevOps department.
A culture shift with shared buy-in.
```
***
***
## Tools
```notes

```
---
### DevOps
```notes
Complete CI/CD
* Azure DevOps
* GitHub Pipelines
* Jenkins
```
---
### Configuration as Code
```notes
Version control
Change tracking
Audit logging
```
---
### Infrastructure as Code
```notes
Version control
Change tracking
Audit logging
```
---
### The Cloud
```notes
Lots to take advantage of:
* Autoscaling
* Monitoring
* Simplicity of setup and configuration
```
---
### Docker
```notes
All-in-one packaging
Reproducability
```
---
### Kubernetes
```notes
Scaling
Redundancy
Orchestration
```
***
***
## Creation Process
```notes

```
---
### 0. Plan Boundaries
```notes

```
---
### 1. Write Minimum Viable Service
```notes

```
---
### 2. Implement DevOps
```notes
Codify Infrastructure
Codify Configuration
Build CI/CD Pipeline
```
---
### 3. Containerize
```notes

```
---
### 4. Orchestrate
```notes

```
***
***
## Key Takeaways
```notes

```
---
### Automate Everything
```notes
Build
Test
Release/Deploy
Infrastructure
Configuration
```
---
### Codify Everything
```notes
Service
Infrastructure
Configuration
Build
Deploy
```
---
### Test Everything
```notes
Load Test early and often
Acceptance test
Unit Test
Integration Test
Shift testing left in schedule
```
---
### Monitor Everything
```notes

```

***
***
## Next Steps
```notes

```
---
### Literature
```notes
DDD
DDD Quickly
MSFT Docs
```
---
### Reach Out
```notes

```
---
### Follow Me
```notes

```
***
