
# Application Cloud API Index

## Purpose
Provide an index of all significant control plane APIs to establish API consistency across services within the Application Cloud and create common patterns and expectations for RH service teams.


## AppStudio 

- [Application Service](./ref/application-service.md): Hybrid Application Service (HAS) provides an abstract way to define applications within the cloud.
- [Service Provider](./ref/service-provider.md): Responsible for providing a service-provider-neutral way of obtaining authentication tokens so that tools accessing the service provider do not have to deal with the intricacies of getting the access tokens from the different service providers.
- [GitOps Service](./ref/gitops.md): Responsible for synchronizing source K8s resources in a Git repository (as the single of truth), with target OpenShift/K8s cluster(s). 


## Control Plane

- [KCP](./ref/kcp.md)
