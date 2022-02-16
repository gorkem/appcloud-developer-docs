# API Reference

## Packages
- [appstudio.redhat.com/v1beta1](#appstudioredhatcomv1beta1)


## appstudio.redhat.com/v1beta1

Package v1beta1 contains API Schema definitions for the appstudio v1beta1 API group

### Resource Types
- [SPIAccessToken](#spiaccesstoken)
- [SPIAccessTokenBinding](#spiaccesstokenbinding)
- [SPIAccessTokenBindingList](#spiaccesstokenbindinglist)
- [SPIAccessTokenList](#spiaccesstokenlist)



#### Permission



Permission is an element of Permissions and express a requirement on the service provider scopes in an agnostic manner.

_Appears in:_
- [Permissions](#permissions)

| Field | Description |
| --- | --- |
| `type` _[PermissionType](#permissiontype)_ | Type is the type of the permission required |
| `area` _[PermissionArea](#permissionarea)_ | Area express the "area" in the service provider scopes to which the permission is required. |


#### PermissionArea

_Underlying type:_ `string`

PermissionArea defines a set of the supported permission areas. A service provider implementation might not support all of them depending on the capabilities of the service provider (e.g. if a service provider doesn't support webhooks, it doesn't make sense to specify permissions in the webhook area).

_Appears in:_
- [Permission](#permission)



#### PermissionType

_Underlying type:_ `string`

PermissionType expresses whether we need a permission to read or write data in a specific PermissionArea of the service provider

_Appears in:_
- [Permission](#permission)



#### Permissions



Permissions is a collection of operator-defined permissions (which are translated to service-provider-specific scopes) and potentially additional service-provider-specific scopes that are not covered by the operator defined abstraction. The permissions are used in SPIAccessTokenBinding objects to express the requirements on the tokens as well as in the SPIAccessToken objects to express the "capabilities" of the token.

_Appears in:_
- [SPIAccessTokenBindingSpec](#spiaccesstokenbindingspec)
- [SPIAccessTokenSpec](#spiaccesstokenspec)

| Field | Description |
| --- | --- |
| `required` _[Permission](#permission) array_ |  |
| `additionalScopes` _string array_ |  |


#### SPIAccessToken



SPIAccessToken is the Schema for the spiaccesstokens API

_Appears in:_
- [SPIAccessTokenList](#spiaccesstokenlist)

| Field | Description |
| --- | --- |
| `apiVersion` _string_ | `appstudio.redhat.com/v1beta1`
| `kind` _string_ | `SPIAccessToken`
| `metadata` _[ObjectMeta](https://kubernetes.io/docs/reference/generated/kubernetes-api/v1.22/#objectmeta-v1-meta)_ | Refer to Kubernetes API documentation for fields of `metadata`. |
| `spec` _[SPIAccessTokenSpec](#spiaccesstokenspec)_ |  |


#### SPIAccessTokenBinding



SPIAccessTokenBinding is the Schema for the spiaccesstokenbindings API

_Appears in:_
- [SPIAccessTokenBindingList](#spiaccesstokenbindinglist)

| Field | Description |
| --- | --- |
| `apiVersion` _string_ | `appstudio.redhat.com/v1beta1`
| `kind` _string_ | `SPIAccessTokenBinding`
| `metadata` _[ObjectMeta](https://kubernetes.io/docs/reference/generated/kubernetes-api/v1.22/#objectmeta-v1-meta)_ | Refer to Kubernetes API documentation for fields of `metadata`. |
| `spec` _[SPIAccessTokenBindingSpec](#spiaccesstokenbindingspec)_ |  |


#### SPIAccessTokenBindingErrorReason

_Underlying type:_ `string`



_Appears in:_
- [SPIAccessTokenBindingStatus](#spiaccesstokenbindingstatus)



#### SPIAccessTokenBindingList



SPIAccessTokenBindingList contains a list of SPIAccessTokenBinding



| Field | Description |
| --- | --- |
| `apiVersion` _string_ | `appstudio.redhat.com/v1beta1`
| `kind` _string_ | `SPIAccessTokenBindingList`
| `metadata` _[ListMeta](https://kubernetes.io/docs/reference/generated/kubernetes-api/v1.22/#listmeta-v1-meta)_ | Refer to Kubernetes API documentation for fields of `metadata`. |
| `items` _[SPIAccessTokenBinding](#spiaccesstokenbinding) array_ |  |


#### SPIAccessTokenBindingPhase

_Underlying type:_ `string`



_Appears in:_
- [SPIAccessTokenBindingStatus](#spiaccesstokenbindingstatus)



#### SPIAccessTokenBindingSpec



SPIAccessTokenBindingSpec defines the desired state of SPIAccessTokenBinding

_Appears in:_
- [SPIAccessTokenBinding](#spiaccesstokenbinding)

| Field | Description |
| --- | --- |
| `repoUrl` _string_ |  |
| `permissions` _[Permissions](#permissions)_ |  |
| `secret` _[SecretSpec](#secretspec)_ |  |




#### SPIAccessTokenList



SPIAccessTokenList contains a list of SPIAccessToken



| Field | Description |
| --- | --- |
| `apiVersion` _string_ | `appstudio.redhat.com/v1beta1`
| `kind` _string_ | `SPIAccessTokenList`
| `metadata` _[ListMeta](https://kubernetes.io/docs/reference/generated/kubernetes-api/v1.22/#listmeta-v1-meta)_ | Refer to Kubernetes API documentation for fields of `metadata`. |
| `items` _[SPIAccessToken](#spiaccesstoken) array_ |  |


#### SPIAccessTokenPhase

_Underlying type:_ `string`

SPIAccessTokenPhase is the reconciliation phase of the SPIAccessToken object

_Appears in:_
- [SPIAccessTokenStatus](#spiaccesstokenstatus)



#### SPIAccessTokenSpec



SPIAccessTokenSpec defines the desired state of SPIAccessToken

_Appears in:_
- [SPIAccessToken](#spiaccesstoken)

| Field | Description |
| --- | --- |
| `serviceProviderType` _[ServiceProviderType](#serviceprovidertype)_ |  |
| `permissions` _[Permissions](#permissions)_ |  |
| `serviceProviderUrl` _string_ |  |
| `dataLocation` _string_ |  |
| `tokenMetadata` _[TokenMetadata](#tokenmetadata)_ |  |
| `rawTokenData` _[Token](#token)_ |  |




#### SecretSpec





_Appears in:_
- [SPIAccessTokenBindingSpec](#spiaccesstokenbindingspec)

| Field | Description |
| --- | --- |
| `name` _string_ | Name is the name of the secret to be created. If it is not defined a random name based on the name of the binding is used. |
| `labels` _object (keys:string, values:string)_ | Labels contains the labels that the created secret should be labeled with. |
| `annotations` _object (keys:string, values:string)_ | Annotations is the keys and values that the create secret should be annotated with. |
| `type` _[SecretType](https://kubernetes.io/docs/reference/generated/kubernetes-api/v1.22/#secrettype-v1-core)_ | Type is the type of the secret to be created. If left empty, the default type used in the cluster is assumed (typically Opaque). The type of the secret defines the automatic mapping of the token record fields to keys in the secret data according to the documentation https://kubernetes.io/docs/concepts/configuration/secret/#secret-types. Only kubernetes.io/service-account-token, kubernetes.io/dockercfg, kubernetes.io/dockerconfigjson and kubernetes.io/basic-auth are supported. All other secret types need to have their mapping specified manually using the Fields. |
| `fields` _[TokenFieldMapping](#tokenfieldmapping)_ | Fields specifies the mapping from the token record fields to the keys in the secret data. |


#### ServiceProviderType

_Underlying type:_ `string`

ServiceProviderType defines the set of supported service providers

_Appears in:_
- [SPIAccessTokenSpec](#spiaccesstokenspec)



#### TargetObjectRef





_Appears in:_
- [SPIAccessTokenBindingStatus](#spiaccesstokenbindingstatus)

| Field | Description |
| --- | --- |
| `name` _string_ | Name is the name of the object with the injected data. This always lives in the same namespace as the AccessTokenSecret object. |
| `kind` _string_ | Kind is the kind of the object with the injected data. |
| `apiVersion` _string_ | ApiVersion is the api version of the object with the injected data. |


#### Token



Token is copied from golang.org/x/oauth2 and made easily json-serializable. It represents the data obtained from the OAuth flow.

_Appears in:_
- [SPIAccessTokenSpec](#spiaccesstokenspec)

| Field | Description |
| --- | --- |
| `access_token` _string_ |  |
| `token_type` _string_ |  |
| `refresh_token` _string_ |  |
| `expiry` _integer_ |  |


#### TokenFieldMapping





_Appears in:_
- [SecretSpec](#secretspec)

| Field | Description |
| --- | --- |
| `token` _string_ | Token specifies the data key in which the token should be stored. |
| `name` _string_ | Name specifies the data key in which the name of the token record should be stored. |
| `serviceProviderUrl` _string_ | ServiceProviderUrl specifies the data key in which the url of the service provider should be stored. |
| `serviceProviderUserName` _string_ | ServiceProviderUserName specifies the data key in which the url of the user name used in the service provider should be stored. |
| `serviceProviderUserId` _string_ | ServiceProviderUserId specifies the data key in which the url of the user id used in the service provider should be stored. |
| `userId` _string_ | UserId specifies the data key in which the user id as known to the SPI should be stored (note that this is usually different from ServiceProviderUserId, because the former is usually a kubernetes user, while the latter is some arbitrary ID used by the service provider which might or might not correspond to the Kubernetes user id). |
| `expiredAfter` _string_ | ExpiredAfter specifies the data key in which the expiry date of the token should be stored. |
| `scopes` _string_ | Scopes specifies the data key in which the comma-separated list of token scopes should be stored. |


#### TokenMetadata



TokenMetadata is data about the token retrieved from the service provider. This data can be used for matching the tokens with the token bindings.

_Appears in:_
- [SPIAccessTokenSpec](#spiaccesstokenspec)

| Field | Description |
| --- | --- |
| `userName` _string_ |  |
| `userId` _string_ |  |


