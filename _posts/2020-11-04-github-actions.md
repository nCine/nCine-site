---
layout: post
title: C.I. migrated to GitHub Actions
subtitle: Decommissioning Azure Pipelines for a more integrated solution
tags: [News]
---

All nCine projects are now continuously integrated using [GitHub Actions](https://github.com/features/actions) workflows.
The old [Azure Pipelines](https://dev.azure.com/encelo/nCine/) setup has been disabled and it will not be used anymore.

![GitHub Actions](/img/posts/github_actions.png "GitHub Actions"){: .center-block :}

With this migration, the C.I. is now more integrated with the code as everything is accessible from GitHub.
For example, have a look at the [nCine](https://github.com/nCine/nCine/actions) actions page showing the building workflows.
You will also notice the new [CodeQL](https://github.blog/2020-09-30-code-scanning-is-now-available/) workflow and status badges in the [README.md](https://github.com/nCine/nCine/blob/master/README.md) file.

There is also another news related to building the source code: the `develop` branch does not exist anymore.
It is a transition from the [Git Flow](https://nvie.com/posts/a-successful-git-branching-model/) model to [GitHub Flow](https://guides.github.com/introduction/flow/).

Improvements will appear in feature branches: they will be pushed on GitHub and updated regularly.
Every feature branch will have one or more accompanying issues with explanations, instructions, and user comments.
This change will allow for a broader testing phase, a transparent development process, and clearer tracking of progress.
