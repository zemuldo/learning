![](intro.png)
# A Kubernetes Course

Used in this series are [Kubernetes](https://kubernetes.io) version 1.15 and [Minikube](https://kubernetes.io/docs/setup/learning-environment/minikube/) 1.2.0. The information here comes from several resources mainly [Kubernetes official docs](https://kubernetes.io/docs) and [Google Kubernetes engine docs](https://cloud.google.com/kubernetes-engine/docs/). We will also use [Google Kubernetes Engine (GKE)](https://cloud.google.com/kubernetes-engine), [Amazon Elastic Kubernetes Service (EKS)](https://aws.amazon.com/eks/) and [Azure Kubernetes Service (AKS)](https://azure.microsoft.com/en-in/services/kubernetes-service/) as the main managed services for Kubernetes we want to understand at the end of the course.

I will attach several links in this series for your further reading and curiosity but the content here also has enough to get you going just fine.

We will also use NodeJS for our REST API applicationnnnnn and ReactJS for our frontenddddddd. You will only deploy as we are not learning Node or React. Things will be the same when using any other runtime like Ruby, Python, Elixir etc.

## The Journey

During this series, we will study Kubernetes covering the following Topics:

1. Introductions - Definitions, History, Architecture - Part 1.
2. [Minikube](https://kubernetes.io/docs/setup/learning-environment/minikube/) and [Kubectl](https://kubernetes.io/docs/reference/kubectl)- Part 1.
3. [Workloads](https://kubernetes.io/docs/concepts/workloads)- Part 2
4. [Services and Service networking](https://kubernetes.io/docs/concepts/services-networking) - Part 3.
5. [Storages ](https://kubernetes.io/docs/concepts/storage)- Part 4.
6. [Configuration ](https://kubernetes.io/docs/concepts/configuration)- Part 5.
7. [Cluster Administration](https://kubernetes.io/docs/concepts/cluster-administration) - Part 6.
8. [Security](https://kubernetes.io/docs/concepts/security) and [Policies ](https://kubernetes.io/docs/concepts/policy)- Part 7.
9. [Scheduling ](https://kubernetes.io/docs/concepts/scheduling)- Part 7.
10. [Extending Kubernetes](https://kubernetes.io/docs/concepts/extend-kubernetes) - Part 8.

## Let's get started!

[Kubernetes](https://kubernetes.io/) popularly written as *k8s* is an [open-source](https://en.wikipedia.org/wiki/Open-source_software) [container](https://en.wikipedia.org/wiki/Operating-system-level_virtualization) [orchestration](https://en.wikipedia.org/wiki/Orchestration_(computing)) system for automating [application](https://en.wikipedia.org/wiki/Application_software) deployment, scaling, and management using containers. Kubernetes was originally developed by Google and later open-sourced with the first release in 2014 and is at the time of writing this article managed by [Cloud Native Computing Foundation](https://en.wikipedia.org/wiki/Cloud_Native_Computing_Foundation). This course covers Kubernetes in nearly its entirety. After this course, you will understand Kubernetes and be able to deploy and manage containers with Kubernetes at any scale.