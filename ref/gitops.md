# API Reference

## Packages
- [managed-gitops.redhat.com/v1alpha1](#managed-gitopsredhatcomv1alpha1)


## managed-gitops.redhat.com/v1alpha1

Package v1alpha1 contains API Schema definitions for the managed-gitops v1alpha1 API group

### Resource Types
- [GitOpsDeployment](#gitopsdeployment)
- [GitOpsDeploymentList](#gitopsdeploymentlist)
- [GitOpsDeploymentSyncRun](#gitopsdeploymentsyncrun)
- [GitOpsDeploymentSyncRunList](#gitopsdeploymentsyncrunlist)



#### ApplicationDestination



ApplicationDestination holds information about the application's destination

_Appears in:_
- [GitOpsDeploymentSpec](#gitopsdeploymentspec)

| Field | Description |
| --- | --- |
| `namespace` _string_ | The namespace will only be set for namespace-scoped resources that have not set a value for .metadata.namespace |


#### ApplicationSource



ApplicationSource contains all required information about the source of an application

_Appears in:_
- [GitOpsDeploymentSpec](#gitopsdeploymentspec)

| Field | Description |
| --- | --- |
| `repoURL` _string_ | RepoURL is the URL to the repository (Git or Helm) that contains the application manifests |
| `path` _string_ | Path is a directory path within the Git repository, and is only valid for applications sourced from Git. |
| `targetRevision` _string_ | TargetRevision defines the revision of the source to sync the application to. In case of Git, this can be commit, tag, or branch. If omitted, will equal to HEAD. In case of Helm, this is a semver tag for the Chart's version. |




#### GitOpsDeployment



GitOpsDeployment is the Schema for the gitopsdeployments API

_Appears in:_
- [GitOpsDeploymentList](#gitopsdeploymentlist)

| Field | Description |
| --- | --- |
| `apiVersion` _string_ | `managed-gitops.redhat.com/v1alpha1`
| `kind` _string_ | `GitOpsDeployment`
| `metadata` _[ObjectMeta](https://kubernetes.io/docs/reference/generated/kubernetes-api/v1.22/#objectmeta-v1-meta)_ | Refer to Kubernetes API documentation for fields of `metadata`. |
| `spec` _[GitOpsDeploymentSpec](#gitopsdeploymentspec)_ |  |


#### GitOpsDeploymentCondition



GitOpsDeploymentCondition contains details about an applicationset condition, which is usally an error or warning

_Appears in:_
- [GitOpsDeploymentStatus](#gitopsdeploymentstatus)

| Field | Description |
| --- | --- |
| `type` _[GitOpsDeploymentConditionType](#gitopsdeploymentconditiontype)_ | Type is an applicationset condition type |
| `message` _string_ | Message contains human-readable message indicating details about condition |
| `lastTransitionTime` _[Time](https://kubernetes.io/docs/reference/generated/kubernetes-api/v1.22/#time-v1-meta)_ | LastTransitionTime is the time the condition was last observed |
| `reason` _[GitOpsDeploymentReasonType](#gitopsdeploymentreasontype)_ | Single word camelcase representing the reason for the status eg ErrorOccurred |


#### GitOpsDeploymentConditionType

_Underlying type:_ `string`

GitOpsDeploymentConditionType represents type of GitOpsDeployment condition.

_Appears in:_
- [GitOpsDeploymentCondition](#gitopsdeploymentcondition)



#### GitOpsDeploymentList



GitOpsDeploymentList contains a list of GitOpsDeployment



| Field | Description |
| --- | --- |
| `apiVersion` _string_ | `managed-gitops.redhat.com/v1alpha1`
| `kind` _string_ | `GitOpsDeploymentList`
| `metadata` _[ListMeta](https://kubernetes.io/docs/reference/generated/kubernetes-api/v1.22/#listmeta-v1-meta)_ | Refer to Kubernetes API documentation for fields of `metadata`. |
| `items` _[GitOpsDeployment](#gitopsdeployment) array_ |  |


#### GitOpsDeploymentReasonType

_Underlying type:_ `string`



_Appears in:_
- [GitOpsDeploymentCondition](#gitopsdeploymentcondition)



#### GitOpsDeploymentSpec



GitOpsDeploymentSpec defines the desired state of GitOpsDeployment

_Appears in:_
- [GitOpsDeployment](#gitopsdeployment)

| Field | Description |
| --- | --- |
| `source` _[ApplicationSource](#applicationsource)_ |  |
| `destination` _[ApplicationDestination](#applicationdestination)_ | Destination is a reference to a target namespace/cluster to deploy to. This field may be empty: if it is empty, it is assumed that the destination is the same namespace as the GitOpsDeployment CR. |
| `type` _string_ | Two possible values: - Automated: whenever a new commit occurs in the GitOps repository, or the Argo CD Application is out of sync, Argo CD should be told to (re)synchronize. - Manual: Argo CD should never be told to resynchronize. Instead, synchronize operations will be triggered via GitOpsDeploymentSyncRun operations only. - See `GitOpsDeploymentSpecType*` 
 Note: This is somewhat of a placeholder for more advanced logic that can be implemented in the future. For an example of this type of logic, see the 'syncPolicy' field of Argo CD Application. |




#### GitOpsDeploymentSyncRun



GitOpsDeploymentSyncRun is the Schema for the gitopsdeploymentsyncruns API

_Appears in:_
- [GitOpsDeploymentSyncRunList](#gitopsdeploymentsyncrunlist)

| Field | Description |
| --- | --- |
| `apiVersion` _string_ | `managed-gitops.redhat.com/v1alpha1`
| `kind` _string_ | `GitOpsDeploymentSyncRun`
| `metadata` _[ObjectMeta](https://kubernetes.io/docs/reference/generated/kubernetes-api/v1.22/#objectmeta-v1-meta)_ | Refer to Kubernetes API documentation for fields of `metadata`. |
| `spec` _[GitOpsDeploymentSyncRunSpec](#gitopsdeploymentsyncrunspec)_ |  |


#### GitOpsDeploymentSyncRunCondition



GitOpsDeploymentCondition contains details about an applicationset condition, which is usally an error or warning

_Appears in:_
- [GitOpsDeploymentSyncRunStatus](#gitopsdeploymentsyncrunstatus)

| Field | Description |
| --- | --- |
| `type` _[SyncRunConditionType](#syncrunconditiontype)_ | Type is an applicationset condition type |
| `message` _string_ | Message contains human-readable message indicating details about condition |
| `lastTransitionTime` _[Time](https://kubernetes.io/docs/reference/generated/kubernetes-api/v1.22/#time-v1-meta)_ | LastTransitionTime is the time the condition was last observed |
| `reason` _[SyncRunReasonType](#syncrunreasontype)_ | Single word camelcase representing the reason for the status eg ErrorOccurred |


#### GitOpsDeploymentSyncRunList



GitOpsDeploymentSyncRunList contains a list of GitOpsDeploymentSyncRun



| Field | Description |
| --- | --- |
| `apiVersion` _string_ | `managed-gitops.redhat.com/v1alpha1`
| `kind` _string_ | `GitOpsDeploymentSyncRunList`
| `metadata` _[ListMeta](https://kubernetes.io/docs/reference/generated/kubernetes-api/v1.22/#listmeta-v1-meta)_ | Refer to Kubernetes API documentation for fields of `metadata`. |
| `items` _[GitOpsDeploymentSyncRun](#gitopsdeploymentsyncrun) array_ |  |


#### GitOpsDeploymentSyncRunSpec



GitOpsDeploymentSyncRunSpec defines the desired state of GitOpsDeploymentSyncRun

_Appears in:_
- [GitOpsDeploymentSyncRun](#gitopsdeploymentsyncrun)

| Field | Description |
| --- | --- |
| `gitopsDeploymentName` _string_ |  |
| `revisionID` _string_ |  |




#### HealthStatus



HealthStatus contains information about the currently observed health state of an application or resource

_Appears in:_
- [GitOpsDeploymentStatus](#gitopsdeploymentstatus)

| Field | Description |
| --- | --- |
| `message` _string_ | Message is a human-readable informational message describing the health status |




#### SyncRunConditionType

_Underlying type:_ `string`

GitOpsDeploymentConditionType represents type of GitOpsDeployment condition.

_Appears in:_
- [GitOpsDeploymentSyncRunCondition](#gitopsdeploymentsyncruncondition)



#### SyncRunReasonType

_Underlying type:_ `string`



_Appears in:_
- [GitOpsDeploymentSyncRunCondition](#gitopsdeploymentsyncruncondition)



#### SyncStatus



SyncStatus contains information about the currently observed live and desired states of an application

_Appears in:_
- [GitOpsDeploymentStatus](#gitopsdeploymentstatus)

| Field | Description |
| --- | --- |
| `revision` _string_ | Revision contains information about the revision the comparison has been performed to |




