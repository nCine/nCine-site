---
title: Job System
description: Efficient multi-threaded task scheduling for your game
slug: job-system
weight: 9
featureimage: https://ncine.github.io/img/features/jobsystem.png
---

![Tracy capture of the job system](/img/features/jobsystem.png)

- Lock-free work-stealing queue with parent–child jobs, continuations, and parallel loops
- CPU-topology aware thread pool with automatic affinity assignment
- Fast user-space semaphore for efficient thread synchronization
- Batch job submission for reduced scheduling overhead
- Built-in debug tools: job state tracking, detailed logging, Tracy zones, statistical counters
- Public API for direct access to the job system
