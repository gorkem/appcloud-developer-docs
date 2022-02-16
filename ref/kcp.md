# API Reference

## Packages
- [apiresource.kcp.dev/v1alpha1](#apiresourcekcpdevv1alpha1)
- [cluster.example.dev/v1alpha1](#clusterexampledevv1alpha1)
- [tenancy.kcp.dev/v1alpha1](#tenancykcpdevv1alpha1)


## apiresource.kcp.dev/v1alpha1




#### APIResourceImport



APIResourceImport describes an API resource imported from external clusters (either physical or logical) for a given GVR.

_Appears in:_
- [APIResourceImportList](#apiresourceimportlist)

| Field | Description |
| --- | --- |
| `metadata` _[ObjectMeta](https://kubernetes.io/docs/reference/generated/kubernetes-api/v1.22/#objectmeta-v1-meta)_ | Refer to Kubernetes API documentation for fields of `metadata`. |
| `spec` _[APIResourceImportSpec](#apiresourceimportspec)_ |  |


#### APIResourceImportCondition



APIResourceImportCondition contains details for the current condition of this negotiated api resource.

_Appears in:_
- [APIResourceImportStatus](#apiresourceimportstatus)

| Field | Description |
| --- | --- |
| `type` _[APIResourceImportConditionType](#apiresourceimportconditiontype)_ | Type is the type of the condition. Types include Compatible. |
| `lastTransitionTime` _[Time](https://kubernetes.io/docs/reference/generated/kubernetes-api/v1.22/#time-v1-meta)_ | Last time the condition transitioned from one status to another. |
| `reason` _string_ | Unique, one-word, CamelCase reason for the condition's last transition. |
| `message` _string_ | Human-readable message indicating details about last transition. |


#### APIResourceImportConditionType

_Underlying type:_ `string`

APIResourceImportConditionType is a valid value for APIResourceImportCondition.Type

_Appears in:_
- [APIResourceImportCondition](#apiresourceimportcondition)





#### APIResourceImportSpec



APIResourceImportSpec holds the desired state of the APIResourceImport (from the client).

_Appears in:_
- [APIResourceImport](#apiresourceimport)

| Field | Description |
| --- | --- |
| `CommonAPIResourceSpec` _[CommonAPIResourceSpec](#commonapiresourcespec)_ |  |
| `schemaUpdateStrategy` _[SchemaUpdateStrategyType](#schemaupdatestrategytype)_ | SchemaUpdateStrategy defines the schema update strategy for this API Resource import. Default value is UpdateUnpublished |
| `location` _string_ | Locaton the API resource is imported from This field is required |




#### ColumnDefinition





_Appears in:_
- [CommonAPIResourceSpec](#commonapiresourcespec)

| Field | Description |
| --- | --- |
| `TableColumnDefinition` _[TableColumnDefinition](https://kubernetes.io/docs/reference/generated/kubernetes-api/v1.22/#tablecolumndefinition-v1-meta)_ |  |
| `jsonPath` _string_ |  |




#### CommonAPIResourceSpec



CommonAPIResourceSpec holds the common content of both NegotiatedAPIResourceSpec and APIResourceImportSpec.

_Appears in:_
- [APIResourceImportSpec](#apiresourceimportspec)
- [NegotiatedAPIResourceSpec](#negotiatedapiresourcespec)

| Field | Description |
| --- | --- |
| `groupVersion` _[GroupVersion](#groupversion)_ |  |
| `scope` _ResourceScope_ |  |
| `CustomResourceDefinitionNames` _[CustomResourceDefinitionNames](#customresourcedefinitionnames)_ |  |
| `openAPIV3Schema` _[RawExtension](#rawextension)_ |  |
| `subResources` _[SubResource](#subresource) array_ |  |
| `columnDefinitions` _[ColumnDefinition](#columndefinition) array_ |  |


#### GroupVersion





_Appears in:_
- [CommonAPIResourceSpec](#commonapiresourcespec)

| Field | Description |
| --- | --- |
| `group` _string_ |  |
| `version` _string_ |  |


#### NegotiatedAPIResource



NegotiatedAPIResource describes the result of either the normalization of any number of imports of an API resource from external clusters (either physical or logical), or the the manual application of a CRD version for the corresponding GVR.

_Appears in:_
- [NegotiatedAPIResourceList](#negotiatedapiresourcelist)

| Field | Description |
| --- | --- |
| `metadata` _[ObjectMeta](https://kubernetes.io/docs/reference/generated/kubernetes-api/v1.22/#objectmeta-v1-meta)_ | Refer to Kubernetes API documentation for fields of `metadata`. |
| `spec` _[NegotiatedAPIResourceSpec](#negotiatedapiresourcespec)_ |  |


#### NegotiatedAPIResourceCondition



NegotiatedAPIResourceCondition contains details for the current condition of this negotiated api resource.

_Appears in:_
- [NegotiatedAPIResourceStatus](#negotiatedapiresourcestatus)

| Field | Description |
| --- | --- |
| `type` _[NegotiatedAPIResourceConditionType](#negotiatedapiresourceconditiontype)_ | Type is the type of the condition. Types include Submitted, Published, Refused and Enforced. |
| `lastTransitionTime` _[Time](https://kubernetes.io/docs/reference/generated/kubernetes-api/v1.22/#time-v1-meta)_ | Last time the condition transitioned from one status to another. |
| `reason` _string_ | Unique, one-word, CamelCase reason for the condition's last transition. |
| `message` _string_ | Human-readable message indicating details about last transition. |


#### NegotiatedAPIResourceConditionType

_Underlying type:_ `string`

NegotiatedAPIResourceConditionType is a valid value for NegotiatedAPIResourceCondition.Type

_Appears in:_
- [NegotiatedAPIResourceCondition](#negotiatedapiresourcecondition)





#### NegotiatedAPIResourceSpec



NegotiatedAPIResourceSpec holds the desired state of the NegotiatedAPIResource (from the client).

_Appears in:_
- [NegotiatedAPIResource](#negotiatedapiresource)

| Field | Description |
| --- | --- |
| `CommonAPIResourceSpec` _[CommonAPIResourceSpec](#commonapiresourcespec)_ |  |
| `publish` _boolean_ |  |




#### SchemaUpdateStrategyType

_Underlying type:_ `string`

SchemaUpdateStrategy defines the strategy for updating the correspondoing negotiated API resource based on the schema of this API Resource Import

_Appears in:_
- [APIResourceImportSpec](#apiresourceimportspec)



#### SubResource





_Appears in:_
- [CommonAPIResourceSpec](#commonapiresourcespec)

| Field | Description |
| --- | --- |
| `name` _string_ |  |





## cluster.example.dev/v1alpha1




#### Cluster





_Appears in:_
- [ClusterList](#clusterlist)

| Field | Description |
| --- | --- |
| `metadata` _[ObjectMeta](https://kubernetes.io/docs/reference/generated/kubernetes-api/v1.22/#objectmeta-v1-meta)_ | Refer to Kubernetes API documentation for fields of `metadata`. |
| `spec` _[ClusterSpec](#clusterspec)_ | Spec holds the desired state. |


#### ClusterCondition





_Appears in:_
- [ClusterStatus](#clusterstatus)

| Field | Description |
| --- | --- |
| `Condition` _Condition_ |  |
| `lastHeartbeatTime` _[Time](https://kubernetes.io/docs/reference/generated/kubernetes-api/v1.22/#time-v1-meta)_ | Last time the condition got an update. Can be used by the system to determine if the ConditionStatus is Unknown in certain cases. |






#### ClusterSpec



ClusterSpec holds the desired state of the Cluster (from the client).

_Appears in:_
- [Cluster](#cluster)

| Field | Description |
| --- | --- |
| `kubeconfig` _string_ |  |





## tenancy.kcp.dev/v1alpha1




#### ConnectionInfo



ConnectionInfo holds the information necessary to connect to a shard.

_Appears in:_
- [WorkspaceShardStatus](#workspaceshardstatus)

| Field | Description |
| --- | --- |
| `host` _string_ | Host must be a host string, a host:port pair, or a URL to the base of the apiserver. If a URL is given then the (optional) Path of that URL represents a prefix that must be appended to all request URIs used to access the apiserver. This allows a frontend proxy to easily relocate all of the apiserver endpoints. |
| `apiPath` _string_ | APIPath is a sub-path that points to an API root. |


#### ShardStatus



ShardStatus contains details for the current status of a workspace shard.

_Appears in:_
- [WorkspaceLocation](#workspacelocation)

| Field | Description |
| --- | --- |
| `name` _string_ | Name of an active WorkspaceShard. |
| `liveBeforeResourceVersion` _string_ | Resource version at which writes to this shard should not be accepted. |
| `liveAfterResourceVersion` _string_ | Resource version after which writes can be accepted on this shard. |


#### Workspace



Workspace describes how clients access (kubelike) APIs

_Appears in:_
- [WorkspaceList](#workspacelist)

| Field | Description |
| --- | --- |
| `metadata` _[ObjectMeta](https://kubernetes.io/docs/reference/generated/kubernetes-api/v1.22/#objectmeta-v1-meta)_ | Refer to Kubernetes API documentation for fields of `metadata`. |
| `spec` _[WorkspaceSpec](#workspacespec)_ |  |




#### WorkspaceLocation



WorkspaceLocation specifies workspace placement information, including current, desired (target), and historical information.

_Appears in:_
- [WorkspaceStatus](#workspacestatus)

| Field | Description |
| --- | --- |
| `current` _string_ | Current workspace placement (shard). |
| `target` _string_ | Target workspace placement (shard). |
| `history` _[ShardStatus](#shardstatus) array_ | Historical placement details (including current and target). |


#### WorkspacePhaseType

_Underlying type:_ `string`

WorkspacePhaseType is the type of the current phase of the workspace

_Appears in:_
- [WorkspaceStatus](#workspacestatus)



#### WorkspaceShard



WorkspaceShard describes a Shard (== KCP instance) on which a number of workspaces will live

_Appears in:_
- [WorkspaceShardList](#workspaceshardlist)

| Field | Description |
| --- | --- |
| `metadata` _[ObjectMeta](https://kubernetes.io/docs/reference/generated/kubernetes-api/v1.22/#objectmeta-v1-meta)_ | Refer to Kubernetes API documentation for fields of `metadata`. |
| `spec` _[WorkspaceShardSpec](#workspaceshardspec)_ |  |




#### WorkspaceShardSpec



WorkspaceShardSpec holds the desired state of the WorkspaceShard.

_Appears in:_
- [WorkspaceShard](#workspaceshard)

| Field | Description |
| --- | --- |
| `credentials` _[SecretReference](https://kubernetes.io/docs/reference/generated/kubernetes-api/v1.22/#secretreference-v1-core)_ | Credentials is a reference to the administrative credentials for this shard. |




#### WorkspaceSpec



WorkspaceSpec holds the desired state of the Workspace.

_Appears in:_
- [Workspace](#workspace)

| Field | Description |
| --- | --- |
| `readOnly` _boolean_ |  |
| `inheritFrom` _string_ |  |




